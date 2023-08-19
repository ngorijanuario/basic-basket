//
//  s3.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//

import SwiftUI

import SwiftUI

class Item: Identifiable {
    let id: Int
    let name: String
    let price: Double
    
    init(id: Int, name: String, price: Double) {
        self.id = id
        self.name = name
        self.price = price
    }
}

class CartViewModel: ObservableObject {
    @Published var cartItems: [Item] = []
    
    func addToCart(_ item: Item) {
        cartItems.append(item)
    }
    
    func removeFromCart(_ item: Item) {
        cartItems.removeAll { $0.id == item.id }
    }
    
    var totalPrice: Double {
        cartItems.reduce(0) { $0 + $1.price }
    }
}


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
    let items: [Item] = [
        Item(id: 1, name: "Item A", price: 10.0),
        Item(id: 2, name: "Item B", price: 15.0),
        Item(id: 3, name: "Item C", price: 20.0)
    ]
    
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
