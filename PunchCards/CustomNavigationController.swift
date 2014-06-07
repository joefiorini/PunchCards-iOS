//
//  CustomNavigationController.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/6/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = AppStyles().Colors.PrimaryBackgroundColor
    }
}