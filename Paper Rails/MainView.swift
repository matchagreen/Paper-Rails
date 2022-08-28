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
            JournalView(entries: $entries)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(entries: .constant(Entry.getSampleDate()))
    }
}
