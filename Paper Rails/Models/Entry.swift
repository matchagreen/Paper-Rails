//
//  Entry.swift
//  Paper Rails
//
//  Created by Alan Perez on 12/16/21.
//

import SwiftUI

struct Entry: Identifiable, Codable {
    let id: UUID
    var date: Date
    var title: String
    var body: String
    
    init() {
        self.id = UUID()
        self.date = Date()
        self.title = ""
        self.body = ""
    }
    
    init(date: Date = Date(), title: String, body: String) {
        self.id = UUID()
        self.date = date
        self.title = title
        self.body = body
    }
    
    mutating func update(from data: Data) {
        date = data.date
        title = data.title
        body = data.body
    }
}

extension Entry {
    struct Data: Codable {
        var date: Date
        var title: String
        var body: String
        
        init() {
            self.date = Date()
            self.title = ""
            self.body = ""
        }
        
        init(date: Date, title: String, body: String) {
            self.date = date
            self.title = title
            self.body = body
        }
    }
    
    init(data: Data) {
        id = UUID()
        date = data.date
        title = data.title
        body = data.body
    }
    
    var data: Data {
        Data(date: date, title: title, body: body)
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

