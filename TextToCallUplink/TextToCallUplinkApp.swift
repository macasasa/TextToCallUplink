//
//  TextToCallUplinkApp.swift
//  TextToCallUplink
//
//  Created by Nikolay on 22.12.2022.
//

import SwiftUI

@main
struct TextToCallUplinkApp: App {
    @StateObject private var vm = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
