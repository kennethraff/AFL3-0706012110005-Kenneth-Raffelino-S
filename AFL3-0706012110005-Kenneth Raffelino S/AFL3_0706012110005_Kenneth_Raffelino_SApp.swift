//
//  AFL3_0706012110005_Kenneth_Raffelino_SApp.swift
//  AFL3-0706012110005-Kenneth Raffelino S
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

@main
struct AFL3_0706012110005_Kenneth_Raffelino_SApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
