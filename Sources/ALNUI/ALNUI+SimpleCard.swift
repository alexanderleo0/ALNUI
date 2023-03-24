    //public struct ALNUI {
    //    public private(set) var text = "Hello, World!"
    //
    //    public init() {
    //    }
    //}
import SwiftUI
import Kingfisher

public struct SimpleCard : View{
    
    private let image: KFImage
    private let text: Text
    
    private let size: CGFloat = 60
    
    public init(image: KFImage, text: Text) {
        self.image = image
        self.text = text
    }
    
    public var body: some View {
        ZStack(alignment: .center) {
            Group{
                image
                    .resizable()
                    .scaledToFill()
            }
                .frame(width: size, height: size)
            text
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .frame(maxWidth: CGFloat(0.8*size) )
        }
        .cornerRadius(75)
        .frame(width: size, height: size*1.5)
       
    }

}
