//
//  MasterCardPaymentFormView.swift
//  basic basket
//
//  Created by Ngori Januario on 29/08/23.
//

import SwiftUI

struct MasterCardPaymentFormView: View {
    @State private var cardNumber: String = ""
    @State private var cardHolderName: String = ""
    @State private var expirationDate: String = ""
    @State private var cvv: String = ""
    
    var body: some View {
        VStack {
            Text("Master Card Payment Form")
                .font(.headline)
                .padding()

            TextField("Card Number", text: $cardNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()
            
            TextField("Card Holder Name", text: $cardHolderName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            HStack {
                TextField("Expiration Date", text: $expirationDate)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("CVV", text: $cvv)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
            }
            .padding()

            Button(action: {
                // Perform payment processing for Master Card payment
            }) {
                Text("Pay with Master Card")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}


struct MasterCardPaymentFormView_Previews: PreviewProvider {
    static var previews: some View {
        MasterCardPaymentFormView()
    }
}
