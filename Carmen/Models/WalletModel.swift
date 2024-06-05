//
//  WalletModel.swift
//  Carmen
//
//  Created by Luciano Nicolini on 14/05/2024.
//

import Foundation
import SwiftUI

struct WalletItem: Identifiable {
    let id = UUID()
    let imageName: String
    let Model: String
    let price: Int
    let discount: Int
    let rating: Double
    let description: String
    let height: String
    let width: String
    let diameter: String
    let material: String
    let colors: [Color]
}

let walletItems: [WalletItem] = [
    WalletItem(
        imageName: "uno",
        Model: "Modelo Sunrise",
        price: 20000,
        discount: 20,
        rating: 4.5,
        description: "Luxury Swedian Chair is a contemporary chair based on the virtues of modern craft. It carries on the simplicity.",
        height: "120 cm",
        width: "80 cm",
        diameter: "72 cm",
        material: "Cuero, Lona, Amor Increíble",
        colors: [.white, .black, .red]
    ),
    WalletItem(
        imageName: "dos",
        Model: "Modelo Aurora",
        price: 40000,
        discount: 45,
        rating: 8.2,
        description: "Aurora model is an elegant wallet made from premium materials, perfect for any occasion.",
        height: "130 cm",
        width: "85 cm",
        diameter: "75 cm",
        material: "Lona, Cuero, Amor Puro",
        colors: [.blue, .gray, .green]
    ),
    WalletItem(
        imageName: "dos",
        Model: "Modelo Aurora",
        price: 40000,
        discount: 45,
        rating: 8.2,
        description: "Aurora model is an elegant wallet made from premium materials, perfect for any occasion.",
        height: "130 cm",
        width: "85 cm",
        diameter: "75 cm",
        material: "Lona, Cuero, Amor Puro",
        colors: [.blue, .gray, .green]
    ),
    WalletItem(
        imageName: "dos",
        Model: "Modelo Aurora",
        price: 40000,
        discount: 45,
        rating: 8.2,
        description: "Aurora model is an elegant wallet made from premium materials, perfect for any occasion.",
        height: "130 cm",
        width: "85 cm",
        diameter: "75 cm",
        material: "Lona, Cuero, Amor Puro",
        colors: [.blue, .gray, .green]
    ),
    // Añadir más elementos según sea necesario
]




