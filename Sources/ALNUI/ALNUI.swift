    //public struct ALNUI {
    //    public private(set) var text = "Hello, World!"
    //
    //    public init() {
    //    }
    //}
import SwiftUI
import Kingfisher

    //public struct SimpleCard <ALNUIImage> : View where ALNUIImage: View{
public struct SimpleCard : View{

    
    private let image: Image
    private let text: Text
    
    public init(image: Image, text: Text) {
        self.image = image
        self.text = text
    }
    
    public var body: some View {
        ZStack(alignment: .center) {
            Group{
                image
                    .resizable()
                    .scaledToFill()
                 
                Color.black
                    .opacity(0.4)
            }
                .frame(width: 150, height: 150)
                .clipped()
            text
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .frame(maxWidth: 130)
        }
        .cornerRadius(20)
    }
    
    
}
