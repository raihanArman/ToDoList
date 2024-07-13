//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Raihan Arman on 07/07/24.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
