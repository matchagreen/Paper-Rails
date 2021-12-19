//
//  EntryDetailView.swift
//  Paper Rails
//
//  Created by Alan Perez on 12/19/21.
//

import SwiftUI

struct EntryDetailView: View {
    @Binding var entry: Entry
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Title", text: $entry.title)
                .font(.title)
            Divider()
            EntryDescriptionView(entry: $entry)
            
            TextField("Body", text: $entry.body)
            Spacer()
        }
        .padding(.horizontal)
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel") {
                    presentation.wrappedValue.dismiss()
                }
            }
            
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    presentation.wrappedValue.dismiss()
                }
            }
            
            ToolbarItemGroup(placement: .bottomBar) {
                Button(action: {}) {
                    Image(systemName: "camera")
                }
                Button(action: {}) {
                    Image(systemName: "location.north.circle")
                }
                Button(action: {}) {
                    Image(systemName: "photo")
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct EntryDescriptionView: View {
    @Binding var entry: Entry
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(entry.date.getWeekday())
                Text(entry.date, style: .date)
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
            EntryDetailView(entry: .constant(Entry.getSampleDate()[0]))
        }
    }
}
