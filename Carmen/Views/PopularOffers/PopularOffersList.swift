//
//  PopularOffersList.swift
//  Carmen
//
//  Created by Luciano Nicolini on 14/05/2024.
//

import SwiftUI

struct PopularOffersList: View {
    @Environment(CartManager.self) var cartManager
    
    var body: some View {
        VStack {
            HStack {
                Text("Lo más popular")
                    .foregroundStyle(.primary)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "rectangle.grid.1x2.fill")
                    .foregroundStyle(.secondary)
                    .padding(.all, 12)
            }
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(walletItems) { item in
                        NavigationLink(destination: DetailView(item: item)) {
                            OfferItem(walletItem: item)
                        }
                    }
                    .accentColor(.primary)
                }
            }
        }
        .padding()
    }
}

#Preview {
    PopularOffersList()
        .environment(CartManager())
}





