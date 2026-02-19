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
                                .frame(width: 50, height: 50)
                                .clipShape(.capsule)
                            Image(systemName: "person.fill")
                                .font(.system(size: 30))
                        }
                        .padding(.leading, 15)
                        Text("Hej \(authViewModel.currentUser?.username ?? "Gościu")!")
                            .font(.title)
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                        Spacer()
                        Image(systemName: "trophy.circle.fill")
                            .foregroundStyle(Color.yellow)
                            .font(.system(size: 30))
                        Text("260")
                            .font(.system(size: 20))
                            .foregroundColor(Color.yellow)
                            .font(.title)
                            
                        
                        
                        
                        
                    }
                    .padding()

                }
                .frame(height: 70)// upper panel
                Text("Mecz zaraz się zacznie!")
                    .font(.system(size: 25, weight: .semibold))
                    .foregroundColor(.white)
                    .padding()
                    
                MatchView(matchDate: "Piątek 03.04", countdown: "01:59", homeTeam: "WROCŁAW", awayTeam: "GRUDZIĄDZ", backgroundColor: .thinMaterial)
                Text("Nadchodzące mecze ")
                    .font(.system(size: 25, weight: .semibold))
                    .foregroundColor(.white)
                    .padding()
                    
                Spacer()
            }

        }
        
        

    }
}

#Preview {
    HomeView()
        .environmentObject(AuthViewModel())
}
