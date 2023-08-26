//
//  s3.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//
import SwiftUI

struct CartView: View {
    @ObservedObject var cartViewModel: CartViewModel
    @State private var isPaymentSheetPresented = false // Define the state here
    
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
                        isPaymentSheetPresented.toggle()
                    }) {
                        Text("Complete Purchase")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                            .cornerRadius(10)
                    }
                    .padding()
                }
            }
            .navigationTitle("Basket")
            .sheet(isPresented: $isPaymentSheetPresented) {
                PaymentOptionsView()
            }
        }
    }
}

struct PaymentOptionsView: View {
    var body: some View {
        VStack {
            Text("Select a Payment Option")
                .font(.headline)
                .padding()
            
            // Display payment options buttons here
            Button(action: {
                // Handle reference payment logic
            }) {
                Text("Reference")
                    .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
            }
            .padding()
            
            Button(action: {
                // Handle master card payment logic
            }) {
                Text("Master Card")
                    .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
            }
            .padding()
            
            Button(action: {
                // Handle visa payment logic
            }) {
                Text("Visa")
                    .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
            }
            .padding()
        }
    }
}

struct s3: View {
    @StateObject private var cartViewModel = CartViewModel()
    
    var body: some View {
        VStack {
            CartView(cartViewModel: cartViewModel)
        }
    }
}

struct s3_Previews: PreviewProvider {
    static var previews: some View {
        s3()
    }
}
