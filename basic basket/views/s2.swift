//
//  s2.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//

import SwiftUI

struct FoodItem: Identifiable {
    let id = UUID()
    let name: String
    let category: String
}

struct s2: View {
    @State private var searchText = ""
    @State private var selectedCategory = "All features"
    
    let categories = ["All features", "Vegetables", "Meat", "fish"]
    
    let foodItems: [FoodItem] = [
        FoodItem(name: "Sugar", category: "All features"),
        FoodItem(name: "Chicken", category: "Meat"),
        FoodItem(name: "Corn meal", category: "All features"),
    ]
    
    var filteredFoodItems: [FoodItem] {
        if searchText.isEmpty && selectedCategory == "" {
            return foodItems
        } else if selectedCategory == "All features" {
            return foodItems.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        } else {
            return foodItems.filter { $0.name.localizedCaseInsensitiveContains(searchText) && $0.category == selectedCategory }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                    .padding(.horizontal)
                
                List(filteredFoodItems) { foodItem in
                        Text(foodItem.name)
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
