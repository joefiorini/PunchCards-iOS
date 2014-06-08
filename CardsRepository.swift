//
//  Monad.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/7/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import Foundation

struct Card {
    var label = ""
    var punches: Int = 0
    var id: String?

    func setLabel(newLabel: String) -> Card {
        return Card(label: newLabel, punches: punches, id: id)
    }

    func addPunch() -> Card {
        return Card(label: label, punches: punches + 1, id: id)
    }

    func toHash() -> Dictionary<String, AnyObject> {
        return ["label": label, "punches": punches]
    }
}

var _globalConnection: Firebase? = nil

class FirebaseConnection {
    var ref: Firebase

    init() {
        if !_globalConnection {
            _globalConnection = Firebase(url: "https://punch-cards.firebaseio.com/")
        }

        ref = _globalConnection!
    }
}

func getFirebaseRef(t: String, handler: (Firebase -> Void)) {
    switch(t) {
    case "cards":
        getFirebaseRef("root", {
            let ref = $0.childByAppendingPath("cards")
            handler(ref)
        })
    case "root":
        let connection = FirebaseConnection()
        handler(connection.ref)
    case "autoId":
        getFirebaseRef("cards", {
            let ref = $0.childByAutoId()
            handler(ref)
        })
    default:
        getFirebaseRef("cards", {
            let ref = $0.childByAppendingPath(t)
            handler(ref)
        })
    }
}

class CardsRepository {

    var _cards: Dictionary<String, Card> = [:]

    var count: Int {
        get {
            return _cards.count
        }
    }

    func removeCard(card: Card) {
        _cards.removeValueForKey(card.id!)
    }

    func deleteCard(card: Card) {
        getFirebaseRef(card.id!, {
            $0.removeValue()
        })
    }

    func findCard(index: Int) -> Card {
        return Array(_cards.values)[index]
    }

    func findCard(id: String) -> Card {
        return _cards[id]!
    }

    func findCard(id: String, withDefaults defaults: NSDictionary) -> Card {
        let card = Card(label: defaults["label"] as String, punches: defaults["punches"] as Int, id: id)
        _cards[id] = card
        return card
    }

    func saveCard(card: Card) {
        var cardRef: Firebase

        if card.id? {
            getFirebaseRef(card.id!, { ref in
                ref.setValue(card.toHash())
            })
        } else {
            getFirebaseRef("autoId", { ref in
                ref.setValue(card.toHash())
            })
        }

    }

    func addPunchToCard(card: Card) {
        let newCard = card.addPunch()
        saveCard(newCard)
    }

    func addObserver(cardObserver: (Card -> Void)) {
        getFirebaseRef("cards", { ref in
            let changeObserver: (FDataSnapshot! -> Void) = { snapshot in
                let card = self.findCard(snapshot.name, withDefaults: snapshot.value as NSDictionary)
                cardObserver(card)
            }

            ref.observeEventType(FEventTypeChildAdded, changeObserver)
            ref.observeEventType(FEventTypeChildChanged, changeObserver)

            let removeObserver: (FDataSnapshot! -> Void) = { snapshot in
                let card = self.findCard(snapshot.name)
                self.removeCard(card)
                cardObserver(card)
            }

            ref.observeEventType(FEventTypeChildRemoved, withBlock: removeObserver)
        })
    }
}