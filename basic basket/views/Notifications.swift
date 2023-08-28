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
                Text("Order Updates")
                Text("Promotions and Deals")
                Text("Stock Availability")
                Text("Price Drop Alerts")
                Text("New Product Arrivals")
                Text("Account Activity")
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
