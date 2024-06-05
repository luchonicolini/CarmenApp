//
//  OfferModel.swift
//  Carmen
//
//  Created by Luciano Nicolini on 16/05/2024.
//

import Foundation

struct OfferModel: Identifiable {
    let id = UUID()
    let imageName: String
    let model: String
    let price: Int
    let discount: Int
    let rating: Double
}

let offerModels: [OfferModel] = [
    OfferModel(imageName: "uno", model: "Modelo Amanecer", price: 20000, discount: 20, rating: 4.5),
    OfferModel(imageName: "dos", model: "Modelo Aurora", price: 40000, discount: 45, rating: 8.2),
    OfferModel(imageName: "tres", model: "Modelo Crepúsculo", price: 30000, discount: 30, rating: 7.8),
   

]

