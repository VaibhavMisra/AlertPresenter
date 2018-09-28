//
//  AlertPresenterTests.swift
//  AlertPresenterTests
//
//  Created by Vaibhav Misra on 28/09/18.
//  Copyright © 2018 Vaibhav Misra. All rights reserved.
//

import XCTest
@testable import AlertPresenter

class AlertPresenterTests: XCTestCase {
    
    var vc: ViewController!
    override func setUp() {
        let mainSB = UIStoryboard(name: "Main", bundle: nil)
        self.vc = (mainSB.instantiateViewController(withIdentifier: "homeVC") as! ViewController)
        UIApplication.shared.keyWindow?.rootViewController = self.vc
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAlertHasTitle() {
        vc.showAlert(UIButton())
        
        XCTAssertTrue(vc.presentedViewController is UIAlertController)
        XCTAssertEqual(vc.presentedViewController?.title, "Test Alert")
    }
    
    func testAlertFirstActionTitleIsOK() {
        
        vc.showAlert(UIButton())
        let alertController = vc.presentedViewController as! UIAlertController
        let action = alertController.actions.first!
        XCTAssertEqual(action.title, "Ok")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
