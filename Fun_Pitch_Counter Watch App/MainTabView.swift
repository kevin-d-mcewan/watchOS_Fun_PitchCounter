//
//  MainTabView.swift
//  Fun_Pitch_Counter Watch App
//
//  Created by Kevin.McEwan.a1.2 on 2025-09-21.
//

import SwiftUI

// MARK: - Tab View with Two Screens + Settings
struct MainTabView: View {
    var body: some View {
        TabView {
            CounterView()
                .tag(0)
            CounterView()
                .tag(1)
            CounterView()
                .tag(2)
        }
    }
}


#Preview {
    MainTabView()
}
