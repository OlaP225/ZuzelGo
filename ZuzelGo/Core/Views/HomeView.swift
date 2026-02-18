//
//  HomeView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 05/02/2026.
//

import SwiftUI
import FirebaseAuth

struct HomeView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        
        ZStack {
            BackgroundView(topColor: Color.black, bottomColor: Color.blue)
            VStack {
                ZStack {
                    BackgroundView(topColor: Color.black, bottomColor: Color.black)
                    HStack {
                        ZStack {
                            Rectangle()
                                .fill(Color(.systemGray4))
                                .frame(width: 70, height: 70)
                                .clipShape(.capsule)
                            Image(systemName: "person.fill")
                                .font(.system(size: 50))
                        }
                        Text("Hej \(authViewModel.currentUser?.username ?? "Gościu")!")
                            .font(.title)
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                        Spacer()
                        Image(systemName: "trophy.circle.fill")
                            .foregroundStyle(Color.yellow)
                            .font(.system(size: 40))
                        Text("260")
                            .foregroundColor(Color.yellow)
                            .font(.title)
                        
                        
                        
                        
                    }
                    .padding()

                }
                .frame(height: 100)// upper panel
            Spacer()
            }

        }
        
        

    }
}

#Preview {
    HomeView()
        .environmentObject(AuthViewModel())
}
