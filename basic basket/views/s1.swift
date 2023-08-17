//
//  s1.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//

import SwiftUI

struct s1: View {
    var body: some View {
        ZStack {
            
            Circle()
                .frame(width: 200,height: 200)
                .foregroundColor(.blue)
            Text("\(1)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
        .padding()
    }
}

struct s1_Previews: PreviewProvider {
    static var previews: some View {
        s1()
    }
}
