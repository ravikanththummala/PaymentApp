//
//  CreditCardType.swift
//  PaymentApp
//
//  Created by Ravikanth  on 12/4/23.
//

import SwiftUI
import Foundation

enum CreditCardType {
    
    case visa
    case masterCard
    case amex
    
    var gradient: Gradient {
        switch self {
        case .visa:
            return Gradient(colors: [Color(red: 0.08, green: 0.52, blue: 0.98), Color(red: 0.49, green: 0.15, blue: 0.93)])
        case .masterCard:
            return Gradient(colors: [Color(red: 0.00, green: 0.01, blue: 0.54), Color(red: 0.85, green: 0.21, blue: 0.30)])
        case .amex:
            return Gradient(colors: [Color(red: 0.00, green: 0.16, blue: 0.33), Color(red: 0.00, green: 0.23, blue: 0.61)])
        }
    }
    
    var imageName: String {
        switch self {
        case .visa:
            return "visa"
        case .masterCard:
            return "mastercard"
        case .amex:
            return "amex"

        }
    }
    
}

