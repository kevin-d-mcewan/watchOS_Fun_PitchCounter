//
//  AppSettings.swift
//  Fun_Pitch_Counter Watch App
//
//  Created by Kevin.McEwan.a1.2 on 2025-09-21.
//

import Foundation
import SwiftUICore


// MARK: - App Settings Model
class AppSettings: ObservableObject {
    @Published var count: Int = 0
    
    // User-picked Color Scheme
    @Published var selectedColorScheme: ColorSchemeOption = .scheme1
    
    @Published var textSize: CGFloat = 18
    @Published var buttonSize: CGFloat = 40
    
    // Toggle this to Control Flow
    @Published var loadDirectToCounter: Bool = false
}


enum ColorSchemeOption: String, CaseIterable {
    case scheme1, scheme2
    
    var background: Color {
        switch self {
        case .scheme1: return Color.blue
        case .scheme2: return Color.pink
        }
    }
    
    var text: Color {
        switch self {
        case .scheme1: return Color.white
        case .scheme2: return Color.mint
        }
    }
}


