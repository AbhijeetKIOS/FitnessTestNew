//
//  AppModel.swift
//  FitnessTest
//
//  Created by Abhijeet Kumar on 05/01/26.
//

import Foundation

public enum AppState {
      case notStarted
      case running
      case finished
  }

public extension AppState {
    var nextStateButtonLabel: String {
    switch self{
    case .notStarted:
        return "Start"
    case .running:
        return "Pause"
    case .finished:
        return "Restart"
    }
}
}
public class AppModel {
    public static let instance = AppModel()
    
      public var appState: AppState = .notStarted
     // public init() {}
    
    public func start() {
        appState = .running
    }
  }

