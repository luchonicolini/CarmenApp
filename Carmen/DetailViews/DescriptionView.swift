//
//  DescriptionView.swift
//  Carmen
//
//  Created by Luciano Nicolini on 17/05/2024.
//

import SwiftUI

struct DescriptionView: View {
    let item: WalletItem
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(item.Model)
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Text("$\(Int(item.price))")
                    .font(.title)
                    .foregroundColor(.primary)
                    .bold()
            }
            
            Text("Descripción")
                .fontWeight(.semibold)
                .padding(.vertical, 8)
            Text(item.description)
                .lineSpacing(8)
                .opacity(0.6)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Tamaño")
                        .fontWeight(.semibold)
                        .padding(.bottom, 4)
                    Text("Altura: \(item.height)")
                        .opacity(0.6)
                    Text("Ancho: \(item.width)")
                        .opacity(0.6)
                    Text("Diámetro: \(item.diameter)")
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading) {
                    Text("Material")
                        .fontWeight(.semibold)
                        .padding(.bottom, 4)
                    Text(item.material)
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.vertical)
            
            VStack(alignment: .leading) {
                Text("Colores")
                    .fontWeight(.bold)
                HStack {
                    ForEach(item.colors, id: \.self) { color in
                        ColorView(color: color)
                    }
                }
            }
        }
        .padding()
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(40)
    }
}

