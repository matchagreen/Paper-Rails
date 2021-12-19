//
//  Paper_RailsApp.swift
//  Paper Rails
//
//  Created by Alan Perez on 5/28/21.
//

import SwiftUI

@main
struct Paper_RailsApp: App {
    @State private var entries = Entry.getSampleDate()
    
    var body: some Scene {
        WindowGroup {
            MainView(entries: $entries)
        }
    }
}
