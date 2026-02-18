//
//  WelcomeView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 01/02/2026.
//

import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        
        ZStack (alignment: .topTrailing){
            BackgroundView(topColor: Color.black, bottomColor: Color.blue)
            LogoTextView()
                .padding(.top, 15)
                .padding(.trailing, 30)

            VStack {
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
                    Task {
                        try await viewModel.logInAsAGuest()
                    }
                    
                } label: {
                    MainButtonStyle(title: "Dołącz jako gość",
                                    backgroundColor: Color(hue: 0.04, saturation: 0.808, brightness: 1.0),
                                    textColor: Color.black)
                }
                
                NavigationLink {
                    RegisterView()
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

struct LogoTextView: View {
    var body: some View {
        Text("ŻużelGo")
            .font(.system(.largeTitle, design: .monospaced))
            .foregroundColor(Color.white)
    }
}

