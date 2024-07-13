//
//  ListViewModel.swift
//  ToDoList2
//
//  Created by Raymond Thomas on 13/07/2024.
//

import Foundation

class ListViewModel:ObservableObject {
    @Published var items:[ItemModel] = []
    
    init() {
        loadInit()
    }
    
    func loadInit() {
        let newItems:[ItemModel] = [
            ItemModel(title: "First line item", isCompleted: true),
            ItemModel(title: "Second line item", isCompleted: false),
            ItemModel(title: "Third line item", isCompleted: true)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet:IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from:IndexSet, to:Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title:String) {
        let addItem:ItemModel = ItemModel(title: title, isCompleted: false)
        items.append(addItem)
    }
    
    func updateItem(item:ItemModel) {
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.setCompleted()
        }
    }
    
}
