//
//  NoItemsView.swift
//  ToDoList2
//
//  Created by Raymond Thomas on 13/07/2024.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("No Items To Show")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("There are no items to display. You can add new items using the Add New Items button below 😀")
                NavigationLink("Add New Items", destination: AddView())
                    .font(.title2)
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
}

#Preview {
    NavigationView {
        NoItemsView()
            .navigationTitle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Title@*/Text("Title")/*@END_MENU_TOKEN@*/)
    }
}
