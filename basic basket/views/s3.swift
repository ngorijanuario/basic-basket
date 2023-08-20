//
//  s3.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//

import SwiftUI

struct CartView: View {
    @ObservedObject var cartViewModel: CartViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                
                List(cartViewModel.cartItems) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text("AOA\(item.price, specifier: "%.2f")")
                        Button(action: {
                            cartViewModel.removeFromCart(item)
                        }) {
                            Text("Remove")
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle())
                
                Spacer()
                
                Text("Total: AOA \(cartViewModel.totalPrice, specifier: "%.2f")")
                    .font(.headline)
                    .padding()
            }
            .navigationTitle("Basket")
        }
    }
}

struct s3: View {
    
    @StateObject private var cartViewModel = CartViewModel()
    
    var body: some View {
        TabView {
            
            CartView(cartViewModel: cartViewModel)
        }
    }
}

struct s3_Previews: PreviewProvider {
    static var previews: some View {
        s3()
    }
}
