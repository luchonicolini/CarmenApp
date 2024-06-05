//
//  NavigationBar.swift
//  Carmen
//
//  Created by Luciano Nicolini on 14/05/2024.
//

import SwiftUI

struct NavigationBar: View {
    //@State private var isAnimated: Bool = false
    @Environment(CartManager.self) var cartManager
   
    var body: some View {
        HStack {
            Button(action:{}) {
                Image("menu")
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0.0, y: 20)
                    .cornerRadius(12)
            }
        
            Spacer()
            
            Text("Carmen")
                .font(.system(size: 33, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.red)
               
            
            Spacer()
            
            NavigationLink(destination: CartView()) {
                ZStack(alignment: .topTrailing) {
                    Image(systemName: "cart")
                        .foregroundStyle(.black)
                        .padding(.all, 12)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0.0, y: 20)
                        .cornerRadius(12)
                    if cartManager.products.count > 0 {
                        Text("\(cartManager.products.count)")
                            .font(.caption2).bold()
                            .foregroundStyle(.white)
                            .frame(width: 15, height: 15)
                            .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                            .cornerRadius(50)
                    }
                }
            }
            .accessibilityLabel("Carrito")
        }
        .padding(.horizontal)
    }
}

#Preview {
    NavigationBar()
        .environment(CartManager())
}

