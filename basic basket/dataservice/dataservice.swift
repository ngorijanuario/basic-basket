//
//  dataservice.swift
//  basic basket
//
//  Created by Ngori Januario on 20/08/23.
//

import Foundation

class dataservice{
    
    let categories = ["All features", "Vegetables", "Meat", "fish"]
    
    let products: [Product] = [
        Product(name: "Sugar", category: "All features", imageName: "açucar", price: 600.00),
        Product(name: "Chicken", category: "Meat", imageName: "frango", price: 800.00),
        Product(name: "Corn meal", category: "All features", imageName: "fuba", price: 250.08),
        // ... adicione mais produtos aqui
    ]
    
    
    
}
