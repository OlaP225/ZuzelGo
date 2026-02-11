

import Foundation

struct Player: Identifiable, Equatable {
    let id = UUID()
    var firstName: String
    var lastName: String
    var imageName: String
}
