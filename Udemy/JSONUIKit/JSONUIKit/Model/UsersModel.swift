//
//  UsersModel.swift
//  JSONUIKit
//
//  Created by Nestor Leon mendoza on 22/02/26.
//

import Foundation

struct Users: Decodable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Decodable {
    var id: Int
    var firstName: String
    var lastName: String
    var maidenName: String?
    var age: Int
    var gender: String
    var email: String
    var phone: String
    var username: String
    var password: String
    var birthDate: String
    var image: String
    var bloodGroup: String
    var height: Float
    var weight: Float
    var eyeColor: String
    var hair: hair
}

struct hair: Decodable {
    var color: String
    var type: String
}
