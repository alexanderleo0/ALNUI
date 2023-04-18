    //
    //  VerticalScrollView.swift
    //
    //
    //  Created by Александр Никитин on 07.04.2023.
    //

import SwiftUI


public struct VerticalScrollView: View {
    
        //    @Binding var selectedStore

    let viewModel : ViewModelForVerticalViewProtocol
    
    public init(viewModel: ViewModelForVerticalViewProtocol) {
        self.viewModel = viewModel
    }
    
    
    
    public var body: some View {
            //        if let selectedStore = selectedStore {
        
            //            if csVM.dealsFor[selectedStore] == [] {
        if viewModel.dealsString == [] {
            SpinnerLoadingView()
                .frame(height: 300)
        } else {
            ScrollView{
                    //                    ListOfElements(selectedStore: $selectedStore)
            }
        }
            //        }
    }
}

    //struct VerticalScrollView_Previews: PreviewProvider {
    //    static var previews: some View {
    //        VerticalScrollView()
    //    }
    //}
    //
    //struct ListOfElements: View {
    //
    //
    //    @Binding var selectedStore: Store?
    //
    //    var body: some View {
    //        LazyVGrid(columns: Array(repeating: .init(), count: 1)){
    //            Spacer()
    //                .frame(height: 130)
    //
    //            ForEach(csVM.dealsFor[selectedStore!] ?? []) { deal in
    //                NavLink(destination: SecondScreen(deal: deal)) {
    //                    VerticalCardsView(deal: deal)
    //                        .padding(.horizontal)
    //                        .onAppear {
    //                            if csVM.dealsFor[selectedStore!]!.isLastItem(deal) {
    //                                csVM.fetchGames(forStore: selectedStore!)
    //                                let _ = debugPrint("fetch new deals")
    //                            }
    //                        }
    //                        .showActivityIdicator(csVM.dealsFor[selectedStore!]?.last == deal && !csVM.isFull[selectedStore!]!)
    //                }
    //            }
    //        }
    //    }
    //}

