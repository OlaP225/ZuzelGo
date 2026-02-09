//
//  SettingsRowView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 09/02/2026.
//

import SwiftUI

struct SettingsRowView: View {
    let imageName: String
    let title: String
    let tintColor: Color
    
    var body: some View {
        HStack(spacing: 12){
            Image(systemName: imageName)
                .foregroundColor(tintColor)
                .font(.title)
                .imageScale(.small)
            Text(title)
                .font(.system(size: 16))
                .foregroundColor(Color.black)
        }
    }
}

#Preview {
    SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
}
