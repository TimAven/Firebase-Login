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
                    Text("TA")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(width: 72, height: 72)
                        .foregroundColor(.white)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Tim Aven")
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding(.top, 4)

                        Text("timaven@gmail.com")
                            .fontWeight(.semibold)
                            .font(.subheadline)
                            .accentColor(.gray)
                        
                    }
                }
            }
            Section("General") {
                HStack {
                    Image()
                }
                
            }
            Section("Account") {
                
            }
            
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
