//
//  SettingsRowView.swift
//  FirebaseLogin
//
//  Created by Tim Aven on 7/15/23.
//

import SwiftUI

struct SettingsRowView: View {
    
    let imageName: String
    let title: String
    let tintColor: Color
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: imageName)
            imageScale(.small)
            
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(imageName: "gear", title: "Version", tintColor:
                            Color(.systemGray))
    }
}