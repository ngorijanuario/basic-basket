//
//  s2.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//

import SwiftUI

struct s2: View {
    @State private var searchText = ""
    @State private var selectedCategory = "All features"
    let importProducts = dataservice()
    let importCategories = dataservice()
    @StateObject var cartViewModel = CartViewModel() // Initialize the cartViewModel
    
    var filteredProducts: [Product] {
        if searchText.isEmpty && selectedCategory == "" {
            return importProducts.products
        } else if selectedCategory == "All features" {
            return importProducts.products.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        } else {
            return importProducts.products.filter { $0.name.localizedCaseInsensitiveContains(searchText) && $0.category == selectedCategory }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                    .padding(.horizontal)
                    
                ScrollView{
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        ForEach(filteredProducts) { product in
                            ProductCardView(product: product)
                                .environmentObject(cartViewModel)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                }
                
            }
            .navigationTitle("Search food")
        }
    }
}

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            
            TextField("search food", text: $text)
                .foregroundColor(.primary)
            
            if !text.isEmpty {
                Button(action: {
                    self.text = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }
            }
        }
        .padding(8)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        s2()
    }
}
