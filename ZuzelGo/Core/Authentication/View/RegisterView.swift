//
//  RegisterView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 01/02/2026.
//

import SwiftUI
import FirebaseAuth

struct RegisterView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack{
            ZStack{
                BackgroundView(topColor: Color.black, bottomColor: Color.blue)
                VStack{
                    LogoTextView()
                        .offset(x: 90)
                        .padding(.vertical, 10)
                    VStack(spacing: 10){
                        Text("Rejestracja")
                            .font(.system(.largeTitle, design: .default))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Text("Stwórz konto, aby rywalizować ze znajomymi i obstawiać biegi!")
                            .font(.system(.body, design: .default))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color(hue: 1.0,
                                                   saturation: 0.0,
                                                   brightness: 0.824))
                            .frame(width: 300)
                    }
                    VStack(spacing: 24){
                        FormInputView(text: $username,
                                      title: "Nazwa użytkownika",
                                      placeholder: "nazwa123")
                        FormInputView(text: $email,
                                      title: "Adres email",
                                      placeholder: "nazwa@przykład.com")
                        .autocapitalization(.none)
                        FormInputView(text: $password,
                                      title: "Hasło",
                                      placeholder: "Wpisz swoje hasło",
                                      isSecure: true)
                        FormInputView(text: $confirmPassword,
                                      title: "Powtórz hasło",
                                      placeholder: "Ponownie wpisz swoje hasło",
                                      isSecure: true)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 30)
                    
                    Spacer()
                    Button {
                        Task {
                            try await viewModel.register(email: email, password: password, username: username)
                        }
                    } label: {
                        MainButtonStyle(title: "Zarejestruj się", backgroundColor: Color(hue: 0.04, saturation: 0.808, brightness: 1.0), textColor: Color.white)
                    }
                    
                    HStack (spacing: 10){
                        Rectangle()
                            .frame(width: 80, height: 2)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 10)
                        Text("lub dołącz z")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.white)
                        Rectangle()
                            .frame(width: 80, height: 2)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 10)
                    } .padding(.top, 10)
                    Spacer()
                    NavigationLink(){
                        LoginView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack{
                            Text("Masz już konto?")
                                .foregroundColor(Color.white)
                            Text("Zaloguj się")
                                .foregroundColor(Color.white)
                                .fontWeight(.heavy)
                        }
                        
                    }
                }
            }
        }

        
        
        
    }
    
    
    
    
    enum FormFieldFocus: Hashable {
        case username, email, emailRepetition, password, passwordRepetition
    }
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}


#Preview {
    RegisterView()
}
