//
//  MainButton.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 30/01/2026.
//

import Foundation
import SwiftUI

struct MainButtonStyle: View {
    var title: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Text(title)
            .foregroundColor(textColor)
            .font(.system(.headline, design: .monospaced))
            .fontWeight(.bold)
            .frame(width: UIScreen.main.bounds.width * 0.9, height: 50, alignment: .center)
            .background(backgroundColor.gradient)
            .cornerRadius(15)
    }
}
