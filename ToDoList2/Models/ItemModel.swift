//
//  ItemModel.swift
//  ToDoList2
//
//  Created by Raymond Thomas on 13/07/2024.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id:String
    let title:String
    let isCompleted:Bool
    
    init(id:String = UUID().uuidString, title:String, isCompleted:Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func setCompleted() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
