//
//  AllScreens.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//

import SwiftUI

struct AllScreens: View {
    @StateObject private var cartViewModel = CartViewModel()
    
    var body: some View {
        TabView{
            s1(cartViewModel: cartViewModel)
                .tabItem {
                    Label("Marketplace", systemImage: "list.clipboard.fill")
                }
            s2()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            CartView(cartViewModel: cartViewModel)
                .tabItem {
                    Label("Basket", systemImage: "basket")
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
