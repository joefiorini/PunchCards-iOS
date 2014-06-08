//
//  ModalViewController.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/7/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import Foundation
import UIKit

protocol CardActionsDelegate {
    func requestedSaveCard(card: Card)
}

class CardFormViewController: UITableViewController {

    var card: Card!
    var delegate: CardActionsDelegate?

    @IBOutlet var cardLabelField: UITextField

    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
        let cancel: UIBarButtonSystemItem = .Cancel
        let save: UIBarButtonSystemItem = .Save
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: cancel, target: self, action:"requestedDismissModal:")
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: save, target: self, action: "requestedSaveCard:")
    }

    override func viewDidLoad() {
        cardLabelField.text = card.label
    }

    override func tableView(tableView: UITableView!, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0
    }

    @IBAction func requestedSaveCard(sender: AnyObject!) {
        let updatedCard = card.setLabel(cardLabelField.text)
        delegate?.requestedSaveCard(updatedCard)
        self.dismissModalViewControllerAnimated(true)
    }

    @IBAction func requestedDismissModal(sender: AnyObject!) {
        self.dismissModalViewControllerAnimated(true)
    }
}