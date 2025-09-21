//
//  CounterView.swift
//  Fun_Pitch_Counter Watch App
//
//  Created by Kevin.McEwan.a1.2 on 2025-09-21.
//

import SwiftUI

// MARK: - Counter Screen
struct CounterView: View {
    @EnvironmentObject var settings: AppSettings
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                NavigationLink(destination: SettingsView()) {
                    Image(systemName: "gear")
                        .font(.system(size: settings.buttonSize * 0.5))
                }
            }
            
            Spacer()
            
            Text("\(settings.count)")
                .font(.system(size: settings.textSize))
                .foregroundColor(settings.selectedColorScheme.text)
                .padding()
            
            HStack {
                // '-' Button
                Button(action: { settings.count -= 1 }) {
                    Text("-")
                        .frame(width: settings.buttonSize, height: settings.buttonSize)
                        .background(Color.gray.opacity(0.3))
                        .clipShape(Circle())
                }
                
                // '+' Button
                Button(action: { settings.count += 1}) {
                    Text("+")
                    .frame(width: settings.buttonSize, height: settings.buttonSize)
                    .background(Color.gray.opacity(0.3))
                    .clipShape(Circle())
                }
            }
            
            // 'Reset' Button
            // Button(action: { settings.count = 0})
            Button("Reset") {
                settings.count = 0
            }
            .padding(.top)
            
            Spacer()
            
        }
        .padding()
        .background(settings.selectedColorScheme.background.ignoresSafeArea())
    }
}

#Preview {
    CounterView()
}
