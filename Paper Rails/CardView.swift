//
//  CardView.swift
//  Paper Rails
//
//  Created by Alan Perez on 5/28/21.
//

import SwiftUI

struct CardView: View {
    @Binding var entry: Entry
    var body: some View {
        HStack {
            VStack {
                Text("Day")
                Text("Date")
            }
            .font(.caption)
            .padding(.leading)
            
            Divider()
            Text(entry.title)
                .padding(.horizontal)
            Spacer()
        }
        .padding(.trailing)
        .frame(height: 40.0)
        .background(entry.theme.mainColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(entry: .constant(Entry.getSampleDate()[0]))
            .previewLayout(.sizeThatFits)
    }
}
