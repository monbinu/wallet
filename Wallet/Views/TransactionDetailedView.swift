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
    
    private func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
    var body: some View {
        
        
        NavigationView{
            
            List{
                
                Section(){
                    HStack{
                        Image(systemName: "fork.knife")
                            .imageScale(.large)
                        VStack(alignment: .leading){
                            HStack{
                                Text("Torico Ice Cream")
                                    .bold()
                                    .multilineTextAlignment(.leading)
                                
                                Text("$ 5.10")
                                    .multilineTextAlignment(.trailing)
                                    
                            }
                            
                            Text("Jersy city, NJ")
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.gray)
                            Text("5/22/23")
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.gray)
                        }
                        
                    }
                    
                    HStack{
                        Image(systemName: "car.fill")
                            .imageScale(.large)
                        VStack(alignment: .leading){
                            HStack{
                                Text("Metropolitan Transport")
                                    .bold()
                                    .multilineTextAlignment(.leading)
                                
                                Text("$2.75")
                                    .multilineTextAlignment(.trailing)
                            }
                            
                            Text("New York, NY")
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.gray)
                            
                            Text("5/21/23")
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.gray)
                        }
                        
                    }
                    
                    HStack{
                        Image(systemName: "handbag.fill")
                            .imageScale(.large)
                        VStack(alignment: .leading){
                            HStack{
                                Text("Arc'teryx")
                                    .bold()
                                    .multilineTextAlignment(.leading)
                                
                                Text("$460.61")
                                    .multilineTextAlignment(.trailing)
                            }
                            
                            Text("Pending - arcteryx.com")
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.gray)
                            Text("8 hours ago")
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.gray)
                        }
                        
                    }
                }
                
                
                
                
            }.navigationTitle("Latest Transactions")
                .toolbar {
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
    TransactionDetailedView()
}
