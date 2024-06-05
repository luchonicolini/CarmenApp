//
//  CartManager.swift
//  Carmen
//
//  Created by Luciano Nicolini on 23/05/2024.
//

import Foundation
import Observation

@Observable class CartManager {
    var products: [WalletItem] = []
    var total: Int {
       Int(products.reduce(0) { $0 + $1.price })
    }
    
    func addToCart(product: WalletItem) {
        products.append(product)
    }
    
    func removeFromCart(product: WalletItem) {
        products.removeAll { $0.id == product.id }
    }
}
