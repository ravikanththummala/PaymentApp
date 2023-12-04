//
//  ActionCreditCardButtonView.swift
//  PaymentApp
//
//  Created by Ravikanth  on 12/4/23.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon


struct ActionCreditCardButtonView: View {
    
    let icon: FontAwesomeCode
    
    var body: some View {
        FontIcon.button(.awesome5Solid(code: icon), action: { }, fontsize: 12)
            .padding(8)
            .background(.ultraThinMaterial)
            .clipShape(.circle)
    }
}
