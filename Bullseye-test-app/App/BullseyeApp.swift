//
//  BullseyeApp.swift
//  Bullseye
//
//  Created by Isabelle Chang on 6/20/22.
//

import SwiftUI
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@main
struct BullseyeApp: App {
    
    init() {
        AppCenter.start(withAppSecret: "08a14c2e-61e8-4c88-831f-b32b4c922332", services: [Analytics.self, Crashes.self])
        
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
