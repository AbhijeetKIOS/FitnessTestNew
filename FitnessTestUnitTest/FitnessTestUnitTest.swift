//
//  FitnessTestUnitTest.swift
//  FitnessTestUnitTest
//
//  Created by Abhijeet Kumar on 05/01/26.
//

import XCTest
@testable import FitnessTest

// Mark:- tests as @MainActor because AppState/AppModel conformances or properties are main-actor isolated.

final class AppModelTests: XCTestCase {
    var sut: AppModel!
    override func setUp() {
        super.setUp()
        sut = AppModel()
    }
    func testAppModel_whenInitialized_isInNotStartedState() {
        // MARK:- COMMENT SUT BECAUSE OF setUp Method in both function
        //let sut = AppModel()
        
        let initialState = sut.appState
        XCTAssertEqual(initialState, AppState.notStarted)
    }
    
    
    func testAppModel_whenStarted_isInInProgressState() {
        // 1 given app in not started
        // let sut = AppModel()
        
        // 2 when started
        sut.start()
        
        // 3 then it is in inProgress
        let observedState = sut.appState
        XCTAssertEqual(observedState, AppState.running)
    }
    
    //MARK:- “A related gotcha with XCTestCases is it won't be deinitialized until all the tests are complete. That means it's important to clean up a test's state after it's run to control memory usage, clean up the filesystem, or otherwise put things back the way it was found.”
    
    //Note: “So far it's a pretty simple test case, and the only persistent state is in sut, so clearing it in tearDown is good practice. It helps ensure that new global behavior added in the future won't affect previous tests.”
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
}

