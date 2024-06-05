//
//  UserProfileSection.swift
//  Carmen
//
//  Created by Luciano Nicolini on 14/05/2024.
//

import SwiftUI

struct UserProfileSection: View {
    let offer: OfferModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    // Título de la sección
                    DateView(launcher: "Ofertas del día")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .accessibilityLabel("Título de la sección")
                    
                    Spacer()
                    
                    // Nombre del modelo de la oferta
                    Text(offer.model)
                        .foregroundStyle(.white)
                        .font(.title3)
                        .bold()
                        .accessibilityLabel("Nombre del modelo de la oferta")
                    
                    // Descuento aplicado al artículo
                    Text("\(offer.discount)% de descuento")
                        .font(.footnote)
                        .foregroundStyle(.white)
                        .opacity(0.4)
                        .accessibilityLabel("Descuento aplicado al artículo")
                    
                    Spacer()
                    
                    // Precio del artículo con descuento
                    Text("$\(Int(offer.price)) ARG")
                        .foregroundStyle(.white)
                        .font(.title2)
                        .bold()
                        .opacity(0.9)
                        .accessibilityLabel("Precio del artículo con descuento")
                }
                .padding(.vertical)
                
                Spacer()
                
              
                Image(offer.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 150)
                    .cornerRadius(20)
                    .padding()
                    .accessibilityLabel("Imagen del artículo")
            }
        }
        .padding()
        .background(Color(UIColor.lightGray))
        .frame(height: 200)
        .cornerRadius(24)
    }
}



#Preview {
    UserProfileSection(offer: offerModels[0])
}
