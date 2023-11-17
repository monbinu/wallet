//
//  CardListView.swift
//  Wallet
//
//  Created by Mikayla Kim on 15/11/23.
//

import SwiftUI

struct CardListView: View {
    @State private var isShowingSheet = false
    @Environment(\.colorScheme)
    var colorScheme
    var viewModel = CardViewModel()
    
    var body: some View {
        
        NavigationStack {
            ScrollView{
                VStack{
                    HStack{
                        Text("Wallet")
                            .font(.largeTitle.bold())
                        Spacer()
                        NavigationLink {
                            Text("Person View")
                        } label: {
                            Image(systemName: "shippingbox.circle.fill")
                                .font(.largeTitle)
                                .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                            
                            Image(systemName: "plus.circle.fill")
                                .font(.largeTitle)
                                .background(Color(UIColor.systemBackground))
                                .foregroundStyle(colorScheme == .dark ? Color.white : Color.black)
                            
                        }
                    }
                    .padding()
                    
                    
                }
                .navigationBarHidden(true)
                
                ZStack() {
                    
                    ForEach(viewModel.cards) { card in
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(card.imageName)
                                .aspectRatio(contentMode:.fill)
                                .accessibilityLabel("wallet")
                                .frame(width: 360, height: 220)
                                .cornerRadius(15.0)
                            
                            
                        })
                        
                    }
                    
                    .sheet(isPresented: $isShowingSheet, content: {
                        SheetView(message: "")
                    })
                    
                    
                    
                    
                    
                    
                }
                
                
                
            }
            
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
