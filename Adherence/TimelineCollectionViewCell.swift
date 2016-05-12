//
//  TimelineCollectionViewCell.swift
//  Adherence
//
//  Created by Victor Ilyukevich on 5/11/16.
//  Copyright © 2016 Open Source. All rights reserved.
//

import UIKit

class TimelineCollectionViewCell: UICollectionViewCell {

  var numberOfRows = 10

  @IBOutlet var collectionView: UICollectionView!

  override func awakeFromNib() {
    super.awakeFromNib()

    collectionView.dataSource = self
    collectionView.delegate = self

    collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
  }

}


extension TimelineCollectionViewCell : UICollectionViewDataSource {
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return numberOfRows
  }

  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
    cell.backgroundColor = UIColor.lightGrayColor()

    return cell
  }
}

extension TimelineCollectionViewCell : UICollectionViewDelegateFlowLayout {
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width - 10, height: 25)
  }
}
