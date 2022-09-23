//
//  ContentView.swift
//  ContactsListUI
//
//  Created by Elenka on 23.09.2022.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Contacts")
                }
            NumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
