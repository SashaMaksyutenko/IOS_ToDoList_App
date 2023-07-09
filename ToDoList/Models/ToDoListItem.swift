//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Sasha Maksyutenko on 03.07.2023.
//

import Foundation
struct ToDoListItem:Codable, Identifiable{
    let id:String
    let title:String
    let duedate:TimeInterval
    let createddate:TimeInterval
    var isDone:Bool
    mutating func setDone(_ state:Bool){
        isDone = state
    }
}
