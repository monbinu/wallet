//
//  TransactionDetailedView.swift
//  Wallet
//
//  Created by Mikayla Kim on 20/11/23.
//

import SwiftUI
var viewModel = CardViewModel()
var ticketModel = TicketViewModel()


struct TransactionDetailedView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        
        NavigationStack{
            
            List{
              
                    VStack{
                        Section(){
                            HStack{
                                Image(systemName: "fork.knife")
                                Text("Torico Ice Cream")
                                    .bold()
                                
                                Text("$5.05")
                            }

                            Text("Jersy City, NJ")
                                .fontWeight(.light)
                                .foregroundColor(.gray)
                            
                        }
                    }

                    
                

            }.navigationTitle("Latest Transactions")
            
        }
        Text("Back")
            
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
    }
}

#Preview {
    TransactionDetailedView()
}
