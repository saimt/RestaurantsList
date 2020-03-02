//
//  ModelsStructs.swift
//  SourceryDemo
//
//  Created by Apple on 21/03/2019.
//  Copyright © 2019 Hassan. All rights reserved.
//

import Foundation

protocol RestaurantsProtocol {
    
}
struct Response: RestaurantsProtocol {
    ///sourcery: jsonKey = "blurhash"
    public let blurHash: String
    ///sourcery: jsonKey = "city"
    public let name1: Int
    ///sourcery: jsonKey = "delivery_price"
    public let deliveryPrice: Int
    ///sourcery: jsonKey = "description"
    public let descriptionString: String
    ///sourcery: jsonKey = "image"
    public let image: String
    ///sourcery: jsonKey = "location"
    public let location: [Int]
    ///sourcery: jsonKey = "name"
    public let name: String
    ///sourcery: jsonKey = "online"
    public let online: Bool
    ///sourcery: jsonKey = "tags"
    public let tags: [String]
    ///sourcery: jsonKey = "currency"
    public let currency: String
}

