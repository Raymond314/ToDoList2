//
//  ListView.swift
//  ToDoList2
//
//  Created by Raymond Thomas on 13/07/2024.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
           // RowView()
        }
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


