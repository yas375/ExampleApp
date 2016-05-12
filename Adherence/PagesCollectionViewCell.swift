//
//  PagesCollectionViewCell.swift
//  Adherence
//
//  Created by Victor Ilyukevich on 5/11/16.
//  Copyright © 2016 Open Source. All rights reserved.
//

import UIKit

class PagesCollectionViewCell: UICollectionViewCell {

  @IBOutlet var collectionView: UICollectionView!

  var pages = [14, 3, 15, 8, 6, 10, 13, 6, 300]

  override func awakeFromNib() {
    super.awakeFromNib()

    collectionView.dataSource = self
    collectionView.delegate = self

    let nib = UINib(nibName: String(TimelineCollectionViewCell), bundle: nil)
    collectionView.registerNib(nib, forCellWithReuseIdentifier: String(TimelineCollectionViewCell))
  }

}


extension PagesCollectionViewCell : UICollectionViewDataSource {
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return pages.count
  }

  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let day = collectionView.dequeueReusableCellWithReuseIdentifier(String(TimelineCollectionViewCell), forIndexPath: indexPath) as! TimelineCollectionViewCell
    day.numberOfRows = pages[indexPath.row]
    day.collectionView.reloadData()

    return day
  }
}

extension PagesCollectionViewCell : UICollectionViewDelegateFlowLayout {
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
  }
}
