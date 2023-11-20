//
//  CardDetailedView.swift
//  Wallet
//
//  Created by Mikayla Kim on 15/11/23.
//

import SwiftUI

struct CardDetailedView: View {
    @State var showModal =  false
    
    var card: CardIndividual

    
    var body: some View {

                ZStack{
                    
                    Button(action: {showModal = true}, label: {
                        Image(card.imageName)
                            .aspectRatio(contentMode:.fit)
                            .accessibilityLabel("wallet")
                            .frame(width: 360, height: 229)
                            .cornerRadius(12.0)
                            .fullScreenCover(isPresented: $showModal){
                                TransactionDetailedView()
                            }
                        
                        
                    })
                    .padding()
                    
  
                }
                

            }
        }
        


#Preview {
    CardDetailedView(card: CardIndividual(imageName: "card_ka"))
}
