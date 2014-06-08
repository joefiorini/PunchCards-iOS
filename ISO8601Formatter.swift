//
//  NSDateISO8601Formatter.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/8/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import Foundation

class ISO8601Formatter {
    let dateFormatter: NSDateFormatter

    init() {
        dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm"
    }

    func stringFromDate(date: NSDate) -> String {
        return dateFormatter.stringFromDate(date)
    }

    func dateFromString(string: String) -> NSDate {
        return dateFormatter.dateFromString(string)
    }
}