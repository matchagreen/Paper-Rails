//
//  EntriewView.swift
//  Paper Rails
//
//  Created by Alan Perez on 12/16/21.
//

import SwiftUI

struct JournalView: View {
    @State private var entryToAdd: Entry = Entry()
    @State private var isPresentingEntry = false
    @State private var isAddingEntry = false
    @State private var tempData = Entry.Data()
    @Binding var entries: [Entry]
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            List {
                ForEach($entries) { $entry in
                    ZStack {
                        CardView(entry: $entry)
                        Button(action: {
                            tempData = entry.data
                            isPresentingEntry = true
                        }) {EmptyView()}
                    }
                    .fullScreenCover(isPresented: $isPresentingEntry) {
                        NavigationView {
                            EntryDetailView(entry: $tempData)
                                .toolbar {
                                    ToolbarItem(placement: .cancellationAction) {
                                        Button("Discard") {
                                            isPresentingEntry = false
                                        }
                                    }
                                    ToolbarItem(placement: .confirmationAction) {
                                        Button("Done") {
                                            entry.update(from: tempData)
                                            isPresentingEntry = false
                                        }
                                    }
                                }
                        }
                    }
                }
                .onDelete(perform: { indeces in
                    entries.remove(atOffsets: indeces)
                })
            }
            .navigationTitle("Journal")
            .toolbar {
                EditButton()
            }

            FloatingButton(size: 45, action: {
                tempData = Entry.Data()
                isAddingEntry = true
            })
                .padding(.all, 30.0)
        }
        .fullScreenCover(isPresented: $isAddingEntry) {
            NavigationView {
                EntryDetailView(entry: $tempData)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isAddingEntry = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Add") {
                                entries.append(Entry(data: tempData))
                                isAddingEntry = false
                            }
                        }
                }
            }
        }
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            JournalView(entries: .constant(Entry.getSampleDate()))
        }
    }
}

