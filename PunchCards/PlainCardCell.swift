//
//  PlainCardCell.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/3/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import UIKit

protocol PunchCardDelegate {
    func punchedCardInCell(cell: PlainCardCell)
    func deleteCardInCell(cell: PlainCardCell)
    func editCardInCell(cell: PlainCardCell)
}

class PlainCardCell: UICollectionViewCell {

    @IBOutlet var label: UILabel
    @IBOutlet var punches: UILabel
    @IBOutlet var punchButton: UIButton
    @IBOutlet var lastPunchedLabel: UILabel

    var punchDelegate : PunchCardDelegate?

    func setupStyles() {
        self.backgroundColor = AppStyles().Colors.CardBackgroundColor
        punchButton.addTarget(self, action: "cardWasPunched:", forControlEvents: UIControlEvents.TouchUpInside)
    }

    func cardWasPunched(sender: AnyObject!) {
        punchDelegate?.punchedCardInCell(self)
    }

    override func canPerformAction(action: Selector, withSender sender: AnyObject!) -> Bool {
        switch(action) {
        case "requestedEdit:forCell:", "requestedDelete:forCell:":
            return true;
        default:
            return false
        }
    }

    func requestedDelete(sender: AnyObject!, forCell cell: UICollectionViewCell) {
        punchDelegate?.deleteCardInCell(self)
    }

    func requestedEdit(sender: AnyObject!, forCell cell: UICollectionViewCell) {
        punchDelegate?.editCardInCell(self)
    }


}
