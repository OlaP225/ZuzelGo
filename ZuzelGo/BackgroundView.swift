//
//  BackgroundView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 02/02/2026.
//
import Foundation
import SwiftUI

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [bottomColor, topColor]),
                       startPoint: .bottomTrailing,
                       endPoint: .topLeading)
        .ignoresSafeArea()
//        ContainerRelativeShape()
//            .fill(Color.black.gradient)
//            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView(topColor: Color.black, bottomColor: Color.blue)
}
