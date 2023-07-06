//
//  HeaderView.swift
//  ToDoList
//
//  Created by Sasha Maksyutenko on 03.07.2023.
//

import SwiftUI

struct HeaderView: View {
    let title:String
    let subtitle:String
    let angle:Double
    let background:Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius:0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            VStack{
            Text(title)
                    .font(.system(size:50))
                    .foregroundColor(Color.white)
            Text(subtitle)
                    .foregroundColor(Color.white)
                    .font(.system(size:30))
            }
            .padding(.top,80)
        }
        .frame(width:UIScreen.main.bounds.width*3,height:350)
        .offset(y:-150)
    }
}
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
    }
}