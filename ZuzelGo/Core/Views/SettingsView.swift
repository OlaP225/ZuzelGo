//
//  SettingsView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 08/02/2026.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        if let user = viewModel.currentUser {
            List{
                Section{
                    HStack{
                        Text(user.initials)
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .frame(width: 72, height: 72)
                            .background(Color.gray)
                            .clipShape(Circle())
                        VStack(alignment: .leading){
                            Text(user.username)
                                .font(.system(size: 17))
                                .fontWeight(.semibold)
                            Text(user.email)
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
                        viewModel.deleteAccount()
                    } label: {
                        SettingsRowView(imageName: "arrow.left.circle.fill", title: "Wyloguj", tintColor: Color(.systemRed))
                    }
                    
                    Button {
                        viewModel.deleteAccount()
                    } label: {
                        SettingsRowView(imageName: "x.circle.fill", title: "Usuń konto", tintColor: Color(.systemRed))
                    }
                    
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
