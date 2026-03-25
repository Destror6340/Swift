//
//  PostModel.swift
//  JSON
//
//  Created by Nestor Leon mendoza on 17/02/26.
//

import Foundation

struct PostModel: Decodable {
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
