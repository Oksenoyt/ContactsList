//
//  DetailsView.swift
//  ContactsListUI
//
//  Created by Elenka on 23.09.2022.
//

import SwiftUI

struct DetailsView: View {
    let contact: Person
    
    var body: some View {
        ZStack {
            Color.gray
                .opacity(0.2)
                .ignoresSafeArea()
            VStack {
                List {
                    HStack {
                        Spacer()
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .padding()
                        Spacer()
                    }
                    ContactInfoView(info: contact.phoneNumber, icon: "phone")
                    ContactInfoView(info: contact.email, icon: "mail")
                }
            }
            .navigationTitle(contact.fullName)
            .scrollContentBackground(.hidden)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(contact: Person.getContactList()[0])
    }
}
