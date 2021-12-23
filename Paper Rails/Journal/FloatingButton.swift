//
//  FloatingButton.swift
//  Paper Rails
//
//  Created by Alan Perez on 12/23/21.
//

import SwiftUI

struct FloatingButton: View {
    let size: CGFloat
    let action: () -> Void
    var body: some View {
        ZStack {
            Button(action: action) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
            }
            .frame(width: size, height: size)
        }
    }
}

struct FloatingButton_Previews: PreviewProvider {
    static var previews: some View {
        FloatingButton(size: 50, action: {})
    }
}
