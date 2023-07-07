//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Sasha Maksyutenko on 03.07.2023.
//

import SwiftUI
struct ToDoListView: View {
    @StateObject var viewModel=ToDoListViewViewModel()
    private let userId:String
    init(userId:String){
        self.userId=userId
    }
    var body: some View {
        NavigationView{
            VStack{
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    //action
                } label: {
                    Image(systemName: "plus")
                }

            }
        }
    }
}
struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "")
    }
}
