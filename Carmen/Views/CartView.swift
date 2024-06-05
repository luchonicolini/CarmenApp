//
//  CartView.swift
//  Carmen
//
//  Created by Luciano Nicolini on 23/05/2024.
//

import SwiftUI

struct CartView: View {
    @Environment(CartManager.self) var cartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    ProductRow(product: product)
                }
                HStack {
                    Text("EL TOTAL ES:")
                    Spacer()
                    Text("$\(cartManager.total)").bold()
                }
                .padding()
            } else {
                Text("SU CARRO ESTA VACIO")
            }
        }
        .navigationTitle(Text("Mi Carrito"))
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environment(CartManager())
}


