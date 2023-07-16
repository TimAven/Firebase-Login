//
//  User.swift
//  FirebaseLogin
//
//  Created by Tim Aven on 7/15/23.
//

import Foundation


struct User: Identifiable, Codable {
    let id: String
    let fullName: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullName) {
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, fullName: "Tim Aven", email: "timaven@gmail.com")
}


