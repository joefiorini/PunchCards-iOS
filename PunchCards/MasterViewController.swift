//
//  MasterViewController.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/2/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import UIKit

struct Card {
    var label = "", punches = 0
}

class MasterViewController: UICollectionViewController {

    var objects = Card[]()
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
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.leftBarButtonItem = self.editButtonItem()

        let observer: (FDataSnapshot!) -> Void = { snapshot in
            NSLog("value: \(snapshot.value)")
            let cardHash = snapshot.value as NSDictionary
            let card = Card(label: cardHash["label"] as String, punches: cardHash["punches"] as Int)
            self.objects.append(card)
            self.collectionView.reloadData()
        }
        client.observeEventType(FEventTypeChildAdded, withBlock: observer)

        client.childByAppendingPath("cards")

        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        self.navigationItem.rightBarButtonItem = addButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int {
        return self.objects.count
    }

    override func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell! {
        let cell : PlainCardCell = collectionView.dequeueReusableCellWithReuseIdentifier("plain-card", forIndexPath: indexPath) as PlainCardCell
        let card = self.objects[indexPath.row]
        cell.label.text = card.label
        return cell
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

