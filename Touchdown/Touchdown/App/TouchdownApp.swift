//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Vijay Parmar on 27/05/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
