//
//  LoginModel.swift
//  JSONUIKit
//
//  Created by Nestor Leon mendoza on 22/02/26.
//

import Foundation


struct Login: Decodable {
    var id: Int
    var username: String
    var email: String
    var firstName: String
    var lastName: String
    var gender: String
    var image: String
    var accessToken: String
    var refreshToken: String
}


