//
//  OfferItem.swift
//  Carmen
//
//  Created by Luciano Nicolini on 14/05/2024.
//

import SwiftUI

struct OfferItem: View {
    let walletItem: WalletItem
    @Environment(CartManager.self) private var cartManager
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(walletItem.imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(18)
                .padding(.bottom)
            
            Text(walletItem.Model)
                .font(.headline)
                .bold()
                .foregroundStyle(.primary)
            
            HStack {
                Label("\(walletItem.rating, specifier: "%.1f")", systemImage: "star.fill")
                    .foregroundStyle(.yellow).bold()
                    .font(.caption)
                
                Text("$\(Int(walletItem.price)) ARG")
                    .foregroundStyle(.primary)
                    .font(.caption)
                    .bold()
            }
            
        }
        .padding(.vertical, 20)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 250)
        .background(Color(UIColor.secondarySystemBackground))
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
        .cornerRadius(24)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button {
                        cartManager.addToCart(product: walletItem)
                    } label: {
                        Image(systemName: "plus")
                            .padding(5)
                            .foregroundStyle(.white)
                            .background(Color.black)
                            .cornerRadius(50)
                            .padding()
                    }
                    Spacer()
                }
            }
        )
    }
}


#Preview {
    OfferItem(walletItem: walletItems[0])
        .environment(CartManager())
}
