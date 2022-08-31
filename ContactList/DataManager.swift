//
//  DataManager.swift
//  ContactList
//
//  Created by Ilya Sokolov on 31.08.2022.
//

import Foundation

final class DataManager {
    let name: [String]
    let surname: [String]
    let phone: [String]
    let email: [String]
    
    init(name:[String], surname: [String], phone: [String], email: [String]){
        self.name = name
        self.surname = surname
        self.phone = phone
        self.email = email
    }
}

let personData = DataManager(name: ["Anna", "Alex", "Denis", "Yra", "Bob"],
                                    surname: ["Black", "Fox","Stone", "Solov","Crime"],
                                    phone: ["+79558184871", "+79558184871",
                                            "+79558184871", "+79558184871", "+79558184871"],
                             email: ["sad@mail.ru", "cool@mail.ru", "good@mail.ru"
                                     , "black@mail.ru", "first@mail.ru" ])
