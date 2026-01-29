//
//  ContentView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 28/01/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray]),
                           startPoint: .bottomTrailing,
                           endPoint: .topLeading)
                .ignoresSafeArea(.all)

            VStack {
                HStack {
                    Spacer(minLength: 200)
                    Text("ŻużelGo")
                        .font(.system(.largeTitle, design: .monospaced))
                        .foregroundColor(Color.white)
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


                Button(action: guestEnter){
                    Text("Dołącz jako gość")
                        .foregroundColor(Color.black)
                        .font(.system(.headline, design: .monospaced))
                        .fontWeight(.bold)
                }
                .frame(width: UIScreen.main.bounds.width * 0.9, height: 50, alignment: .center)
                .background(Color(hue: 0.04, saturation: 0.808, brightness: 1.0))
                .cornerRadius(15)

                Button(action: memberEnter){
                    Text("Zaloguj/Zarejestruj się")
                        .foregroundColor(Color.black)
                        .font(.system(.headline, design: .monospaced))
                        .fontWeight(.bold)
                }
                .frame(width: UIScreen.main.bounds.width * 0.9, height: 50, alignment: .center)
                .background(Color.white)
                .cornerRadius(15)
                Spacer()
                Spacer()
            }
            .padding()
            
        }
    }
}

func guestEnter() {
    
}

func memberEnter() {
    
}


#Preview {
    ContentView()
}
