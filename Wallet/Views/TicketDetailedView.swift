//
//  TicketDetailedView.swift
//  Wallet
//
//  Created by Mikayla Kim on 20/11/23.
//

import SwiftUI

struct TicketDetailedView: View {
    @State var showModal =  false
    
    
    @State private var isSheetPresented =  false


    var ticket: TicketIndividual
    var body: some View {
        NavigationView{
            
            ZStack{
                
                Button(action: {isSheetPresented.toggle()}, label: {
                    Image(ticket.imageName)
                        .aspectRatio(contentMode:.fit)
                        .accessibilityLabel("Miles & More GMBH, Yun Jae Kim. Activate the card to view the full card. Actions available.")
                        .frame(width: 360, height: 513)
                        .cornerRadius(8.0)
                        .fullScreenCover(isPresented: $showModal){
                            TransactionDetailedView()
        
                        }
                    
                    
                })
                .padding()
                .sheet(isPresented: $isSheetPresented) {
                    TicketQRView()
                }

            }

            
            
        }
        

                }
            }


#Preview {
    TicketDetailedView(ticket: TicketIndividual(imageName: "card_dhl"))
}
