//
//  UserTabView.swift
//  Carmen
//
//  Created by Luciano Nicolini on 14/05/2024.
//

import SwiftUI

struct UserTabView: View {
    
    func setupAppearanceForPager() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.white.withAlphaComponent(0.9)
    }
    
    @State private var opacityEffect: Bool = false
    @State private var clipEdges: Bool = false
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(offerModels) { item in
                        UserProfileSection(offer: item)
                            .shadow(radius: 3)
                            .padding(.horizontal, 10)
                            .containerRelativeFrame(.horizontal)
                    }
                }
                .scrollTargetLayout()
                .overlay(alignment: .bottom) {
                    PagingIndicator(activeTint: .red, inActiveTint: .black.opacity(0.25), opacityEffect: opacityEffect, clipEdges: clipEdges)
                }
            }
            .scrollTargetBehavior(.viewAligned)
            .scrollIndicators(.hidden)
            .frame(height: 285)
            .safeAreaPadding(.vertical,15)
            .safeAreaPadding(.horizontal,0)
        }
    }
}


#Preview {
    UserTabView()
        .previewLayout(.sizeThatFits)
        .background(Color.gray)
}


struct PagingIndicator: View {
    var activeTint: Color = .primary
    var inActiveTint: Color = .primary.opacity(0.15)
    var opacityEffect: Bool = false
    var clipEdges: Bool = false
    
    var body: some View {
        GeometryReader {
            let width = $0.size.width
            if let scrollViewWidth = $0.bounds(of: .scrollView(axis: .horizontal))?.width,scrollViewWidth > 0 {
                let minX = $0.frame(in: .scrollView(axis: .horizontal)).minX
                let totalPages = Int(width / scrollViewWidth)
                //progress
                let freeProgress = -minX / scrollViewWidth
                let clippedProgress = min(max(freeProgress,0.0), CGFloat(totalPages - 1))
                let progress = clipEdges ? clippedProgress : freeProgress
                //indexes
                let activateIndex = Int(progress)
                let nextIndex = Int(progress.rounded(.awayFromZero))
                let indicatorProgress = progress - CGFloat(activateIndex)
                let currentPageWidth = 18 - (indicatorProgress * 18)
                let nextPageWidth = indicatorProgress * 18
                
                HStack(spacing: 10) {
                    ForEach(0..<totalPages, id: \.self) { index in
                        Capsule()
                            .fill(.clear)
                            .frame(width: 8 + (activateIndex == index ? currentPageWidth : nextIndex == index ? nextPageWidth : 0),height: 8)
                            .overlay {
                                ZStack {
                                    Capsule()
                                        .fill(inActiveTint)
                                    Capsule()
                                        .fill(activeTint)
                                        .opacity(opacityEffect ? activateIndex == index ? 1 - indicatorProgress : nextIndex == index ? indicatorProgress : 0 : 1)
                                }
                            }
                        
                    }
                }
                .frame(width: scrollViewWidth)
                .offset(x: -minX)
            }
        }
        .frame(height: 30)
    }
}
