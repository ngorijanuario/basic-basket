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
                        NavigationLink("Notifications", destination: Notifications())
                        NavigationLink("Privacy", destination: Privacy())
                    }
                    
                    Section(header: Text("Help")) {
                        NavigationLink("FAQ", destination: FAQ())
                        NavigationLink("Contact Support", destination: ContactSupport())
                    }
                    
                    Section(header: Text("Invite Friends")) {
                        NavigationLink("Invite Friends", destination: InviteFriends())
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
