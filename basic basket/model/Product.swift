//
//  Product.swift
//  basic basket
//
//  Created by Ngori Januario on 20/08/23.
//

import Foundation

struct Product: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let category: String
    let imageName: String
    let price: Double
}

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
    @Published var cartItems: [Product] = []
    
    // Add product to the cart
    func addProduct(_ product: Product) {
        cartItems.append(product)
    }
    
    // Remove product from the cart
    func removeFromCart(_ product: Product) {
        if let index = cartItems.firstIndex(of: product) {
            cartItems.remove(at: index)
        }
    }
    
    // Calculate the total price of items in the cart
    var totalPrice: Double {
        cartItems.reduce(0.0) { $0 + $1.price }
    }
}
