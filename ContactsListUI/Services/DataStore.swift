//
//  File.swift
//  ContactsListUI
//
//  Created by Elenka on 23.09.2022.
//

import Foundation

class DataStore {
    static let shared = DataStore()
    
    var firstNames = [
            "Emily", "Taylor", "Kaitlyn",
            "Brianna", "Sarah", "Alexis",
            "Alissa", "Ashley"
        ]
        
        var secondNames = [
            "Abramson", "James", "Aldridge",
            "Jeff", "Hoggarth", "Babcock",
            "Leman", "Mercer"
        ]
        
        var emails = [
            "1@gmail.com", "2@gmail.com", "3@gmail.com",
            "4@gmail.com", "5@gmail.com", "6@gmail.com",
            "7@gmail.com", "8@gmail.com"
        ]
        
        var phoneNumbers = [
            "+79139219351", "+79132319352", "+79139459353",
            "+79133519354", "+79135319355", "+79131219356",
            "+73239219357", "+74339219358"
        ]
        
        private init() {}
}

class PersonManager {
    static let shared = PersonManager()
    let dataStore = DataStore.shared
    
    private init() {}
    
    func addPerson(firstName: String, secondName:String, email: String, phoneNumber: String) {
        if !dataStore.emails.contains(email) {
            dataStore.firstNames.append(firstName)
            dataStore.secondNames.append(secondName)
            dataStore.emails.append(email)
            dataStore.phoneNumbers.append(phoneNumber)
            print("Person: \(firstName) \(secondName) was added \n")
        }
        print("Person: \(firstName) \(secondName) has already available \n")
    }
}
