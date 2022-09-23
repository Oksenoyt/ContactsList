//
//  Contacts.swift
//  ContactsListUI
//
//  Created by Elenka on 23.09.2022.
//

import SwiftUI

struct ContactsView: View {
    let contacts: [Person]
    
    var body: some View {
        ListView(title: "Contacts", contacts: contacts)
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: Person.getContactList())
    }
}
