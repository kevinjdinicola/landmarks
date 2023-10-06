//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Kevin Dinicola on 9/17/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
