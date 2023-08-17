//
//  AllScreens.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//

import SwiftUI

struct AllScreens: View {
    var body: some View {
        TabView{
            s1()
                .tabItem{
                    Image(systemName: "list.clipboard.fill")
                    Text("Marketplace")
                }
            s2()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            s3()
                .tabItem{
                    Image(systemName: "basket.fill")
                    Text("Basket")
                }
            s4()
                .tabItem{
                    Image(systemName: "person")
                    Text("My profile")
                }
            
        }
        .accentColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
    }
}

struct AllScreens_Previews: PreviewProvider {
    static var previews: some View {
        AllScreens()
    }
}
