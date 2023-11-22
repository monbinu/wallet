//
//  AddToWalletView.swift
//  Wallet
//
//  Created by Mikayla Kim on 21/11/23.
//

import SwiftUI


struct AddToWalletView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    private func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                
                Text("Add to Wallet")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding(.top, 40)
                    .accessibilityLabel("Add to Wallet")
                
                Text("Keep all the cards, keys, and passes you use every day all in one place.")
                    .accessibilityAddTraits([.isSummaryElement])
                    .padding()
                    .multilineTextAlignment(.center)
                    .accessibilityLabel("Keep all the cards, keys, and passes you use every day all in one place.")
                
                
                NavigationStack{
                    
                    Text("Available Cards")
                        .accessibilityAddTraits([.isHeader])
                        .font(.title2)
                        .bold()
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding(.horizontal,30)
                        .offset(y:13)
                        .accessibilityLabel("Available Cards")
                    
                    List {
                        Section() {
                            HStack{
                                Image(systemName: "tray.full.fill")
                                Text("Previous Cards")
                                    .accessibilityAddTraits([.isButton])
                                    .accessibilityLabel("Previous Cards")
                            }
                        }//.listRowBackground(Color(.systemGray6))
                        
                        Section() {
                            HStack{
                                Image(systemName: "apple.logo")
                                Text("Set Up Apple Pay Later")
                                    .accessibilityAddTraits([.isButton])
                                    .accessibilityLabel("Set Up Apple Pay Later")
                            }
                            
                        }//.listRowBackground(Color(.systemGray6))
                        
                        
                        Section() {
                            HStack{
                                Image(systemName: "person.crop.circle.fill")
                                Text("Add Apple Account")
                                    .accessibilityAddTraits([.isButton])
                                    .accessibilityLabel("Add Apple Account")
                                    
                            }
                            
                        }//.listRowBackground(Color(.systemGray6))
                        
                        
                        Section() {
                            HStack{
                                Image(systemName: "creditcard.fill")
                                Text("Debit or Credit Card")
                                    .accessibilityAddTraits([.isButton])
                                    .accessibilityLabel("Debit or Credit Card")
                            }
                            
                            HStack{
                                Image(systemName: "tram.fill")
                                Text("Transit Card")
                                    .accessibilityAddTraits([.isButton])
                                    .accessibilityLabel("Transit Card")
                            }
                            
                            HStack{
                                Image(systemName: "person.text.rectangle.fill")
                                Text("Driver's License or State ID")
                                    .accessibilityAddTraits([.isButton])
                                    .accessibilityLabel("Driver's License or State ID")
                            }
                        }//.listRowBackground(Color(.systemGray6))
                        
                        
                        
                        
                    }//.scrollContentBackground(.hidden)
                    
                       
                }
                
            }
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Done", role: .cancel) {
                            dismiss()
                        }
                        .accessibilityAddTraits([.isButton])
                        .accessibilityLabel("Done")
                    }
                }
            
        }
        
        
    }
    
    
    
}


#Preview {
    AddToWalletView()
}
