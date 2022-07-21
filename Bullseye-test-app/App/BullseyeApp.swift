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
        //AppCenter.start(withAppSecret: ProcessInfo.processInfo.environment["APP_SECRET"]!, services: [Analytics.self, Crashes.self])
        
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
