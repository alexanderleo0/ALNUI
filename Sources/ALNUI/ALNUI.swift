    //public struct ALNUI {
    //    public private(set) var text = "Hello, World!"
    //
    //    public init() {
    //    }
    //}
import SwiftUI
import Kingfisher

    //public struct SimpleCard <ALNUIImage> : View where ALNUIImage: View{
public struct SimpleCard: View{

    
    private let image: KFImage
    private let text: Text
    
    public init(image: KFImage, text: Text) {
        self.image = image
        self.text = text
    }
    
    public var body: some View {
        ZStack(alignment: .center) {
            image
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()
            Color.black
                .opacity(0.4)
            text
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .frame(maxWidth: 180)
                
                
        }
        .cornerRadius(20)
    }
    
    
}
