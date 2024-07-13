//
//  RowView.swift
//  ToDoList2
//
//  Created by Raymond Thomas on 13/07/2024.
//

import SwiftUI

struct RowView: View {
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

#Preview {
    RowView()
}
