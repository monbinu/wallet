//
//  TransactionDetailedView.swift
//  Wallet
//
//  Created by Mikayla Kim on 20/11/23.
//

import SwiftUI

struct TransactionDetailedView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Text("Back")
            
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
    }
}

#Preview {
    TransactionDetailedView()
}
