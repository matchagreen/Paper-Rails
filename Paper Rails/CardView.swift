//
//  CardView.swift
//  Paper Rails
//
//  Created by Alan Perez on 5/28/21.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        HStack {
                Label("10:30", systemImage: "clock")
                    .frame(width: 90.0)
                
                Divider()
                Text("Task")
                    .padding(.horizontal)
                Spacer()
        }
        .frame(height: 35.0)
        .foregroundColor(.black)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
