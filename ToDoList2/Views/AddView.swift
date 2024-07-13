//
//  AddView.swift
//  ToDoList2
//
//  Created by Raymond Thomas on 13/07/2024.
//

import SwiftUI

struct AddView: View {
    
    @EnvironmentObject var listViewModel:ListViewModel
    @Environment(\.presentationMode) var presentationMode
    @State var newItem:String = ""
    @State var showAlert:Bool = false
    @State var alertMessage:String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Add new item...", text:$newItem)
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color("ColorBG"))
                    .cornerRadius(10)
                Button("SAVE") {
                    saveButtonPressed()
                }
                .font(.title2)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)            }
        }
        .alert(isPresented: $showAlert, content: {
            getAlert()
        })
        .padding(14)
        .navigationTitle("Add new items ✅")
    }
    
    func saveButtonPressed() {
        if isNewItemCorrect() {
            listViewModel.addItem(title: newItem)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func isNewItemCorrect() -> Bool {
        if newItem.count < 3 {
            alertMessage = "At least 3 char needed 🤓"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertMessage))
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    .environmentObject(ListViewModel())
}
