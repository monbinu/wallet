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
    @Environment(\.dismiss) var dismiss
    
    @Environment(\.colorScheme)
    var colorScheme
    var viewModel = CardViewModel()
    var ticketModel = TicketViewModel()
    
    // @State public var offsetCount = 0
    
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
                        //self.offsetCount? -= 30

                                                                        
                    }//.offset(y: CGFloat(offsetCount) * 10)
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
