//
//  s1.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//

import SwiftUI

struct s1: View {
    
    @State private var searchText = ""
    @State private var selectedCategory = "All features"
    var cart = CartViewModel()
    
    let importproducts = dataservice()
    let importcategories = dataservice()
    
    
    var filteredProducts: [Product] {
        if searchText.isEmpty && selectedCategory == "All features" {
            return importproducts.products
        } else if selectedCategory == "All features" {
            return importproducts.products.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        } else {
            return importproducts.products.filter { $0.category == selectedCategory }
        }
    }
    
    var body: some View {
        
        NavigationView {
            VStack {
                Picker("filter by category", selection: $selectedCategory) {
                    ForEach(importcategories.categories, id: \.self) { category in
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
    //@EnvironmentObject var cart: CartViewModel()
    
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
                //
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
