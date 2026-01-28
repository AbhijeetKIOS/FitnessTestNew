//
//  StepCountController.swift
//  FitnessTest
//
//  Created by Abhijeet Kumar on 08/01/26.
//

import Foundation
import UIKit

final class StepCountViewController: UIViewController {
    
    let startButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        updateButton()
//        let title = AppModel.instance.appState.nextStateButtonLabel
//        
//        startButton
//            .setTitle(title, for: .normal)
//        startButton.addTarget(self, action: #selector(startStopPause(_:)), for: .touchUpInside)
//        
//        let stackView = UIStackView(arrangedSubviews: [startButton])
    }
    func startStopPause(_ sender: Any?) {
        AppModel.instance.start()
        // When start is tapped, app moves to in-progress
        AppModel.instance.appState = .running
//        let title = AppModel.instance.appState.nextStateButtonLabel
//        startButton.setTitle(title, for: .normal)
        // MARK: - updateButton replace above two line of code
        updateButton()
    }
    
    private func updateButton(){
        let title = AppModel.instance.appState.nextStateButtonLabel
        startButton.setTitle(title, for: .normal)
    }
}
