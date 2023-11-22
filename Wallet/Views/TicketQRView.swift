//
//  TicketQRView.swift
//  Wallet
//
//  Created by Mikayla Kim on 22/11/23.
//


import SwiftUI


struct TicketQRView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    private func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
    var body: some View {
        NavigationView{
            
            VStack() {
                
                ForEach(ticketModel.tickets) { ticket in
                    TicketDetailedView(ticket: ticket)
                        .accessibilityLabel("Miles & More GMBH, Yun Jae Kim. Activate the card to view the full card. Actions available.")
                    
                }
                
                } .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Done", role: .cancel) {
                            dismiss()
                        }
                    }
                }
            }
                
            }

             
            
        }
        

         



#Preview {
    TicketQRView()
}
