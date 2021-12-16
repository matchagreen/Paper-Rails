//
//  EntriewView.swift
//  Paper Rails
//
//  Created by Alan Perez on 12/16/21.
//

import SwiftUI

struct JournalView: View {
    @Binding var entries: [Entry]
    var body: some View {
        List {
            ForEach($entries) { $entry in
                CardView(entry: $entry)
            }
        }
        .navigationTitle("Journal")
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            JournalView(entries: .constant(Entry.getSampleDate()))
        }
    }
}
