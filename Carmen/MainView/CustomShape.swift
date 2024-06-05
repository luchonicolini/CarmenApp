//
//  CustomShape.swift
//  Carmen
//
//  Created by Luciano Nicolini on 14/05/2024.
//

import SwiftUI

struct CustomShape: Shape {
    var corner : UIRectCorner
    var radii : CGFloat
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}

struct DateView: View {
    var launcher: String
    @State private var date: String = ""
       
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(date.uppercased())
                .font(.footnote)
                .fontWeight(.medium)
                .opacity(0.7)
            
            Text(launcher)
                .font(.subheadline).bold()
        }
        .onAppear() {
            date =
            Date.now.formatted(.dateTime.weekday().month().day().locale(Locale(identifier: "es-AR")))
           
        }
    }
}

struct SectionHeader: View {
    let text: String
    var body: some View {
        Text(text)
            .padding()
            .frame(width: UIScreen.main.bounds.width, height: 28,alignment: .leading)
            .background(Color.green)
            .foregroundStyle(Color.primary)
    }
}
