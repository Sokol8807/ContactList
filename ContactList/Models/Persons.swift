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
        
        [
            Persons(name: "Alberto", surname: "Ruiz", phone: "+79950991121", email: "1okol@mail.ru"),
            Persons(name: "Dave", surname: "Wincent", phone: "+79950991122", email: "2okol@mail.ru"),
            Persons(name: "Bob", surname: "Dilan", phone: "+79950991123", email: "3okol@mail.ru"),
            Persons(name: "Edna", surname: " Ann", phone: "+79950991124", email: "4okol@mail.ru"),
            Persons(name: "Ilija", surname: "Djokovic", phone: "+79950991126", email: "5okol@mail.ru"),
            Persons(name: "John", surname: "Baptiste", phone: "+79950991127", email: "6okol@mail.ru"),
            Persons(name: "Vovka", surname: "Durov", phone: "+79950991128", email: "7okol@mail.ru"),
            Persons(name: "Mac", surname: "Vaughn ", phone: "+79950991125", email: "8okol@mail.ru"),
            Persons(name: "Metodi", surname: "Gallya", phone: "+79950991125", email: "9okol@mail.ru"),
            Persons(name: "Veerus", surname: "Nightmare", phone: "+79950991125", email: "0okol@mail.ru")
        ]
    }
}
