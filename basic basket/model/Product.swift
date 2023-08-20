//
//  Product.swift
//  basic basket
//
//  Created by Ngori Januario on 20/08/23.
//

import Foundation

struct Product: Identifiable {
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
