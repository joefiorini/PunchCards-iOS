//
//  RelativeDateFormatter.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/8/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import Foundation

class RelativeDateFormatter: NSFormatter {

    override func stringForObjectValue(obj: AnyObject!) -> String! {
        let date = obj as NSDate
        let now = NSDate(timeIntervalSinceNow: 0)
        let interval = now - date
        let formatter = NSDateFormatter()
        formatter.dateFormat = "MMM d, Y"

        switch(interval) {
        case (0..1.day):
            return "today"
        case 1.day..2.days:
            return "yesterday"
        case 2.days..3.days:
            return "2 days ago"
        case 3.days..1.week:
            return "earlier this week"
        case 1.week..2.weeks:
            return "last week"
        case 2.weeks..1.month:
            return "this month"
        case 1.month..4.months:
            return "earlier this year"
        default:
            return formatter.stringFromDate(date)
        }
    }
}