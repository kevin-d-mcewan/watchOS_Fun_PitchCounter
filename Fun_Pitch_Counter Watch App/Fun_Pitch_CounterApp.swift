//
//  Fun_Pitch_CounterApp.swift
//  Fun_Pitch_Counter Watch App
//
//  Created by Kevin.McEwan.a1.2 on 2025-09-21.
//

import SwiftUI

// MARK: - App Entry
@main
struct Fun_Pitch_Counter_Watch_App: App {
    @StateObject private var settings = AppSettings()
    
    var body: some Scene {
        WindowGroup {
            LoadingView()
                .environmentObject(settings)
        }
    }
}


