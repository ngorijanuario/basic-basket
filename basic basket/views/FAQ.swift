//
//  FAQ.swift
//  basic basket
//
//  Created by Ngori Januario on 27/08/23.
//

import SwiftUI

struct FAQ: View {
    var body: some View {
        List {
            Section(header: Text("FAQ Options")) {
                Text("New FAQ Entries")
                Text("FAQ Updates")
                Text("Answered Questions")
                Text("Popular FAQs")
                Text("FAQ Feedback")
            }
        }
        .navigationTitle("FAQ")
    }
}
struct FAQ_Previews: PreviewProvider {
    static var previews: some View {
        FAQ()
    }
}
