//
//  PlayerView.swift
//  Caremobile
//
//  Created by Victor Ilyukevich on 1/22/16.
//  Copyright © 2016 Care Zone Inc. All rights reserved.
//

import AVFoundation
import UIKit

class PlayerView: UIView {

  override class func layerClass() -> AnyClass {
    return AVPlayerLayer.self
  }

  var player: AVPlayer? {
    get {
      return (layer as! AVPlayerLayer).player
    }
    set(newPlayer) {
      (layer as! AVPlayerLayer).player = newPlayer
    }
  }

}
