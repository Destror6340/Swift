//  user.swift
//  primerapp
//
//  Created by alumno on 31/01/23.
//

import Foundation

struct user{
    let name: String
    let email: String
    let phone: String
    let edad: Int
    init(name: String, email: String, phone: String, edad: Int) {
        self.name = name
        self.email = email
        self.phone = phone
        self.edad = edad
    }
}
