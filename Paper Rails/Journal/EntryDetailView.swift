//
//  EntryDetailView.swift
//  Paper Rails
//
//  Created by Alan Perez on 12/19/21.
//

import SwiftUI

struct EntryDetailView: View {
    @Binding var entry: Entry.Data
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Title", text: $entry.title)
                .font(.title)
            Divider()
            EntryDescriptionView(entry: $entry)
            TextEditor(text: $entry.body)
            Spacer()
        }
        .padding(.horizontal)
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button(action: {}) {
                    Text(entry.date, style: .date)
                }
                Button(action: {}) {
                    Image(systemName: "photo")
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct EntryDescriptionView: View {
    @Binding var entry: Entry.Data
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Reykjavik")
                Text("Iceland")
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text("9 °C")
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
    }
}

struct EntryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EntryDetailView(entry: .constant(Entry.getSampleDate()[0].data))
        }
    }
}
