//
//  ContentView.swift
//  FirebaseLogin
//
//  Created by Tim Aven on 7/15/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                Profile()
            } else {
                LoginView()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
