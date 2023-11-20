//
//  TicketDetailedView.swift
//  Wallet
//
//  Created by Mikayla Kim on 20/11/23.
//

import SwiftUI

struct TicketDetailedView: View {
    
    var ticket: TicketIndividual
    var body: some View {
        ZStack{
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(ticket.imageName)
                    .aspectRatio(contentMode:.fit)
                    .accessibilityLabel("wallet")
                    .frame(width: 360, height: 513)
                    .cornerRadius(8.0)
                
                
            })
            .padding()
            

        }
    }
}

#Preview {
    TicketDetailedView(ticket: TicketIndividual(imageName: "card_dhl"))
}
