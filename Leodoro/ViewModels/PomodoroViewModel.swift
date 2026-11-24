//
//  PomodoroViewModel.swift
//  Leodoro
//
//  Created by Warlischek Julian on 24.11.26.
//

import Foundation
import SwiftUI

@Observable
class PomodoroViewModel {
    var pomodoroManager: PomodoroManager
    var progress: Double
    var progressColor: Color
    var isProgressVisible: Bool
    
    init(pomodoroManager: PomodoroManager) {
        self.progress = 0
        self.progressColor = .pomodoroRed
        self.isProgressVisible = true
        self.pomodoroManager = pomodoroManager
    }
    
}
