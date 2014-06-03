// Playground - noun: a place where people can play

import UIKit

let client = Firebase(url: "https://punch-cards.firebaseio.com/")

let observer: (AnyObject) -> Void = { snapshot in
    let values : Dictionary<String, AnyObject>[] = snapshot.value as Dictionary<String, AnyObject>[]
    var result = []

    for value : Dictionary<String, AnyObject> in values {
        NSLog("value: \(value)")
    }

}

client.observeEventType(FEventTypeValue, withBlock: observer)

client.childByAppendingPath("cards")
