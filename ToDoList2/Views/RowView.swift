//
//  RowView.swift
//  ToDoList2
//
//  Created by Raymond Thomas on 13/07/2024.
//

import SwiftUI

struct RowView: View {
    
    let item:ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ?  "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green :.red)
            Text(item.title)
            Spacer()
        }
    }
}

struct RowView_Prev:PreviewProvider {
    
    static var item1:ItemModel = ItemModel(title: "First preview", isCompleted: true)
    static var item2:ItemModel = ItemModel(title: "Second previeww", isCompleted: false)
    
    static var previews: some View {
        Group {
            RowView(item: item1)
            RowView(item: item2)
        }
    }
}
