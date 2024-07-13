//
//  LoginView.swift
//  ToDoList
//
//  Created by Raihan Arman on 07/07/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                // Header
//                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15,backgroundColor: Color.pink
//                )
                
                // Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(
                        textButton: "Log In",
                        backgroundColor: .blue
                    ) {
                        viewModel.login()
                    }
                    .padding()
                }
                
                
                // Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                Spacer()
            }

        }
    }
}

#Preview {
    LoginView()
}
