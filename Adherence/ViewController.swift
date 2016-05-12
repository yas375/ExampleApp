//
//  ViewController.swift
//  Adherence
//
//  Created by Victor Ilyukevich on 5/11/16.
//  Copyright © 2016 Open Source. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var collectionView: UICollectionView!

  override func viewDidLoad() {
    super.viewDidLoad()

    let nib = UINib(nibName: String(CalendarCollectionViewCell), bundle: nil)
    collectionView.registerNib(nib, forCellWithReuseIdentifier: String(CalendarCollectionViewCell))

    let nib2 = UINib(nibName: String(PagesCollectionViewCell), bundle: nil)
    collectionView.registerNib(nib2, forCellWithReuseIdentifier: String(PagesCollectionViewCell))
  }

  override func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
    super.willTransitionToTraitCollection(newCollection, withTransitionCoordinator: coordinator)

    coordinator.animateAlongsideTransition({ _ in
      // TODO: PagesCollectionViewCell should invalidate layout as well
      self.collectionView.collectionViewLayout.invalidateLayout()
      }, completion: nil)
  }
}


extension ViewController : UICollectionViewDataSource {
  func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
    return 2
  }

  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 1
  }

  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    if indexPath.section == 0 {
      let calendar = collectionView.dequeueReusableCellWithReuseIdentifier(String(CalendarCollectionViewCell), forIndexPath: indexPath) as! CalendarCollectionViewCell

      return calendar
    }
    else {
      let timelinePages = collectionView.dequeueReusableCellWithReuseIdentifier(String(PagesCollectionViewCell), forIndexPath: indexPath) as! PagesCollectionViewCell

      return timelinePages
    }

  }
}


extension ViewController : UICollectionViewDelegateFlowLayout {
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    if indexPath.section == 0 {
      return CGSize(width: collectionView.frame.width, height: 250)
    }
    else {
      return CGSize(width: collectionView.frame.width, height: collectionView.frame.height - 250)
    }
  }
}