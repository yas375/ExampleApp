//
//  ViewController.swift
//  PlayerInsideScrollView
//
//  Created by Victor Ilyukevich on 1/22/16.
//  Copyright © 2016 Victor. All rights reserved.
//

import AVFoundation
import AVKit
import UIKit

class ViewController: UIViewController {
  @IBOutlet var playerView: PlayerView!

  func makePlayer() -> AVPlayer? {
    if let url = NSBundle.mainBundle().URLForResource("video", withExtension: "mp4") {
      return AVPlayer(URL: url)
    }
    return nil
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    playerView.player = self.makePlayer()
  }

  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    playerView.player?.play()
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "embedPlayer" {
      let controller = segue.destinationViewController as! AVPlayerViewController
      controller.player = self.makePlayer()
      controller.showsPlaybackControls = false
      controller.player?.play() // edges are flickering even if we don't play the video
    }
  }
}

