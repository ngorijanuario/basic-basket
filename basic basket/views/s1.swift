//
//  s1.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//

import SwiftUI


struct Product: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let imageName: String
    let price: Double
}

class CartItem: Identifiable {
    let id = UUID()
    let product: Product
    var quantity: Int
    
    init(product: Product, quantity: Int) {
        self.product = product
        self.quantity = quantity
    }
}

class Cart: ObservableObject {
    @Published var items: [CartItem] = []
    
    func addItem(_ product: Product) {
        if let existingItemIndex = items.firstIndex(where: { $0.product.id == product.id }) {
            items[existingItemIndex].quantity += 1
        } else {
            items.append(CartItem(product: product, quantity: 1))
        }
    }
}

struct s1: View {
    
    
    
    @State private var searchText = ""
    @State private var selectedCategory = "All features"
    @StateObject private var cart = Cart()
    
    let categories = ["All features", "Vegetables", "Meat", "fish"]
    
    let products: [Product] = [
        Product(name: "Sugar", category: "All features", imageName: "açucar", price: 600.00),
        Product(name: "Chicken", category: "Meat", imageName: "frango", price: 800.00),
        Product(name: "Corn meal", category: "All features", imageName: "fuba", price: 250.08),
        // ... adicione mais produtos aqui
    ]
    
    var filteredProducts: [Product] {
        if searchText.isEmpty && selectedCategory == "All features" {
            return products
        } else if selectedCategory == "All features" {
            return products.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        } else {
            return products.filter { $0.name.localizedCaseInsensitiveContains(searchText) && $0.category == selectedCategory }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("filter by category", selection: $selectedCategory) {
                    ForEach(categories, id: \.self) { category in
                        Text(category).tag(category)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(filteredProducts) { product in
                            ProductCardView(product: product)
                                .environmentObject(cart)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle("Marketplace")
        }
    }
}

struct ProductCardView: View {
    let product: Product
    @EnvironmentObject var cart: Cart
    
    var body: some View {
        VStack(spacing: 8) {
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 120)
            
            Text(product.name)
                .font(.headline)
            
            Text(String(format: "AOA %.2f", product.price))
                .font(.subheadline)
                .foregroundColor(.green)
            
            Button(action: {
                cart.addItem(product)
            }) {
                Text("+")
                    .padding(8)
                    .frame(width: 100,height: 50)
                    .background(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}
struct s1_Previews: PreviewProvider {
    static var previews: some View {
        s1()
    }
}
