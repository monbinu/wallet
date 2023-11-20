//
//  CardDetailedView.swift
//  Wallet
//
//  Created by Mikayla Kim on 15/11/23.
//

import SwiftUI

struct CardDetailedView: View {

    
    var card: CardIndividual

    
    var body: some View {

                ZStack{
                    
                    Button(action: {}, label: {
                        Image(card.imageName)
                            .aspectRatio(contentMode:.fit)
                            .accessibilityLabel("wallet")
                            .frame(width: 360, height: 229)
                            .cornerRadius(12.0)
                        
                        
                    })
                    .padding()
                    
  
                }
                

            }
        }
        


#Preview {
    CardDetailedView(card: CardIndividual(imageName: "card_ka"))
}
