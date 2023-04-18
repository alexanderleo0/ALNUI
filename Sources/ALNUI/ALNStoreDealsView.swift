//
//  StoreDealsView.swift
//  
//
//  Created by Александр Никитин on 08.04.2023.
//

import SwiftUI
import Kingfisher

public struct ALNStoreDealsView<Content: View>: View {
    
    var vmForStore: VMforStoreProtocol
    @ViewBuilder var content: (StoreProtocol) -> Content
    
    public init(vmForStore: VMforStoreProtocol, content: @escaping (StoreProtocol) -> Content) {
        self.vmForStore = vmForStore
        self.content = content
    }
    
    public var body: some View {
        TabView(){
            ForEach(vmForStore.stores, id: \.storeID) { store in
                VStack{
                    if let url = URL(string: vmForStore.getImage(forStore: store)) {
                        KFImage(url)
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 100)
                            .shadow(color: Color.gray, radius: 5)
                            .padding()
                    }
                    content(store)
                    Spacer(minLength: 0)
                }
            }
        }
        .background{
            Color.orange.opacity(0.7)
                .blur(radius: 2, opaque: true)}
        .ignoresSafeArea(edges: .all)
        .tabViewStyle(.page(indexDisplayMode: .automatic))
    }
}

struct StoreDealsView_Previews: PreviewProvider {
    
    static var previews: some View {
        ALNStoreDealsView(vmForStore: VMForStoreMock()){ store in
            EmptyView()
        }
    }
}

