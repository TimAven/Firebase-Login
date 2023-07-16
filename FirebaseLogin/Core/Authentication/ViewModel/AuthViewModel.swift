//
//  AuthViewModel.swift
//  FirebaseLogin
//
//  Created by Tim Aven on 7/15/23.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

@MainActor
class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func signIn(withEmail: String, password: String) async throws {
        print("Sign in")
    }
    
    func createUser(wihEmail email: String, password: String, fullName: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            let user = User(id: result.user.uid, fullName: fullName, email: email)
            let encodedUser = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
        } catch {
            print("DEBUG: failed to create user \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        print("sign out")

    }
    
    func deleteAccount() {
        print("delete user")

    }
    
    func fecthUser() async {
        guard let uid = Auth.auth().currentUser?.uid else {return}
        guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else { return }
        let user = try? snapshot.data(as: User.self)
        
        print("debug: Current user is: \(self.currentUser)")
    }
}
