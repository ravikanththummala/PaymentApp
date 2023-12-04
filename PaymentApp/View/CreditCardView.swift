//
//  CreditCardView.swift
//  PaymentApp
//
//  Created by Ravikanth  on 12/4/23.
//

import SwiftUI

struct CreditCardView: View {
    let creditCard: CreditCard
    
    var body: some View {
        VStack(alignment: .leading,spacing: 16){
            HStack {
                
                Image(creditCard.creditCardType.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80,height: 80)
                    .clipped()
                
                Spacer()
                VStack {
                    HStack {
                        ActionCreditCardButtonView(icon: .pen_alt)
                        ActionCreditCardButtonView(icon: .trash)
                    }
                    
                    Text(creditCard.bankName)
                        .font(.caption)
                        .fontWeight(.light)
                        .foregroundStyle(.secondary)
                }
            }
            
            HStack {
                
                Spacer()
                Text(creditCard.cardNumber)
                    .font(.title)
                    .fontWeight(.regular)
                Spacer()
                
            }
            HStack(spacing: 8){
                VStack (alignment: .leading){
//                    Text("Place holder Name")
//                        .font(.callout)
//                        .fontWeight(.light)
//                        .foregroundStyle(.secondary)
//                    
                    Text(creditCard.cardHolderName)
                        .font(.headline)
                        .fontWeight(.regular)
                }
                
                Spacer()
                
                VStack(alignment: .leading){
                    Text("Expire Date")
                        .font(.callout)
                        .fontWeight(.light)
                        .foregroundStyle(.secondary)
                    
                    Text(creditCard.expirationDate)
                        .font(.headline)
                        .fontWeight(.regular)
                }
                
            }
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(gradient: creditCard.creditCardType.gradient, startPoint: .leading, endPoint: .trailing)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.secondary.opacity(0.5),lineWidth: 1.0)
                )
            
        )
        .cornerRadius(16)
        .padding(.horizontal)
        .padding(.top,8)
    }
}

#Preview {
    CreditCardView(creditCard: sampleCards[0])
}
