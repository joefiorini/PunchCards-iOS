//
//  NSDateExtensions.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/8/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//
// Stolen from: https://github.com/marklarr/SwiftDate/blob/2ca24faae3f7c91294609fa5125efdc6a28c19d7/SwiftDate/Extensions/NSDate.swift

import Foundation

@infix func - (dateA: NSDate, dateB: NSDate) -> NSTimeInterval {
    return dateA.timeIntervalSinceDate(dateB)
}

@infix func > (dateA: NSDate, dateB: NSDate) -> Bool {
    return dateA.compare(dateB) == NSComparisonResult.OrderedDescending
}

@infix func < (dateA: NSDate, dateB: NSDate) -> Bool {
    return dateA.compare(dateB) == NSComparisonResult.OrderedAscending
}

@infix func >= (dateA: NSDate, dateB: NSDate) -> Bool {
    return dateA == dateB || dateA > dateB
}

@infix func <= (dateA: NSDate, dateB: NSDate) -> Bool {
    return dateA == dateB || dateA < dateB
}

