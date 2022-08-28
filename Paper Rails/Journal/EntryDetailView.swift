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
                    Image(systemName: "camera")
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
                Text(entry.date, style: .date)
                Text("9 °C")
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("Reykjavik")
                Text("Iceland")
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
