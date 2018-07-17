//
//  TestFrameWorkTests.swift
//  TestFrameWorkTests
//
//  Created by Datamatics Global Services Limited on 13/07/18.
//  Copyright © 2018 Datamatics Global Services Limited. All rights reserved.
//

import XCTest

import LPMessagingSDK
import LPInfra
 @objc class TestFrameWorkTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
   @objc public func TestInitialize() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    do {
        try LPMessagingSDK.instance.initialize("33136087")
    } catch {
        return
    }
    
    let conversationQuery = LPMessagingSDK.instance.getConversationBrandQuery("33136087")
    let conversationViewParams = LPConversationViewParams(conversationQuery: conversationQuery, isViewOnly: false)
    LPMessagingSDK.instance.showConversation(conversationViewParams, authenticationParams: nil)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
