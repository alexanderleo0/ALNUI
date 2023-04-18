    //
    //  File.swift
    //
    //
    //  Created by Александр Никитин on 07.04.2023.
    //

import Foundation

public protocol ViewModelProtocol {
    var storesID : [String] {get}
    func getImageURLString(forStore: String) -> String?
}

public protocol ViewModelForHorizontalViewProtocol {
    var stores: [StoreProtocol] {get}
    func getImage(forStore store: StoreProtocol) -> String
}

public protocol VMForDealCardProtocol {
    var thumb: String {get}
    var title: String {get}
    var normalPrice: String {get}
    var salePrice: String {get}
}

public protocol ViewModelForVerticalViewProtocol {
    var dealsString : [String] { get }
}

public protocol StoreProtocol {
    var storeID: String { get }
    var storeName: String { get }
    var isActive: Double { get }
    var imagesP: StoreImagesProtocol { get }
}

public protocol StoreImagesProtocol {
    var banner: String { get }
    var logo: String { get }
    var icon: String { get }
}

public protocol DealsProtocol {
    var title: String { get }
    var dealID: String {get}
    var storeID: String {get}
    var gameID: String {get}
    var salePrice: String {get}
    var normalPrice: String {get}
    var metacriticScore: String? {get}
    var steamRatingText: String? {get}
    var steamRatingPercent: String? {get}
    var steamRatingCount: String? {get}
    var steamAppID: String? {get}
    var releaseDate: Double {get}
    var lastChange: Double {get}
    var dealRating: String {get}
    var thumb: String? {get}
}

public protocol VMforStoreProtocol{
    var stores : [StoreProtocol] {get}
    func getImage(forStore store: StoreProtocol) -> String
}

public protocol VMforDealsProtocol: ObservableObject{
    var deals : [DealsProtocol] {get}
    func fetchDeals()
}
