//
//  CardListView.swift
//  Wallet
//
//  Created by Mikayla Kim on 15/11/23.
//

import SwiftUI

struct CardListView: View {
    
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
                                .background(Color(UIColor.systemBackground))
                            
                            Image(systemName: "plus.circle.fill")
                                .font(.largeTitle)
                                .background(Color(UIColor.systemBackground))
                            
                        }
                    }
                    .padding()
                    
                    
                }
                .navigationBarHidden(true)
                
                ZStack() {
                    
                    ForEach(viewModel.cards) { card in
                        
                        Image(card.imageName)
                            .aspectRatio(contentMode:.fill)
                            .frame(width: 360, height: 200)
                            .cornerRadius(15.0)
                            .offset()
                            
                        

                        
                    }
                    
                    
                    
                }
                
            }
            
            
            
        }
        
        
    }
}

#Preview {
    CardListView()
}
