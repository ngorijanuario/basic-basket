//
//  InviteFriends.swift
//  basic basket
//
//  Created by Ngori Januario on 27/08/23.
//

import SwiftUI

struct InviteFriends: View {
    var body: some View {
        List {
            Section(header: Text("Invite Friends Options")) {
                Text("Share link")
                Text("Share QRcode")
            }
        }
        .navigationTitle("Invite Friends")
    }
}
struct InviteFriends_Previews: PreviewProvider {
    static var previews: some View {
        InviteFriends()
    }
}
