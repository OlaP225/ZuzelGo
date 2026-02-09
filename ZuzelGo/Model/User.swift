//
//  User.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 09/02/2026.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    var username: String
    var email: String
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        formatter.style = .abbreviated
        if let components = formatter.personNameComponents(from: username) {
            return formatter.string(from: components)
        }
        return String(username.prefix(2))
    }
    
    
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, username: "Olaaa276", email: "ale@gmail.com")
}

