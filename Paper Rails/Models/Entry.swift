//
//  Entry.swift
//  Paper Rails
//
//  Created by Alan Perez on 12/16/21.
//

import SwiftUI

struct Entry: Identifiable, Codable {
    let id: UUID
    let date: Date
    let theme: Theme
    var title: String
    var body: String
    
    init(date: Date = Date(), title: String, body: String) {
        self.id = UUID()
        self.date = date
        self.theme = .todaysTheme
        self.title = title
        self.body = body
    }
}

extension Entry {
    static func getSampleDate() -> [Entry] {
        // Helps create Dates
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm"
        
        var rtn: [Entry] = []
        
        // Populate return value
        var date: Date = formatter.date(from: "2021/01/22 10:30")!
        rtn.append(Entry(date: date, title: "Entry 1", body: "Lorem epsidum"))
        
        date = formatter.date(from: "2021/03/26 08:30")!
        rtn.append(Entry(date: date, title: "Entry 2", body: "Lorem epsidum"))
        
        date = formatter.date(from: "2021/06/22 14:30")!
        rtn.append(Entry(date: date, title: "Entry 3", body: "Lorem epsidum"))
        
        rtn.append(Entry(title: "Entry 4", body: "Lorem epsidum"))
        
        return rtn
    }
}
