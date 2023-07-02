//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Sasha Maksyutenko on 02.07.2023.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
