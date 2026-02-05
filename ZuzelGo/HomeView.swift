//
//  HomeView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 05/02/2026.
//

import SwiftUI
import FirebaseAuth

struct HomeView: View {
    var body: some View {
        
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).foregroundColor(Color.red)
            Button {
                do {
                    try Auth.auth().signOut()
                    print("WYlogowano")
                } catch let error {
                    print(error.localizedDescription)
                }
            } label: {
                MainButtonStyle(title: "WYloguj", backgroundColor: Color.purple, textColor: Color.white)
            }
        }
        
        

    }
}

#Preview {
    HomeView()
}
