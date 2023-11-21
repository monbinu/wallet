//
//  CardListView.swift
//  Wallet
//
//  Created by Mikayla Kim on 15/11/23.
//

import SwiftUI

struct CardListView: View {
    @State private var showingSheet = false
    @State private var isShowingSheet = false
    @State private var addToWalletListPopOver = false
    
    @Environment(\.colorScheme)
    var colorScheme
    var viewModel = CardViewModel()
    var ticketModel = TicketViewModel()
    
    
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                HStack{
                    Text("Wallet")
                        .font(.largeTitle.bold())
                    Spacer()
                    Image(systemName: "shippingbox.circle.fill")
                        .font(.largeTitle)
                        .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                    
                    Button {
                        addToWalletListPopOver = true
                        
                    } label: {
                        
                        Image(systemName: "plus.circle.fill")
                            .font(.largeTitle)
                            .background(Color(UIColor.systemBackground))
                            .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                        
                    }.popover(isPresented: $addToWalletListPopOver, content: {
                        AddToWalletView()
                    })
                }
                .padding()
                
                
            }
            
            
            ScrollView{
                
                VStack() {
                    ForEach(viewModel.cards) { card in
                        CardDetailedView(card: card)
                        
                    }
                }
                .padding(.bottom,50)
                
                VStack() {
                    
                    ForEach(ticketModel.tickets) { ticket in
                        TicketDetailedView(ticket: ticket)
                        
                    }
                    
                    
                    
                    
                    ZStack(alignment: .bottom) {
                        ScrollView{
                            
                        }
                        VStack{
                            
                            
                            Button(action: {
                                
                            }) {
                                Text("View 56 Expired Passes")
                            }
                            
                        }
                    }
                }
                
      
            }.sheet(isPresented: $isShowingSheet, content: {
                SheetView(message: "")
            })
  
            
        }
        
        
        
    }
    
}


struct SheetView: View {
    let message: String
    
    var body: some View {
        Text(message)
    }
}

#Preview {
    CardListView()
}
