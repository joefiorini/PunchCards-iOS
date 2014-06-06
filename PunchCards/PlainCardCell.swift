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
}

class PlainCardCell: UICollectionViewCell {

    @IBOutlet var label : UILabel
    @IBOutlet var punches : UILabel
    @IBOutlet var punchButton : UIButton
    var punchDelegate : PunchCardDelegate?

    func setupStyles() {
        self.layer.borderColor = UIColor.blackColor().CGColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 3.0
        self.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 0.91, alpha: 1).CGColor
        punchButton.addTarget(self, action: "cardWasPunched:", forControlEvents: UIControlEvents.TouchUpInside)
    }

    func cardWasPunched(sender: AnyObject!) {
        NSLog("card was punched")
        punchDelegate?.punchedCardInCell(self)
    }
}
