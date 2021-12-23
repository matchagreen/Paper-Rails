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
            CardDateView(entry: $entry)
            Divider()
            Text(entry.title)
                .font(.headline)
                .padding(.horizontal)
            Spacer()
        }
    }
}

struct CardDateView: View {
    @Binding var entry: Entry
    var body: some View {
        VStack {
            Text("\(entry.date.getWeekday().substring(toIndex: 3))")
            Text("\(entry.date.get(.month))/\(entry.date.get(.day))")
        }
        .frame(width: 50)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(entry: .constant(Entry.getSampleDate()[0]))
            .previewLayout(.sizeThatFits)
    }
}

