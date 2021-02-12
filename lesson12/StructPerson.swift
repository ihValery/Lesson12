//
//  StructPerson.swift
//  lesson12
//
//  Created by Валерий Игнатьев on 12.02.2021.
//

import Foundation

struct Person {
    
    let name: String
    let surName: String
    let email: String
    let phoneNumber: String
    
    static func createRandomPerson() -> [Person] {
        var personS: [Person] = []
        
        let iName = DataPerson.sharedInstance.name
        let iSurName = DataPerson.sharedInstance.surName
        let iEmail = DataPerson.sharedInstance.email
        let iPhoneNumber = DataPerson.sharedInstance.phoneNumber
        
        for index in 0..<iName.count {
            let onePerson = Person(name: iName[index],
                                   surName: iSurName[index],
                                   email: iEmail[index],
                                   phoneNumber: iPhoneNumber[index])
            personS.append(onePerson)
        }
        return personS
    }
}
