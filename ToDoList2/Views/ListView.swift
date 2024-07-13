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
            RowView()
        }
        .navigationTitle("To Do List ✅")
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}


