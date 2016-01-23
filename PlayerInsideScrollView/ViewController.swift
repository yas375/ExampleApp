//
//  ViewController.swift
//  PlayerInsideScrollView
//
//  Created by Victor Ilyukevich on 1/22/16.
//  Copyright © 2016 Victor. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
  @IBOutlet var playerView: PlayerView!


  override func viewDidLoad() {
    super.viewDidLoad()
    if let url = NSBundle.mainBundle().URLForResource("video", withExtension: "mp4") {
      playerView.player = AVPlayer(URL: url)
    }
  }

  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    playerView.player?.play()
  }
  
}

