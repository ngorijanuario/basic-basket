//
//  s3.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//

import SwiftUI

struct s3: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                Circle()
                    .frame(width: 200,height: 200)
                    .foregroundColor(.blue)
                Text("\(3)")
                    .foregroundColor(.white)
                    .font(.system(size: 70, weight: .bold))
            }.navigationTitle("Search food")
            .padding()
        }
    }
}

struct s3_Previews: PreviewProvider {
    static var previews: some View {
        s3()
    }
}
