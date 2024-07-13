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
        }
        .listStyle(.plain)
        .navigationTitle("To Do List ✅")
        .navigationBarItems(leading: EditButton(),
                            trailing: NavigationLink("Add", destination: AddView()))
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}


