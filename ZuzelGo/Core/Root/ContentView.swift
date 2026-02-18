//
//  ContentView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 28/01/2026.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack{
            Group {
                if viewModel.userSession != nil {
                    
                    TabView {
                        HomeView()
                            .tabItem {
                                Image(systemName: "house")
                                Text("mecze")
                            }
                        VotingView()
                            .tabItem {
                                Image(systemName: "flag.pattern.checkered.2.crossed")
                                Text("głosowanie")
                            }
                        SettingsView()
                            .tabItem {
                                Image(systemName: "gearshape")
                                Text("ustawienia")
                            }
                        
                        
                    }
                    
                } else {
                    WelcomeView()
                }
            }
        }
    }
}


#Preview {
    ContentView()
}

