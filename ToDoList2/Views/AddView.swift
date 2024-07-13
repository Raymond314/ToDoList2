//
//  AddView.swift
//  ToDoList2
//
//  Created by Raymond Thomas on 13/07/2024.
//

import SwiftUI

struct AddView: View {
    
    @State var newItem:String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Add new item...", text:$newItem)
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color("ColorBG"))
                    .cornerRadius(10)
                Button("SAVE") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .font(.title2)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)            }
        }
        .padding(14)
        .navigationTitle("Add new items ✅")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
