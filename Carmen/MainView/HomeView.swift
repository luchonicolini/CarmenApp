//
//  HomeView.swift
//  Carmen
//
//  Created by Luciano Nicolini on 13/05/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var cartManager = CartManager()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor.secondarySystemBackground)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 0) {
                    NavigationBar()
                    UserTabView()
                    PopularOffersList()
                }
                .edgesIgnoringSafeArea(.bottom)
            }
        }
        .environment(cartManager)
    }
}

#Preview {
    HomeView()
        .environment(CartManager())
}








