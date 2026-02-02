//
//  WelcomeView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 01/02/2026.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        ZStack{
            BackgroundView(topColor: Color.gray, bottomColor: Color.black)

            VStack {
                HStack {
                    Spacer(minLength: 200)
                    LogoTextView()
                    Spacer(minLength: 10)
                }
                Spacer()
                Spacer()
                Image("transport")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                Spacer()
                VStack(spacing: 10) {
                    Text("Odkryj żużel!")
                        .font(.system(.largeTitle, design: .monospaced))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Text("Rywalizuj ze znajomymi, obstawiaj biegi i baw się!")
                        .font(.system(.body, design: .monospaced))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: 300)
                        .foregroundStyle(Color(hue: 1.0,
                                               saturation: 0.0,
                                               brightness: 0.824))
                }
                Spacer()
                
                Button {
                    
                } label: {
                    MainButtonStyle(title: "Dołącz jako gość",
                                    backgroundColor: Color(hue: 0.04, saturation: 0.808, brightness: 1.0),
                                    textColor: Color.black)
                }
                
                Button {
                    
                } label: {
                    MainButtonStyle(title: "Zaloguj/Zarejestruj się",
                                    backgroundColor: Color.white,
                                    textColor: Color.black)
                }
                
                Spacer()
                Spacer()
            }
            .padding()
            
        }
    }
}


#Preview {
    WelcomeView()
}

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

struct LogoTextView: View {
    var body: some View {
        Text("ŻużelGo")
            .font(.system(.largeTitle, design: .monospaced))
            .foregroundColor(Color.white)
    }
}

