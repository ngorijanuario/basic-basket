//
//  Notifications.swift
//  basic basket
//
//  Created by Ngori Januario on 27/08/23.
//

import SwiftUI

struct Notifications: View {
    var body: some View {
        List {
            Section(header: Text("Notification Options")) {
                Text("Option 1")
                Text("Option 2")
            }
        }
        .navigationTitle("Notifications")
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
