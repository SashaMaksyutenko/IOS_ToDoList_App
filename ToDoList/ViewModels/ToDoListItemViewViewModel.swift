//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Sasha Maksyutenko on 03.07.2023.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation
/// ViewModel for single of item view (each row in items list)
/// Primary tab
class ToDoListItemViewViewModel:ObservableObject{
    init(){}
    func toggleIsDone(item:ToDoListItem){
        var itemCopy=item
        itemCopy.setDone(!item.isDone)
        guard let uid=Auth.auth().currentUser?.uid else{
            return
        }
        let db=Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
