//
//  RegisterView.swift
//  ToDoList
//
//  Created by Raihan Arman on 07/07/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    @State private var isRegistered = false
    
    var body: some View {
        VStack {
            HeaderView(
                title: "Register", subtitle: "Start orginizing todos", angle: -15, backgroundColor: .orange
            )
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(
                    textButton: "Register",
                    backgroundColor: .blue
                ) {
                    viewModel.register {
                        isRegistered = true
                        print("register berhasil\n")
                    }
                }
                .padding()
                
            }
            .offset(y: -50)
            .navigationTitle("Register View")
            .navigationDestination(isPresented: $isRegistered, destination: {
                ToDoListView(userId: "")
            })

            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
