//
//  LoginView.swift
//  ToDoList
//
//  Created by Sasha Maksyutenko on 03.07.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel=LoginViewViewModel()
    var body: some View {
        NavigationView{
            VStack
            {
                //Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                //Login Form
                Form{
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Log In", background: .blue) {
                        // Attempt Log In
                    }
                    .padding()
                }
                .offset(y:-50)
                
                //Create Account
                VStack{
                    Text("New Around Here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom,50)
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}