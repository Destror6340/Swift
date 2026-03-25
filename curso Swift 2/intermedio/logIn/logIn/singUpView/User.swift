//
//  User.swift
//  logIn
//  Created by alumno on 01/08/23.

import Foundation

struct User {
    var name: String
    var lastName: String
    var phone: String
    var age: Int
    
    init(name: String, lastName: String, phone: String, age: Int) {
        self.name = name
        self.lastName = lastName
        self.phone = phone
        self.age = age
    }
}
