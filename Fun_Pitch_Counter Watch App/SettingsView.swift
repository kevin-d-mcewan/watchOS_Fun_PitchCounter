//
//  SettingsView.swift
//  Fun_Pitch_Counter Watch App
//
//  Created by Kevin.McEwan.a1.2 on 2025-09-21.
//

import SwiftUI
import Foundation
import SwiftUICore

struct SettingsView: View {
    @EnvironmentObject var settings: AppSettings
    
    var body: some View {
        Form{
            Picker("Color Scheme", selection: $settings.selectedColorScheme) {
                ForEach(ColorSchemeOption.allCases, id: \.self) { scheme in
                    Text(scheme.rawValue.capitalized)
                }
            }
            
            Stepper("Text Size: \(Int(settings.textSize))", value: $settings.textSize, in: 12...36 )
            Stepper("Button Size: \(Int(settings.buttonSize))", value: $settings.buttonSize, in: 36...80)
            Toggle("Load Direct To Counter", isOn: $settings.loadDirectToCounter)
        }
        .navigationTitle("Settings")
    }
}


#Preview {
    SettingsView()
}
