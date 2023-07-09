//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Sasha Maksyutenko on 03.07.2023.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel=ProfileViewViewModel()
    let item:ToDoListItem
    var body: some View {
        HStack{
            VStack(alignment:.leading){
                Text(item.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.duedate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            Button {
                viewModel.toggleIsDone(item:item)
                
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color.blue)
            }

        }
    }
}
struct ToDoListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListItemView(item:.init(
            id: "123", title: "Get milk and water",
            duedate: Date().timeIntervalSince1970,
            createddate: Date().timeIntervalSince1970,
            isDone: false))
    }
}
