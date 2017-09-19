//
//  TimeZonesTests.swift
//  TimeZonesTests
//
//  Created by Victor Ilyukevich on 9/18/17.
//


// Documentation for `localTimeZone` says:

// The local time zone represents the current state of the default time zone at
// all times. If you get the default time zone (using default) and hold onto the
// returned object, it does not change if a subsequent invocation of setDefault(_:)
// changes the default time zone—you still have the specific time zone you originally
// got. The local time zone adds a level of indirection, it acts as if it were the
// current default time zone whenever you invoke a method on it.


import XCTest
@testable import TimeZones

class TimeZonesTests: XCTestCase {
  func testChangingDefaultTimeZone() {
    NSTimeZone.default = NSTimeZone(forSecondsFromGMT: NSTimeZone.default.secondsFromGMT() + 3600) as TimeZone
    XCTAssertEqual(NSTimeZone.default.secondsFromGMT(), NSTimeZone.local.secondsFromGMT()) // breaks on iOS 11
  }
}
