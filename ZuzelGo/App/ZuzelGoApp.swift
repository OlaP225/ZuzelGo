//
//  ZuzelGoApp.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 28/01/2026.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct ZuzelGoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            RegisterView()
//            ContentView()
//            TabView{
//                HomeView()
//                RankingView()
//                TeamView()
//            } //TabView
        }
    }
}



