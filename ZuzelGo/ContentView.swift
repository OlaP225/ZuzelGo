//
//  ContentView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 28/01/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Text("ŻużelGo")
                    .font(.system(.largeTitle, design: .monospaced))
                    .foregroundColor(Color.white)
                Spacer()
            }
            Spacer()
            Spacer()
            Image("transport")
                .resizable()
                .frame(width: 100, height: 100)
            Spacer()
            Text("Odkryj żużel!")
                .font(.system(.largeTitle, design: .monospaced))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            Spacer()
            Text("Rywalizuj ze znajomymi, obstawiaj biegi i baw się!")
                .font(.system(.body, design: .monospaced))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .foregroundStyle(Color(hue: 1.0, saturation: 0.0, brightness: 0.824))
            Spacer()
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
        .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.154))
    }
}

func guestEnter() {
    
}

func memberEnter() {
    
}


#Preview {
    ContentView()
}
