//
//  MatchView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 19/02/2026.
//

import SwiftUI

struct MatchView: View {
    let matchDate: String
    let countdown: String
    let homeTeam: String
    let awayTeam: String
    let backgroundColor: Material
    let height: CGFloat = UIScreen.main.bounds.height * 0.2
    let width: CGFloat = UIScreen.main.bounds.width * 0.9
    
    var body: some View {
        ZStack {
            if #available(iOS 26.0, *) {
                Rectangle()
                    .fill(backgroundColor)
                    .frame(width: width, height: height)
                    .cornerRadius(30)
                VStack {
                    HStack {
                        Text(matchDate)
                            .foregroundColor(Color.black)
                            .font(.system(size: 16, weight: .heavy))
                        //                        .shadow(radius: 1)
                            .padding(.leading, 50)
                        Spacer()
                        Text("start za \(countdown)")
                            .font(.system(size: 16, weight: .medium))
                            .frame(width: 120, height: 25)
                            .background(.thickMaterial)
                            .cornerRadius(30)
                            .padding(.trailing, 30)
                    }
                    Text("\(homeTeam) VS \(awayTeam)")
                        .font(.system(size: 22, weight: .black))
                        .shadow(color: .black, radius: 1)
                        .foregroundColor(.white)
                        .padding(.all, 9)
                    Button {
                        // go to VotingView
                        
                    } label: {
                        Text("Zagraj teraz")
                            .foregroundColor(.white)
                            .font(.system(.headline, design: .monospaced))
                            .fontWeight(.bold)
                            .frame(width: UIScreen.main.bounds.width * 0.7, height: 50, alignment: .center)
                            .background(.black)
                            .cornerRadius(15)
                    }
                    
                }
                .frame(width: width, height: height)
            }
        }
    }
}

#Preview {
    MatchView(matchDate: "Piątek 03.04", countdown: "01:59", homeTeam: "WROCŁAW", awayTeam: "GRUDZIĄDZ", backgroundColor: .thickMaterial)
}
