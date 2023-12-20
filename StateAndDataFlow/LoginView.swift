//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 18.10.2023.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var userManager: UserManager
    @AppStorage("username") private var username = ""
    @State private var characterCount = 0
    
    private var nameIsValid: Bool {
        characterCount >= 3
    }
    
    var body: some View {
        VStack {
            ZStack(alignment: .trailing) {
                TextField("Enter your name", text: $username)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(nameIsValid ? .green : .red)
                    .onChange(of: username) {
                        characterCount = username.count
                    }
                
                Text("\(characterCount) ")
                    .foregroundStyle(nameIsValid ? .green : .red)
            }
                Button(action: login) {
                    Label("OK", systemImage: "checkmark.circle")
                        .foregroundStyle(nameIsValid ? .blue : .gray)
            }
            .disabled(!nameIsValid)
        }
        .padding()
    }
    
    private func login() {
        if nameIsValid {
            userManager.name = username
            userManager.isLoggedIn = true
            userManager.saveUserData()
        }
    }
}

#Preview {
    LoginView()
}
