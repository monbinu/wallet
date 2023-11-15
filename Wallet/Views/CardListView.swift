//
//  CardListView.swift
//  Wallet
//
//  Created by Mikayla Kim on 15/11/23.
//

import SwiftUI

struct CardListView: View {
    
    
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
                    
                    
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 360, height: 200)
                        .cornerRadius(15.0)
                        .offset()
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 360, height: 200)
                        .cornerRadius(15.0)
                        .offset(CGSize(width: 0.0, height: 60.0))
                    
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 360, height: 200)
                        .cornerRadius(15.0)
                        .offset(CGSize(width: 0.0, height: 120.0))
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 360, height: 200)
                        .cornerRadius(15.0)
                        .offset(CGSize(width: 0.0, height: 180.0))
                    
                    
                }
                
                
                
                
                
            }
            
            
            
        }
        
        
    }
}

#Preview {
    CardListView()
}
