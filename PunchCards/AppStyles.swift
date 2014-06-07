//
//  AppStyles.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/6/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import Foundation
import UIKit

func color(red: Int, green: Int, blue: Int) -> UIColor {
//    return UIColor(red: (Float(red) / 255.0), green: (Float(green) / 255.0), blue: (Float(blue) / 255.0), alpha: 1)
    return UIColor(red: (Double(red) / 255.0), green: (Double(green) / 255.0), blue: (Double(blue) / 255.0), alpha: 1)
}

struct AppColors {
    let PrimaryBackgroundColor = color(208, 2, 27)
    let CardBackgroundColor = UIColor.whiteColor()
}

struct AppStyles {
    let Colors = AppColors()
}

