//
//  ReferencePaymentFormView.swift
//  basic basket
//
//  Created by Ngori Januario on 29/08/23.
//

import SwiftUI

struct ReferencePaymentFormView: View {
    @State private var referenceNumber: String = ""
    @State private var amount: Double = 0.0
    
    var body: some View {
        VStack {
            Text("Reference Payment Form")
                .font(.headline)
                .padding()

            TextField("Reference Number", text: $referenceNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Amount", value: $amount, format: .number)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding()

            Button(action: {
                // Perform payment processing for reference payment
            }) {
                Text("Pay by Reference")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}
struct ReferencePaymentFormView_Previews: PreviewProvider {
    static var previews: some View {
        ReferencePaymentFormView()
    }
}
