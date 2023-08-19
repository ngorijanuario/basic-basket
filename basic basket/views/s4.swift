//
//  s4.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//
import SwiftUI

struct PaymentCard {
    let cardNumber: String
    let cardHolderName: String
    let expirationDate: String
    let cvv: String
}

class ViewModel: ObservableObject {
    @Published var paymentCards: [PaymentCard] = []
    
    func addPaymentCard(_ card: PaymentCard) {
        paymentCards.append(card)
    }
}

struct s4: View {
    @StateObject private var viewModel = ViewModel()
    @State private var cardNumber = ""
    @State private var cardHolderName = ""
    @State private var expirationDate = ""
    @State private var cvv = ""
    @State private var isAddingCard = false
    
    var body: some View {
        NavigationView {
            VStack{
                Form {
                    Section(header: Text("Personal Data")) {
                        Text("Name: Ngori")
                        Text("Email: ngori@google.com")
                    }
                    
                    Section(header: Text("Settings")) {
                        Text("Notifications")
                        Text("Privacy")
                    }
                    
                    Section(header: Text("Help")) {
                        Text("FAQ")
                        Text("Contact Support")
                    }
                    
                    Section(header: Text("Invite Friends")) {
                        Text("Invite Friends")
                    }
                }
            }
            .navigationTitle("Account")
        }
    }
}


struct AddCardView: View {
    @ObservedObject var viewModel: ViewModel
    @Binding var isPresented: Bool
    @State private var cardNumber = ""
    @State private var cardHolderName = ""
    @State private var expirationDate = ""
    @State private var cvv = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Card Information")) {
                    TextField("Card Number", text: $cardNumber)
                    TextField("Card Holder Name", text: $cardHolderName)
                    TextField("Expiration Date", text: $expirationDate)
                    TextField("CVV", text: $cvv)
                }
                
                Button("Add Card") {
                    let paymentCard = PaymentCard(cardNumber: cardNumber, cardHolderName: cardHolderName, expirationDate: expirationDate, cvv: cvv)
                    viewModel.addPaymentCard(paymentCard)
                    isPresented = false
                }
            }
            .navigationTitle("Add Payment Card")
            .navigationBarItems(trailing: Button("Cancel") {
                isPresented = false
            })
        }
    }
}

struct s4_Previews: PreviewProvider {
    static var previews: some View {
        s4()
    }
}
