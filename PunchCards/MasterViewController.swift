//
//  MasterViewController.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/2/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import UIKit
import CoreMotion

struct Card {
    var label = "", punches = 0, id = ""
}

class MasterViewController: UICollectionViewController, PunchCardDelegate {

    var objects = Dictionary<String, Card>()
    var client: Firebase

    init(coder aDecoder: NSCoder!) {
        client = Firebase(url: "https://punch-cards.firebaseio.com/cards")

        super.init(coder: aDecoder)
    }


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.leftBarButtonItem = self.editButtonItem()

        client.observeEventType(FEventTypeChildAdded, withBlock: { snapshot in
            NSLog("value: \(snapshot.value)")
            let cardHash = snapshot.value as NSDictionary
            let card = Card(label: cardHash["label"] as String, punches: cardHash["punches"] as Int, id: snapshot.name)
            self.objects[card.id] = card
            self.collectionView.reloadData()
        })

        client.observeEventType(FEventTypeChildChanged, withBlock: { snapshot in
            NSLog("value: \(snapshot.value), \(snapshot.name)")
            let cardHash = snapshot.value as NSDictionary
            let card = Card(label: cardHash["label"] as String, punches: cardHash["punches"] as Int, id: snapshot.name)
            self.objects[card.id] = card
            self.collectionView.reloadData()
        })

        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        self.navigationItem.rightBarButtonItem = addButton
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
        return self.objects.count
    }

    override func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell! {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("plain-card", forIndexPath: indexPath) as PlainCardCell
        cell.setupStyles()
        let card = Array(self.objects.values)[indexPath.row]

        cell.label.text = card.label
        cell.punches.text = String(card.punches)
        cell.punchDelegate = self

        NSLog("cell height: \(cell.bounds.height)")
        return cell
    }

    func punchedCardInCell(cell: PlainCardCell) {
        let indexPath = self.collectionView.indexPathForCell(cell)
        let card = Array(self.objects.values)[indexPath.row]
        let cardRef = client.childByAppendingPath("\(card.id)/punches")
        cardRef.setValue(card.punches + 1)
        NSLog("Punched \"\(card.label)\"!");
    }

    // #pragma mark - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
//            let indexPath = self.tableView.indexPathForSelectedRow()
//            let object = objects[indexPath.row] as NSDate
//            (segue.destinationViewController as DetailViewController).detailItem = object
        }
    }

}

