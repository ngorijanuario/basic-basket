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

enum PaymentOption: Identifiable {
    case reference, masterCard, visa
    
    var id: PaymentOption { self }
    
    var stringValue: String {
        switch self {
        case .reference:
            return "Reference"
        case .masterCard:
            return "Master Card"
        case .visa:
            return "Visa"
        }
    }
}

struct PaymentOptionsView: View {
    @State private var selectedPaymentOption: PaymentOption?
    
    var body: some View {
        VStack {
            Text("Select a Payment Option")
                .font(.headline)
                .padding()
            
            Button(action: {
                selectedPaymentOption = .reference
            }) {
                Text("Reference")
                    .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
            }
            .padding()
            
            Button(action: {
                selectedPaymentOption = .masterCard
            }) {
                Text("Master Card")
                    .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
            }
            .padding()
            
            Button(action: {
                selectedPaymentOption = .visa
            }) {
                Text("Visa")
                    .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
            }
            .padding()
        }
        .sheet(item: $selectedPaymentOption) { paymentOption in
            paymentForm(for: paymentOption)
        }
    }
    
    @ViewBuilder
    private func paymentForm(for paymentOption: PaymentOption) -> some View {
        switch paymentOption {
        case .reference:
            ReferencePaymentFormView()
        case .masterCard:
            MasterCardPaymentFormView()
        case .visa:
            VisaPaymentFormView()
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
