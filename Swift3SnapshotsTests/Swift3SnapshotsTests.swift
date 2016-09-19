//
//  Swift3SnapshotsTests.swift
//  Swift3SnapshotsTests
//
//  Created by Victor Ilyukevich on 9/19/16.
//  Copyright © 2016 CareZone Inc. All rights reserved.
//

import XCTest
import Quick
import Nimble
import Nimble_Snapshots

@testable import Swift3Snapshots

class Swift3SnapshotsTests: QuickSpec {
  override func spec() {
    it("works") {
      let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
      label.text = "Works"
      expect(label).to(haveValidSnapshot())
    }
  }
}
