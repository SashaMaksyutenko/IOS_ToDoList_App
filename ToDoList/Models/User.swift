//
//  User.swift
//  ToDoList
//
//  Created by Sasha Maksyutenko on 03.07.2023.
//

import Foundation
struct User:Codable{
    let id:String
    let name:String
    let email:String
    let joined:TimeInterval
}
