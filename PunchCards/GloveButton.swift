//
//  GloveButton.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/9/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import Foundation
import UIKit

class GloveButton: UIButton {
    override func drawRect(rect: CGRect) {
        drawGloveButton()
    }
}