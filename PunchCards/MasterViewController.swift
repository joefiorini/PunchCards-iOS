//
//  MasterViewController.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/2/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import UIKit

class MasterViewController: UICollectionViewController, PunchCardDelegate, UIAlertViewDelegate, CardActionsDelegate {

    var cardForDelete: Card?
    var cards: CardsRepository

    init(coder aDecoder: NSCoder!) {
        cards = CardsRepository()

        super.init(coder: aDecoder)
    }


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.leftBarButtonItem = self.editButtonItem()

        let editMenuItem = UIMenuItem(title: "Edit", action: "requestedEdit:forCell:")
        let deleteMenuItem = UIMenuItem(title: "Delete", action: "requestedDelete:forCell:")
        let menuController = UIMenuController.sharedMenuController()
        menuController.menuItems = [editMenuItem, deleteMenuItem]

        cards.addObserver({ _ in
            self.collectionView.reloadData()
        })

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        super.willRotateToInterfaceOrientation(toInterfaceOrientation, duration: duration)
        collectionView.collectionViewLayout.invalidateLayout()
    }

    override func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int {
        return cards.count
    }

    override func collectionView(collectionView: UICollectionView!, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath!, withSender sender: AnyObject!) -> Bool {
        return true;
    }

    override func collectionView(collectionView: UICollectionView!, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath!) -> Bool {
        return true;
    }

    override func collectionView(collectionView: UICollectionView!, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath!, withSender sender: AnyObject!) {
    }

    override func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell! {
        let card = cardAtIndex(indexPath.row)
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("plain-card", forIndexPath: indexPath) as PlainCardCell

        cell.setupStyles()

        cell.label.text = card.label
        cell.punches.text = String(card.punchesCount)
        cell.punchDelegate = self

        return cell
    }

    func punchedCardInCell(cell: PlainCardCell) {
        let card = self.cardForCell(cell)
        cards.addPunchToCard(card)
        NSLog("Punched \"\(card.label)\"!");
    }

    func editCardInCell(cell: PlainCardCell) {
        let card = self.cardForCell(cell)

        self.showCardFormForCard(card)
    }

    func deleteCardInCell(cell: PlainCardCell) {
        let card = self.cardForCell(cell)
        cardForDelete = card

        var alert = UIAlertView()

        alert.title = "Deleting a Card"
        alert.message = "Are you sure you want to delete this card? There is no undo."
        alert.delegate = self
        alert.cancelButtonIndex = 0
        alert.addButtonWithTitle("Delete it")
        alert.addButtonWithTitle("Cancel")
        alert.show()

    }

    @IBAction func requestedAddCard(sender: AnyObject!) {
        let card = Card.defaultCard()
        self.showCardFormForCard(card)
    }

    func cardAtIndex(index: Int) -> Card {
        return cards.findCard(index)
    }

    func cardForCell(cell: UICollectionViewCell) -> Card {
        let indexPath = collectionView.indexPathForCell(cell)
        return cardAtIndex(indexPath.row)
    }

    func showCardFormForCard(card: Card) {
        let destination = self.storyboard.instantiateViewControllerWithIdentifier("New Card Modal") as CardFormViewController
        destination.card = card
        destination.delegate = self

        let navigationController = UINavigationController(rootViewController: destination)
        self.presentModalViewController(navigationController, animated: true)
    }

    func requestedSaveCard(card: Card) {
        cards.saveCard(card)
    }

    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex:Int) {
        if buttonIndex != 0 {
            return
        }

        cards.deleteCard(cardForDelete!)

        cardForDelete = nil
    }

}

