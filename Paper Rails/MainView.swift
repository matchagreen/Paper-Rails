//
//  MainView.swift
//  Paper Rails
//
//  Created by Alan Perez on 12/16/21.
//

import SwiftUI

struct MainView: View {
    @Binding var entries: [Entry]
    var body: some View {
        TabView {
            NavigationView {
                JournalView(entries: $entries)
            }
            .tabItem {
                Image(systemName: "book")
                Text("Journal")
            }
            NavigationView {
                ExploreView()
            }
            .tabItem {
                Image(systemName: "brain")
                Text("Explore")
            }
            
            NavigationView {
                SettingsView()
            }
            .tabItem {
                Image(systemName: "gearshape")
                Text("Settings")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(entries: .constant(Entry.getSampleDate()))
    }
}
