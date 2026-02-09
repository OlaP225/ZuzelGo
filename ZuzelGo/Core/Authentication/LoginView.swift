//
//  LoginView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 01/02/2026.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            ZStack{
                BackgroundView(topColor: Color.black, bottomColor: Color.blue)
                VStack{
                    LogoTextView()
                        .offset(x: 90)
                        .padding(.vertical, 10)
                    VStack(spacing: 10){
                        Text("Logowanie")
                            .font(.system(.largeTitle, design: .default))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Text("Zaloguj się, aby rywalizować ze znajomymi i obstawiać biegi!")
                            .font(.system(.body, design: .default))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color(hue: 1.0,
                                                   saturation: 0.0,
                                                   brightness: 0.824))
                            .frame(width: 300)
                    }
                    VStack(spacing: 24){
                        FormInputView(text: $email,
                                      title: "Adres email",
                                      placeholder: "nazwa@przykład.com")
                        .autocapitalization(.none)
                        FormInputView(text: $password,
                                      title: "Hasło",
                                      placeholder: "Wpisz swoje hasło",
                                      isSecure: true)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 30)
                    
                    Spacer()
                    Button {
                        //singIn
                    } label: {
                        MainButtonStyle(title: "Zaloguj się", backgroundColor: Color(hue: 0.04, saturation: 0.808, brightness: 1.0), textColor: Color.white)
                    }
                    
                    HStack (spacing: 10){
                        Rectangle()
                            .frame(width: 80, height: 2)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 10)
                        Text("lub zaloguj z")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.white)
                        Rectangle()
                            .frame(width: 80, height: 2)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 10)
                    } .padding(.top, 10)
                    Spacer()
                    Button(){
                        dismiss()
                    } label: {
                        HStack{
                            Text("Nie masz jeszcze konta?")
                                .foregroundColor(Color.white)
                            Text("Zarejestruj się")
                                .foregroundColor(Color.white)
                                .fontWeight(.heavy)
                        }
                        
                    }
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
