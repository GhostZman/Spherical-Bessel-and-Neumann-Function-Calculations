//
//  Spherical_Bessel_and_Neumann_Function_CalculationsUITestsLaunchTests.swift
//  Spherical Bessel and Neumann Function CalculationsUITests
//
//  Created by Phys440Zachary on 1/19/24.
//

import XCTest

final class Spherical_Bessel_and_Neumann_Function_CalculationsUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
