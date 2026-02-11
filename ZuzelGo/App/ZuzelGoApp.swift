//
//  ZuzelGoApp.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 28/01/2026.
//

import SwiftUI
import Firebase

@main
struct ZuzelGoApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
 //           RegisterView()
            ContentView()
                .environmentObject(viewModel)
//            TabView{
//                HomeView()
//                RankingView()
//                TeamView()
//            } //TabView
        }
    }
}



