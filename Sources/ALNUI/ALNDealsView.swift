//
//  SwiftUIView.swift
//  
//
//  Created by Александр Никитин on 09.04.2023.
//

import SwiftUI


public struct DealsView<T, Content>: View where T: VMforDealsProtocol, Content: View {

    @ObservedObject var viewModelVS: T
    
    @ViewBuilder var content: (DealsProtocol) -> Content
    
    
    public init?(viewModelVS: Any, content: @escaping (DealsProtocol) -> Content) {
        guard let viewModelVS = viewModelVS as? T else {return nil}
        self.viewModelVS = viewModelVS
        self.content = content
    }
    
    public var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(viewModelVS.deals, id:\.dealID) { deal in
                    content(deal)
                }
            }
            .onAppear{
                self.viewModelVS.fetchDeals()
            }
        }
    }
}


//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        DealsView<VMforDealsMock, EmptyView>(viewModelVS: VMforDealsMock()) { _ in
//            EmptyView()
//        }
//    }
//}
