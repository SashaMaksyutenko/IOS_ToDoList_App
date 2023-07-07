//
//  TLButton.swift
//  ToDoList
//
//  Created by Sasha Maksyutenko on 06.07.2023.
//

import SwiftUI

struct TLButton: View {
    let title:String
    let background:Color
    let action:()->Void
    var body: some View {
        Button {
           action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .bold()
            }
        }
    }
}
struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Value", background:.pink) {
            // action
        }
        }
}
