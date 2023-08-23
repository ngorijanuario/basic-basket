//
//  s4.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//
import SwiftUI
struct s4: View {
    var body: some View {
        NavigationView {
            VStack{
                Form {
                    Section(header: Text("Personal Data")) {
                        Text("Name: Ngori")
                        Text("Email: ngori@google.com")
                    }
                    
                    Section(header: Text("Settings")) {
                        Text("Notifications")
                        Text("Privacy")
                    }
                    
                    Section(header: Text("Help")) {
                        Text("FAQ")
                        Text("Contact Support")
                    }
                    
                    Section(header: Text("Invite Friends")) {
                        Text("Invite Friends")
                    }
                }
            }
            .navigationTitle("Account")
        }
    }
}

struct s4_Previews: PreviewProvider {
    static var previews: some View {
        s4()
    }
}
