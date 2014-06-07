//
//  CardListCollectionViewLayout.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/6/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import Foundation
import UIKit

class CardListCollectionViewLayout: UICollectionViewFlowLayout {

    init(coder:NSCoder! ) {
        super.init(coder: coder)
    }

    override func prepareLayout() {
        minimumLineSpacing = 65.0
        sectionInset = UIEdgeInsetsMake(60, 0, 0, 0)
        itemSize = CGSizeMake(collectionView.bounds.width, 99)
    }

}