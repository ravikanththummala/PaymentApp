//
//  AddCreditCardView.swift
//  PaymentApp
//
//  Created by Ravikanth  on 12/4/23.
//

import SwiftUI

struct AddCreditCardView: View {
    var body: some View {
        Button {
            
        } label: {
            Text("+ Add Card ")
                .foregroundColor(.primary)
                .font(.title3)
                .fontWeight(.light)
                .padding(12)
                .cornerRadius(4)
        }
        .frame(maxWidth: .infinity)
        .background(.regularMaterial)
        .clipShape(.capsule)
        .padding(.horizontal,32)

    }
}

#Preview {
    AddCreditCardView()
}
