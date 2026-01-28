//
//  UILayerTestUnitTest.swift
//  UILayerTestUnitTest
//
//  Created by Abhijeet Kumar on 08/01/26.
//

import XCTest
@testable import FitnessTest

final class stepCounterControllerTestUnitTest: XCTestCase {

    var sut: StepCountViewController!
    
    override func setUp() {
        super.setUp()
        sut = StepCountViewController()
    }
    
    func testController_whenStartTapped_appInProgress(){
        // Given
        sut = StepCountViewController()

        // When
        sut.startStopPause(nil)

        // Then
        let state = AppModel.instance.appState
        XCTAssertEqual(state, AppState.running)
    }
    
    func testController_whenStartTapped_buttonLabelIsPause(){
        sut.startStopPause(nil)
        
        let text = sut.startButton.title(for: .normal)
        XCTAssertEqual(text, AppState.running.nextStateButtonLabel)
    }
    
    // MARK: - Initial state
    
    func testController_whenCreated_buttonLabelIsStart(){
        sut.viewDidLoad()
        let text = sut.startButton.title(for: .normal)
        XCTAssertEqual(text, AppState.notStarted.nextStateButtonLabel)
       
        
    }
    
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

}
