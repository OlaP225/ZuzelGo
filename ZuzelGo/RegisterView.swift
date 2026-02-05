//
//  RegisterView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 01/02/2026.
//

import SwiftUI
import FirebaseAuth

struct RegisterView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var emailRepetition: String = ""
    @State private var password: String = ""
    @State private var passwordRepetition: String = ""
    @FocusState private var focus: FormFieldFocus?
    @State var userIsLoggedIn: Bool = false
    
    var body: some View {
        if userIsLoggedIn {
            HomeView()
        } else {
            content
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
    var content: some View {
        ZStack {
            BackgroundView(topColor: Color.black, bottomColor: Color.blue)
            ScrollView {
                VStack (spacing:20) {
                    Text("Rejestracja")
                        .font(.system(.largeTitle, design: .monospaced))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Text("Stwórz konto, aby rywalizować ze znajomymi i obstawiać biegi!")
                        .font(.system(.body, design: .monospaced))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color(hue: 1.0,
                                               saturation: 0.0,
                                               brightness: 0.824))
                    
                    TextFieldView(fieldTitle: "nazwa użytkownika", fieldValue: $username)
                        .focused($focus, equals: .username)
                        .onSubmit {
                            focus = .email
                        }
                        .padding(.top, 30)
            
                    TextFieldView(fieldTitle: "adres email", fieldValue: $email)
                        .onSubmit {
                            focus = .emailRepetition
                        }
                        .focused($focus, equals: .email)
                    
                    TextFieldView(fieldTitle: "powtórz adres email",
                                  fieldValue: $emailRepetition)
                    .onSubmit {
                        focus = .password
                    }
                    .focused($focus, equals: .emailRepetition)
                    
                    TextFieldView(fieldTitle: "hasło", fieldValue: $password, isSecure: true)
                        .onSubmit {
                            focus = .passwordRepetition
                        }
                        .focused($focus, equals: .password)
                    
                    TextFieldView(fieldTitle: "powtórz hasło", fieldValue: $passwordRepetition, isSecure: true)
                        .onSubmit {
                        }
                        .focused($focus, equals: .passwordRepetition)
                    Button{
                        register()
                    } label: {
                        MainButtonStyle(title: "Zarejestruj",
                                        backgroundColor: Color(hue: 0.04, saturation: 0.808, brightness: 1.0),
                                        textColor: Color.white)
                        .padding(.top, 30)
                    }
                    
                    HStack (spacing: 10){
                        Rectangle()
                            .frame(width: 80, height: 3)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 10)
                        Text("lub dołącz z")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.white)
                        Rectangle()
                            .frame(width: 80, height: 3)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 10)
                    } .padding(.top, 10)
                    
                } .offset(y: 120)
                    .onAppear{
                        focus = .username
                        print(userIsLoggedIn)
                        Auth.auth().addStateDidChangeListener { auth, user in
                            if user != nil {
                                userIsLoggedIn = true
                            }
                        }
                    }
            }
            
            
            
            
        }.overlay(alignment: .topTrailing) {
            LogoTextView()
                .padding(.top, 15)
                .padding(.trailing, 30)
        }
    }
}


struct TextFieldView: View {
    var fieldTitle: String
    var fieldValue: Binding<String>
    var isSecure: Bool = false
    
    var body: some View {
        
        Group {
            if isSecure {
                SecureField("", text: fieldValue, prompt: Text(fieldTitle).foregroundColor(Color.gray))
            } else {
                TextField("", text: fieldValue, prompt: Text(fieldTitle).foregroundColor(Color.gray))
            }
        }
        .textFieldStyle(.plain)
        .padding(.all, 5.0)
        .background(Color.black)
        .cornerRadius(8)
        .font(.system(size: 18, weight: .medium, design: .monospaced))
        .autocorrectionDisabled()
        .padding(.horizontal, 40)
        
        
            
                
        }
    }


#Preview {
    RegisterView()
}
