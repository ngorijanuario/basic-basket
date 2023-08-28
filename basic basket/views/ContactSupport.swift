//
//  ContactSupport.swift
//  basic basket
//
//  Created by Ngori Januario on 27/08/23.
//

import SwiftUI

struct ContactSupport: View {
    var body: some View {
        List {
            Section(header: Text("Contact Support Options")) {
                Text("Ticket Updates")
                Text("Response Times")
                Text("Live Chat Availability")
                Text("Resolution Notifications")
                Text("Feedback Requests")
            }
        }
        .navigationTitle("Contact Support")
    }
}

struct ContactSupport_Previews: PreviewProvider {
    static var previews: some View {
        ContactSupport()
    }
}
