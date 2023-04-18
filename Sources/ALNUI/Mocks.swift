    //
    //  Mocks.swift
    //
    //
    //  Created by Александр Никитин on 08.04.2023.
    //

import Foundation

final class VMForStoreMock: VMforStoreProtocol {
    var stores: [StoreProtocol] = [
        StoreMock(storeID: "1", storeName: "1", isActive: 1, imagesP: StoreImagesMock(banner: "https://thumbs.dreamstime.com/b/woman-yoga-meditating-silhouette-nature-sunset-background-76892465.jpg", logo: "https://thumbs.dreamstime.com/b/woman-yoga-meditating-silhouette-nature-sunset-background-76892465.jpg", icon: "https://thumbs.dreamstime.com/b/woman-yoga-meditating-silhouette-nature-sunset-background-76892465.jpg")),
        StoreMock(storeID: "2", storeName: "2", isActive: 1, imagesP: StoreImagesMock(banner: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg", logo: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg", icon: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg"))]
    
    
    func getImage(forStore store: StoreProtocol) -> String {
        store.imagesP.banner
    }
    
    
}

final class StoreMock: StoreProtocol {
    var storeID: String
    var storeName: String
    var isActive: Double
    var imagesP: StoreImagesProtocol
    
    init(storeID: String, storeName: String, isActive: Double, imagesP: StoreImagesProtocol) {
        self.storeID = storeID
        self.storeName = storeName
        self.isActive = isActive
        self.imagesP = imagesP
    }
}

final class StoreImagesMock : StoreImagesProtocol {
    var banner: String
    var logo: String
    var icon: String
    
    init(banner: String, logo: String, icon: String) {
        self.banner = banner
        self.logo = logo
        self.icon = icon
    }
    
}

final class VMforDealsMock: VMforDealsProtocol {
    var deals: [DealsProtocol] = [
        DealsMock(title: "Title", dealID: "dealID", storeID: "storeID", gameID: "gameID", salePrice: "100", normalPrice: "200", releaseDate: 12312312, lastChange: 123123213, dealRating: "GOOD", thumb: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg"),
        DealsMock(title: "Title", dealID: "dealID1", storeID: "storeID", gameID: "gameID", salePrice: "100", normalPrice: "200", releaseDate: 12312312, lastChange: 123123213, dealRating: "GOOD", thumb: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg"),
        DealsMock(title: "Title", dealID: "dealID2", storeID: "storeID", gameID: "gameID", salePrice: "100", normalPrice: "200", releaseDate: 12312312, lastChange: 123123213, dealRating: "GOOD", thumb: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg"),
        DealsMock(title: "Title", dealID: "dealID3", storeID: "storeID", gameID: "gameID", salePrice: "100", normalPrice: "200", releaseDate: 12312312, lastChange: 123123213, dealRating: "GOOD", thumb: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg"),
        DealsMock(title: "Title", dealID: "dealID4", storeID: "storeID", gameID: "gameID", salePrice: "100", normalPrice: "200", releaseDate: 12312312, lastChange: 123123213, dealRating: "GOOD", thumb: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg")]
    
    func fetchDeals() {
        self.deals = [
            DealsMock(title: "Title", dealID: "dealID", storeID: "storeID", gameID: "gameID", salePrice: "100", normalPrice: "200", releaseDate: 12312312, lastChange: 123123213, dealRating: "GOOD", thumb: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg"),
            DealsMock(title: "Title", dealID: "dealID1", storeID: "storeID", gameID: "gameID", salePrice: "100", normalPrice: "200", releaseDate: 12312312, lastChange: 123123213, dealRating: "GOOD", thumb: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg"),
            DealsMock(title: "Title", dealID: "dealID2", storeID: "storeID", gameID: "gameID", salePrice: "100", normalPrice: "200", releaseDate: 12312312, lastChange: 123123213, dealRating: "GOOD", thumb: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg"),
            DealsMock(title: "Title", dealID: "dealID3", storeID: "storeID", gameID: "gameID", salePrice: "100", normalPrice: "200", releaseDate: 12312312, lastChange: 123123213, dealRating: "GOOD", thumb: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg"),
            DealsMock(title: "Title", dealID: "dealID4", storeID: "storeID", gameID: "gameID", salePrice: "100", normalPrice: "200", releaseDate: 12312312, lastChange: 123123213, dealRating: "GOOD", thumb: "https://thumbs.dreamstime.com/b/silhouette-athlete-runner-running-sunset-active-healthy-lifestyle-morning-sunrise-woman-trail-ocean-landscape-92091135.jpg")]
    }
    
    
}

final class DealsMock: DealsProtocol {
    var title: String
    var dealID: String
    var storeID: String
    var gameID: String
    var salePrice: String
    var normalPrice: String
    var metacriticScore: String?
    var steamRatingText: String?
    var steamRatingPercent: String?
    var steamRatingCount: String?
    var steamAppID: String?
    var releaseDate: Double
    var lastChange: Double
    var dealRating: String
    var thumb: String?
    
    init(title: String, dealID: String, storeID: String, gameID: String, salePrice: String, normalPrice: String, metacriticScore: String? = nil, steamRatingText: String? = nil, steamRatingPercent: String? = nil, steamRatingCount: String? = nil, steamAppID: String? = nil, releaseDate: Double, lastChange: Double, dealRating: String, thumb: String? = nil) {
        self.title = title
        self.dealID = dealID
        self.storeID = storeID
        self.gameID = gameID
        self.salePrice = salePrice
        self.normalPrice = normalPrice
        self.metacriticScore = metacriticScore
        self.steamRatingText = steamRatingText
        self.steamRatingPercent = steamRatingPercent
        self.steamRatingCount = steamRatingCount
        self.steamAppID = steamAppID
        self.releaseDate = releaseDate
        self.lastChange = lastChange
        self.dealRating = dealRating
        self.thumb = thumb
    }
}
