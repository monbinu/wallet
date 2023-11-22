//
//  CardDetailedView.swift
//  Wallet
//
//  Created by Mikayla Kim on 15/11/23.
//

import SwiftUI

struct CardDetailedView: View {
    @State var showModal =  false
    
    
    @State private var isSheetPresented =  false
    
    var card: CardIndividual

    
    var body: some View {

                ZStack{
                    
                    Button(action: { isSheetPresented.toggle()
                    }, label: {
                        
                        Image(card.imageName)
                            .accessibilityAddTraits([.isButton])
                                .aspectRatio(contentMode:.fit)
                                .frame(width: 360, height: 229)
                                .cornerRadius(12.0)
                                .fullScreenCover(isPresented: $showModal){
                                    TransactionDetailedView()
                
                                }
                                
                                
                            
                            
                        })
                        .padding()
                        
                   
                    .sheet(isPresented: $isSheetPresented) {
                        TransactionDetailedView()
                    }
                    
                    

                    
  
                }
                

            }
        }
        


#Preview {
    CardDetailedView(card: CardIndividual(imageName: "card_ka"))
}
