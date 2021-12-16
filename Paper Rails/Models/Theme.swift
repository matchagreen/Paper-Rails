//
//  Theme.swift
//  Paper Rails
//
//  Created by Alan Perez on 12/16/21.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable, Codable {
    case green
    case yellow
    case brown
    case blue
    
    var mainColor: Color {Color(rawValue)}
    var name: String {rawValue.capitalized}
    var id: String {name}
    static var todaysTheme: Theme {.blue}
}


