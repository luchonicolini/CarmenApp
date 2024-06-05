//
//  ProductRow.swift
//  Carmen
//
//  Created by Luciano Nicolini on 23/05/2024.
//

import SwiftUI

struct ProductRow: View {
    var product: WalletItem
    @Environment(CartManager.self) var cartManager
    var body: some View {
        HStack {
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.Model)
                    .bold()
                Text("$\(product.price)")
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundStyle(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ProductRow(product: walletItems[2])
        .environment(CartManager())
}
