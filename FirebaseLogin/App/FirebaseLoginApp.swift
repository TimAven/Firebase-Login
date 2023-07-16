//
//  FirebaseLoginApp.swift
//  FirebaseLogin
//
//  Created by Tim Aven on 7/15/23.
//

import SwiftUI
import Firebase

@main
struct FirebaseLoginApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var viewModel = AuthViewModel()

    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(viewModel)
        }
    }
}
