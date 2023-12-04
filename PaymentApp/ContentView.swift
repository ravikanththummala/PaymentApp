//
//  ContentView.swift
//  PaymentApp
//
//  Created by Ravikanth  on 12/4/23.
//

import SwiftUI
import SwiftUIFontIcon

struct ContentView: View {
    var body: some View {
       
        VStack {
            ScrollView {
                Group {
                    TabView {
                        ForEach(sampleCards, id: \.self){ card in
                            CreditCardView(creditCard: card)
                                .padding(.bottom,50)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: 300)
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                }
                .padding(.horizontal,16)
                
                AddCreditCardView()
                    .padding(.bottom,16)
                
                
                Rectangle()
                    .fill(.regularMaterial)
                    .frame(height: 8)
                    .padding(.bottom,16)

                
                Group {
                    VStack(alignment: .leading,spacing: 8){
                        Text("Payment Methods")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        ForEach(sampleCards,id: \.self) { card in
                        
                            Button {
                                
                            } label: {
                                HStack(spacing: 8){
                                    Image(card.creditCardType.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 32,height: 32)
                                        .padding(6)
                                        .background(.ultraThinMaterial)
                                        .clipShape(.circle)
                                    
                                    Text("\(card.cardNumber)")
                                        .font(.subheadline)
                                        .fontWeight(.light)
                                    
                                    Spacer()
                                    
                                    FontIcon.text(.awesome5Solid(code: .chevron_right),fontsize: 16,color: .secondary)
                                    
                                }
                            }
                            .foregroundStyle(.primary)
                            .padding(.horizontal,6)
                            .padding(.vertical,12)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Divider()
                        }
                        
                        Button {
                            
                        } label: {
                            Text("+ Add a New Way to Pay")
                                .foregroundStyle(.primary)
                                .font(.subheadline)
                                .fontWeight(.light)
                                .padding(6)
                                .cornerRadius(4)
                        }
                        .padding(.horizontal,8)
                        .background(.regularMaterial)
                        .clipShape(.capsule)
                    }
                    .padding(.bottom,16)
                }
                
                Rectangle()
                    .fill(.regularMaterial)
                    .frame(height: 8)
                    .padding(.bottom,16)
               
                Group {
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Coupons")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        Button {
                            
                        } label: {
                            HStack(spacing:12){
                                FontIcon.text(.awesome5Solid(code: .percent), fontsize:16)
                                Text("Coupons")
                                    .font(.subheadline)
                                    .fontWeight(.light)
                                
                                Spacer()
                                Text("0")
                                FontIcon.text(.awesome5Solid(code: .chevron_right),fontsize: 16,color:.secondary)

                            }
                        }
                        .foregroundStyle(.primary)
                        .padding(.horizontal,6)
                        .padding(.vertical,12)
                        .frame(maxWidth:.infinity,alignment: .leading)

                        Divider()
                        
                        Button {
                            
                        } label: {
                            HStack(spacing:12) {
                                FontIcon.text(.awesome5Solid(code: .plus),fontsize: 16)
                                
                                Text("Add the coupon code")
                                    .font(.subheadline)
                                    .fontWeight(.light)
                                
                                Spacer()
                                
                                FontIcon.text(.awesome5Solid(code: .chevron_right),fontsize:16,color:.secondary)
                            }
                        }
                        .foregroundStyle(.primary)
                        .padding(.horizontal,6)
                        .padding(.vertical,12)
                        .frame(maxWidth:.infinity,alignment: .leading)

                    }
                    .foregroundStyle(.primary)
                    .padding(.horizontal,24)
    
                }
                

            }
        }
    }
}

#Preview {
    ContentView()
}
