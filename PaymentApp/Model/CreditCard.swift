//
//  CreditCard.swift
//  PaymentApp
//
//  Created by Ravikanth  on 12/4/23.
//

import Foundation


struct CreditCard : Hashable {
    let creditCardType: CreditCardType
    let bankName: String
    let cardNumber: String
    let cardHolderName: String
    let expirationDate:String
    
}

let sampleCards: [CreditCard] = [
    CreditCard(creditCardType: .visa, bankName: "ICICI Bank", cardNumber: "1234 1234 1234 1234", cardHolderName: "Ravikanth", expirationDate: "07/25"),
    CreditCard(creditCardType: .masterCard, bankName: "SBI Bank", cardNumber: "1144 1144 1144 1144", cardHolderName: "John Doe", expirationDate: "27/28"),
    CreditCard(creditCardType: .amex, bankName: "American Express", cardNumber: "1114 1114 1114 1114", cardHolderName: "Jane Smith", expirationDate: "02/24")
]

