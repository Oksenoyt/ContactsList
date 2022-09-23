//
//  Person.swift
//  ContactsListUI
//
//  Created by Elenka on 23.09.2022.
//

import Foundation

struct Person: Identifiable {
    
    let id: Int
    let firstName: String
    let secondName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let firstNames = DataStore.shared.firstNames.shuffled()
        let secondNames = DataStore.shared.secondNames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        
        let iterationCount = min(
            firstNames.count,
            secondNames.count,
            emails.count,
            phoneNumbers.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                id: index,
                firstName: firstNames[index],
                secondName: secondNames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
