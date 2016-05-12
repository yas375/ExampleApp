//
//  CalendarCollectionViewCell.swift
//  Adherence
//
//  Created by Victor Ilyukevich on 5/11/16.
//  Copyright © 2016 Open Source. All rights reserved.
//

import UIKit

class CalendarCollectionViewCell: UICollectionViewCell {
  @IBOutlet var collectionView: UICollectionView!

  override func awakeFromNib() {
    super.awakeFromNib()

    collectionView.dataSource = self
    collectionView.delegate = self

    let nib = UINib(nibName: String(DayViewCell), bundle: nil)
    collectionView.registerNib(nib, forCellWithReuseIdentifier: String(DayViewCell))
  }
}

extension CalendarCollectionViewCell : UICollectionViewDataSource {
  func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
    return 10
  }

  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 31
  }

  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let day = collectionView.dequeueReusableCellWithReuseIdentifier(String(DayViewCell), forIndexPath: indexPath) as! DayViewCell
    day.label.text = "\(indexPath.section)-\(indexPath.row)"
    day.backgroundColor = UIColor.orangeColor()

    return day
  }
}

extension CalendarCollectionViewCell : UICollectionViewDelegateFlowLayout {
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 0, left:15, bottom: 0, right: 15)
  }
}
