//
//  LoginView.swift
//  FirebaseLogin
//
//  Created by Tim Aven on 7/15/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                //Image
                Image("FirebaseLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 180)
                    .padding(.vertical, 32)
                
                //FormFields
                VStack(spacing: 24) {
                    InputView(text: $email,
                              title: "Email Address",
                              placeHolder: "name@example.com")
                    .autocapitalization(.none)
                    
                    InputView(text: $password,
                              title: "Password",
                              placeHolder: "Enter your password", isSecureField: true)
                    
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                Button {
                    Task {
                        try await viewModel.signIn(withEmail:email, password:password)
                    }
                } label: {
                    HStack {
                        Text("SIGN IN")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.vertical, 24)
                //Sign in button
                Spacer()
        
                //Sign up button
                NavigationLink {
                    RegistrationView()
                        
                } label: {
                    HStack(spacing: 3){
                        Text("Dont have an account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
