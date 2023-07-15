//
//  RegistrationView.swift
//  FirebaseLogin
//
//  Created by Tim Aven on 7/15/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""

    
    
    var body: some View {
        VStack {
            //Image
            Image("FirebaseLogo")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 180)
                .padding(.vertical, 10)
            
            //FormFields
            VStack(spacing: 24) {
                InputView(text: $email,
                          title: "Email Address",
                          placeHolder: "name@example.com")
                .autocapitalization(.none)
                
                InputView(text: $fullName,
                          title: "Full Name",
                          placeHolder: "Enter your name")
                .autocapitalization(.none)
                
                InputView(text: $password,
                          title: "Password",
                          placeHolder: "Enter your password",isSecureField: true)
                .autocapitalization(.none)
                
                InputView(text: $confirmPassword,
                          title: "Confirm Password",
                          placeHolder: "Confirm your password", isSecureField: true)
                
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            Spacer()
            
            //Sign up button
            Button {
                print("User sign up")
            } label: {
                HStack{
                    Text("SIGN UP")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                    
                }
            }
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.vertical, 24)
            
            
            

            
        }
        
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
