//
//  Persons.swift
//  ContactList
//
//  Created by Ilya Sokolov on 30.08.2022.
//

import Foundation

struct Persons {
    let name: String
    let surname: String
    let phone: String
    let email: String
}

extension Persons {
    static func getPerson() -> [Persons] {
        var persons: [Persons] = []
        let names = personData.name.shuffled()
        let surnames = personData.surname.shuffled()
        let phone = personData.phone.shuffled()
        let emails = personData.email.shuffled()
        
        for index in 0..<names.count {
            let person = Persons(name: names[index], surname: surnames[index], phone: phone[index], email: emails[index])
            persons.append(person)
        }
        return persons
    }
}
