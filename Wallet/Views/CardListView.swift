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
                        .accessibilityAddTraits([.isHeader])
                        .font(.largeTitle.bold())
                        .accessibilityLabel("Wallet")
                    Spacer()
                    Image(systemName: "shippingbox.circle.fill")
                        .accessibilityAddTraits([.isButton])
                        .font(.largeTitle)
                        .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                        .accessibilityLabel("Orders")
                        
                    
                    Button {
                        addToWalletListPopOver = true
                        
                    } label: {
                        
                        Image(systemName: "plus.circle.fill")
                            .accessibilityAddTraits([.isButton])
                            .font(.largeTitle)
                            .background(Color(UIColor.systemBackground))
                            .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                            .accessibilityLabel("Add Card")
                        
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
                                                   
                    }
                    .accessibilityLabel("Apple Credit Card. Card number ends in 1234.  Activate the card to view the full card. Actions available.")//.offset(y: CGFloat(offsetCount) * 10)
                }
                .padding(.bottom,50)
                
                VStack() {
                    
                    ForEach(ticketModel.tickets) { ticket in
                        TicketDetailedView(ticket: ticket)
                            .accessibilityLabel("Miles & More GMBH, Yun Jae Kim. Activate the card to view the full card. Actions available.")
                            
                        
                    }
                    

                    ZStack(alignment: .bottom) {
                        ScrollView{
                            
                        }
                        VStack{
                            
                            
                            Button(action: {
                                
                            }) {
                                Text("View 56 Expired Passes")
                                    .accessibilityAddTraits([.isButton])
                                    .accessibilityLabel("View 56 Expired Passes.")
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
