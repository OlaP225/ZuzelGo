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
            Text("Siema nigdy nie widziales takiej pieknej strony").foregroundColor(Color.white)
                .font(.largeTitle)
            Button {
                print("BUM")
            } label: {
                MainButtonStyle(title: "NIE KLIKAJ, WYBUCHNIE", backgroundColor: Color.red, textColor: Color.white)
            }
        }
        
        

    }
}

#Preview {
    HomeView()
}
