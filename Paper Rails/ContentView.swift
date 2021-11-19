//
//  ContentView.swift
//  Paper Rails
//
//  Created by Alan Perez on 5/28/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                TodayScheduleView()
            }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Today")
                }
            Text("Some other view")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
