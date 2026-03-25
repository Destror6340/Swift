import Foundation

struct User : Decodable {
    let id : Int?
    let name : String?
    let age : String?
    let email : String?
    let pass : String?
}

struct MenuItem {
    let name: String
    let description: String
    let price: Double
}



