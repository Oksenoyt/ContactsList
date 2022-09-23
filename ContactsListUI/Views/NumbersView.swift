//
//  NumbersView.swift
//  ContactsListUI
//
//  Created by Elenka on 23.09.2022.
//

import SwiftUI

struct NumbersView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(header: Text(contact.fullName)) {
                    ContactInfoView(info: contact.phoneNumber, icon: "phone")
                    ContactInfoView(info: contact.email, icon: "mail")
                }
            }
            .navigationTitle("Numbers")
            .listStyle(.plain)
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Person.getContactList())
    }
}
