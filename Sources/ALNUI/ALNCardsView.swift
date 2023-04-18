    //
    //  CardsView.swift
    //  02-HW-SwiftUI-Nikitin
    //
    //  Created by Александр Никитин on 23.03.2023.
    //

import SwiftUI
import Kingfisher

public struct DealCardView: View {

    
    let deal : DealsProtocol
    
    @State private var yOffset = 0.0
    @State private var timeToHide = true

    public init(deal: DealsProtocol) {
        self.deal = deal
    }
    
    public var body: some View {
        ZStack(alignment: .leading){
            GradientBackView()
            HStack(alignment: .top){
                if let url = URL(string: deal.thumb ?? "") {
                    KFImage(url)
                        .placeholder({ _ in
                            SpinnerLoadingView()
                        })
                        .resizable()
                        .scaledToFill()
                        .padding(.horizontal)
                        .frame(width: 80, height: 100)
                        .padding(.horizontal, 5)
                        .clipped()
                        .onAppear()
                    
                } else {
                    Image(systemName: "questionmark.circle.fill")
                        .font(.largeTitle)
                        .frame(width: 80, height: 100)
                        .padding(.horizontal, 5)
                    
                }
                PriceWithDiscount(title: deal.title, normalPrice: deal.normalPrice, salePrice: deal.salePrice)
                Spacer()
            }
            .padding()
            HeartView()
        }
        
    }
}

struct PriceWithDiscount: View {
    let title: String
    let normalPrice: String
    let salePrice: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            HStack {
                Text(normalPrice+"$")
                    .strikethrough()
                Text(salePrice+"$")
                    .font(.title)
                    .foregroundColor(.red)
                
            }
        }
    }
    
}

struct HeartView: View {
    
    @State private var isFav = false
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "heart.fill")
                .font(isFav ? .system(size: 60) : .system(size: 30) )
                .foregroundColor(isFav ? .red : .gray)
                .rotationEffect(isFav ? .degrees(20) : .degrees(360))
                .onTapGesture {
                    withAnimation(.interpolatingSpring(stiffness: 2, damping: 2, initialVelocity: 8)) {
                        isFav.toggle()
                    }
                }
        }.padding()
    }
}

struct GradientBackView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.purple, .red, .blue]), startPoint: .bottomLeading, endPoint: .trailing)
            .opacity(0.4)
            .frame(maxHeight: 300)
            .cornerRadius(20)
    }
}

