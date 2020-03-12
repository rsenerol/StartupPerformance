//
//  StartupPerformanceUITests.swift
//  StartupPerformanceUITests
//
//  Created by Raffi Senerol on 2020-03-11.
//  Copyright © 2020 Raffi Senerol. All rights reserved.
//

import XCTest

class StartupPerformanceUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
    }

    func testStoragePerformance() {
        let app = XCUIApplication()
        measure(metrics: [XCTStorageMetric(application: app)]) {
            app.launch()
            CFRunLoopRunInMode(.defaultMode, 10, false);
        }
    }

    // Auto-generated test
    func testLaunchPerformance() {
        // This measures how long it takes to launch your application.
        measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
            XCUIApplication().launch()
        }
    }
}
