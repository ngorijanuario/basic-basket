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
                        NavigationLink("Notifications", destination: sView())
                        NavigationLink("Privacy", destination: sView())
                    }
                    
                    Section(header: Text("Help")) {
                        NavigationLink("FAQ", destination: sView())
                        NavigationLink("Contact Support", destination: sView())
                    }
                    
                    Section(header: Text("Invite Friends")) {
                        NavigationLink("Invite Friends", destination: sView())
                    }
                }
            }
            .navigationTitle("Account")
        }
    }
}

struct sView: View {
    var body: some View {
        Text("Hello")
    }
}


struct s4_Previews: PreviewProvider {
    static var previews: some View {
        s4()
    }
}
