//
//  ToDoList2App.swift
//  ToDoList2
//
//  Created by Raymond Thomas on 13/07/2024.
//

import SwiftUI

@main
struct ToDoList2App: App {
    var body: some Scene {
        
        @StateObject var listViewModel:ListViewModel = ListViewModel()
        
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(ListViewModel())
        }
    }
}
