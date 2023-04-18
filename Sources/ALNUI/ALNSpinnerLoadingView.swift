    //
    //  SwiftUIView.swift
    //
    //
    //  Created by Александр Никитин on 21.03.2023.
    //

import SwiftUI

public struct SpinnerLoadingView: View {
    var color: Color = .accentColor
    var size: CGFloat = 25
    var disabled: Bool = false
    var countOfSegments: Int = 3
    @State private var isAnimating = false
    
    public init() {
        
    }
    
    public var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 5)
                .opacity(0.3)
                .foregroundColor(.gray)
            ForEach(0..<countOfSegments, id: \.self){ x in
                let firstSegment = Double(x + x) / Double(countOfSegments * 2)
                let secondSegment = Double(x + x + 1) / Double(countOfSegments * 2)
                
                Circle()
                
                    .trim(from: CGFloat(firstSegment), to: CGFloat(secondSegment))
                    .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                    .foregroundColor(color.opacity(disabled ? 0.5 : 1))
                    .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
                    .animation(.linear(duration: 0.8).repeatForever(autoreverses: false), value: isAnimating)
            }
        }
        .frame(width: size, height: size) // the size of our component
        .onAppear() {
            self.isAnimating = true // Start the animation on appear
        }
    }
}

struct SpinnerLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            SpinnerLoadingView()
        }
        
    }
}

