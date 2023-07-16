//
//  Profile.swift
//  FirebaseLogin
//
//  Created by Tim Aven on 7/15/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text(User.MOCK_USER.initials)
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(width: 72, height: 72)
                        .foregroundColor(.white)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(User.MOCK_USER.fullName)
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding(.top, 4)

                        Text(User.MOCK_USER.email)
                            .fontWeight(.semibold)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                    }
                }
            }
            Section("General") {
                HStack {
                    SettingsRowView(imageName: "gear",
                                    title: "Version",
                                    tintColor: Color(.systemGray))
                    Spacer()
                    
                    Text("1.0.1")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemGray3))

                }
                
            }
            Section("Account") {
                Button {
                    print("sign out")
                } label: {
                    SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red)
                }
                Button {
                    print("Delete Account")
                } label: {
                    SettingsRowView(imageName: "xmark.circle.fill", title: "Delete Account", tintColor: .red)
                }
            }
            
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
