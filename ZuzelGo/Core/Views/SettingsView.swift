//
//  SettingsView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 08/02/2026.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            Section{
                HStack{
                    Text(User.MOCK_USER.initials)
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .frame(width: 72, height: 72)
                        .background(Color.gray)
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text("Aleksandra Plichta")
                            .font(.system(size: 17))
                            .fontWeight(.semibold)
                        Text("ola.22@gmail.com")
                            .accentColor(Color.black)
                            .font(.system(size: 16))
                    }
                }
            }
            Section("Ogólne"){
                HStack{
                    SettingsRowView(imageName: "gear",
                                    title: "Wersja",
                                    tintColor: Color(.systemGray))
                    Spacer()
                    Text("1.0.0")
                        .font(.system(size: 16))
                        .foregroundColor(Color.gray)
                }
            
            }
            Section("Konto"){
                
                Button {
                    // sign out
                } label: {
                    SettingsRowView(imageName: "arrow.left.circle.fill", title: "Wyloguj", tintColor: Color(.systemRed))
                }
                
                Button {
                    // delete account
                } label: {
                    SettingsRowView(imageName: "x.circle.fill", title: "Usuń konto", tintColor: Color(.systemRed))
                }
                
            }
        }
    }
}

#Preview {
    SettingsView()
}
