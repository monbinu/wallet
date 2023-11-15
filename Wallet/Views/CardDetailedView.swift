//
//  CardDetailedView.swift
//  Wallet
//
//  Created by Mikayla Kim on 15/11/23.
//

import SwiftUI

struct CardDetailedView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                ZStack{
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 360, height: 200)
                        .cornerRadius(15.0)
                        .offset()
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 360, height: 200)
                        .cornerRadius(15.0)
                        .offset()
                    
                 
                }

            }
        }
        
        .navigationTitle("")
    }
    
}

#Preview {
    CardDetailedView()
}
