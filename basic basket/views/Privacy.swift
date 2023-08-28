//
//  Privacy.swift
//  basic basket
//
//  Created by Ngori Januario on 27/08/23.
//

import SwiftUI

struct Privacy: View {
    var body: some View {
        List {
            Section(header: Text("Privacy Options")) {
                Text("location sharing")
                Text("Activity log")
            }
            Section(header: Text("Payment options")) {
                Text("Manage cards")
                Text("Payment help")
            }
        }
        .navigationTitle("Privacy")
    }
}

struct Privacy_Previews: PreviewProvider {
    static var previews: some View {
        Privacy()
    }
}
