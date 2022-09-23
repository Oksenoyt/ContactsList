//
//  SwiftUIView.swift
//  ContactsListUI
//
//  Created by Elenka on 23.09.2022.
//

import SwiftUI

struct ContactInfoView: View {
    let info: String
    let icon: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: icon)
                .foregroundColor(.blue)
            Text(info)
            Spacer()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(info: Person.getContactList()[0].phoneNumber, icon: "phone")
    }
}
