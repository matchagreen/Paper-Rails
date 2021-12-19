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
        EntriesView(entries: $entries)
    }
}

struct EntriesView: View {
    @State private var isPresentingEntry = false
    @State private var presentedEntry = Entry(title: "", body: "")
    @Binding var entries: [Entry]
    var body: some View {
        List {
            ForEach($entries) { $entry in
                NavigationLink(destination: Text("FIX ME")) {
                    CardView(entry: $entry)
                }
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
