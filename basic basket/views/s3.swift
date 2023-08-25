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
                List {
                    ForEach(cartViewModel.cartItems) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("AOA \(item.price, specifier: "%.2f")")
                            Button(action: {
                                cartViewModel.removeFromCart(item)
                            }) {
                                Text("Remove")
                            }
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle())
                
                Spacer()
                
                Text("Total: AOA \(cartViewModel.totalPrice, specifier: "%.2f")")
                    .font(.headline)
                    .padding()
                if cartViewModel.cartItems.isEmpty == false {
                    Button(action: {
                        // Perform the purchase logic here
                    }) {
                        Text("Complete Purchase")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                            .cornerRadius(10)
                    }
                    .padding()}
            }
            .navigationTitle("Basket")
        }
    }
}

struct s3: View {
    
    @StateObject private var cartViewModel = CartViewModel()
    
    var body: some View {
        VStack{
            CartView(cartViewModel: cartViewModel)
        }
    }
}

struct s3_Previews: PreviewProvider {
    static var previews: some View {
        s3()
    }
}

