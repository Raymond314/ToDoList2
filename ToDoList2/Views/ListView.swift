//
//  ListView.swift
//  ToDoList2
//
//  Created by Raymond Thomas on 13/07/2024.
//

import SwiftUI

struct ListView: View {
    
    @State var items:[ItemModel] = [
    ItemModel(title: "First line item", isCompleted: true),
    ItemModel(title: "Second line item", isCompleted: false),
    ItemModel(title: "Third line item", isCompleted: true)
    ]
    
    var body: some View {
        List {
            ForEach (items) {
                item in RowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
        }
        .listStyle(.plain)
        .navigationTitle("To Do List ✅")
        .navigationBarItems(leading: EditButton(),
                            trailing: NavigationLink("Add", destination: AddView()))
    }
    
    func deleteItem(indexSet:IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from:IndexSet, to:Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}


