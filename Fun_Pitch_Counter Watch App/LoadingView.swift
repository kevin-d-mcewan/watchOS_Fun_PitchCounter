//
//  LoadingView.swift
//  Fun_Pitch_Counter Watch App
//
//  Created by Kevin.McEwan.a1.2 on 2025-09-21.
//

import SwiftUI

// MARK: - Loading Screen
struct LoadingView: View {
    @EnvironmentObject var settings: AppSettings
    @State private var isActive = false
    
    var body: some View {
        
        if isActive {
            if settings.loadDirectToCounter{
                CounterView()
            } else {
                MainTabView()
            }
        } else {
            VStack {
                Image(systemName: "timer")  // replace with logo asset
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                Text("Fun Pitch Counter Wach App")
                    .font(.headline)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
        
    }
}

#Preview {
    LoadingView()
}
