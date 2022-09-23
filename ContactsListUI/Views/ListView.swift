//
//  ListView.swift
//  ContactsListUI
//
//  Created by Elenka on 23.09.2022.
//

import SwiftUI

struct ListView: View {
    let title: String
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(contacts) { contact in
                    NavigationLink(destination: DetailsView(contact: contact)) {
                        Text(contact.fullName)
                    }
                }
                .navigationTitle(title)
                .listStyle(.plain)
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(title: "Contacts", contacts: Person.getContactList())
    }
}
