//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Sasha Maksyutenko on 03.07.2023.
//
/// ViewModel for list of items view
/// Primary tab
import FirebaseFirestore
import Foundation
class ToDoListViewViewModel:ObservableObject{
    @Published var showingNewItemView=false
    private let userId:String
    init(userId:String){
        self.userId=userId
    }
    /// Delete To do List item
    /// - Parameter id: item id to delete
    func delete(id:String){
        let db=Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
