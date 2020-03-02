// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Foundation


public class RestaurantsResponse: NSObject, NSCoding {
public var blurHash: String?
public var name1: Int?
public var deliveryPrice: Int?
public var descriptionString: String?
public var image: String?
public var location: [Int]?
public var name: String?
public var online: Bool?
public var tags: [String]?
public var currency: String?

/**
* Instantiate the instance using the passed dictionary values to set the properties values
*/
init(fromDictionary dictionary: [String: Any]) {
    self.blurHash = dictionary["blurhash"] as? String
    self.name1 = dictionary["city"] as? Int
    self.deliveryPrice = dictionary["delivery_price"] as? Int
    self.descriptionString = dictionary["description"] as? String
    self.image = dictionary["image"] as? String
    self.location = dictionary["location"] as? [Int]
    self.name = dictionary["name"] as? String
    self.online = dictionary["online"] as? Bool
    self.tags = dictionary["tags"] as? [String]
    self.currency = dictionary["currency"] as? String
}

/**
* Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
*/
func toDictionary() -> [String:Any] {
    var dictionary = [String:Any]()

    dictionary["blurhash"] = blurHash
    dictionary["city"] = name1
    dictionary["delivery_price"] = deliveryPrice
    dictionary["description"] = descriptionString
    dictionary["image"] = image
    dictionary["location"] = location
    dictionary["name"] = name
    dictionary["online"] = online
    dictionary["tags"] = tags
    dictionary["currency"] = currency

    return dictionary
}

/**
* NSCoding required method.
* Encodes mode properties into the decoder
*/
@objc public func encode(with aCoder: NSCoder) {
    if self.blurHash != nil {
        aCoder.encode(blurHash, forKey:"blurHash")
    }
    if self.name1 != nil {
        aCoder.encode(name1, forKey:"name1")
    }
    if self.deliveryPrice != nil {
        aCoder.encode(deliveryPrice, forKey:"deliveryPrice")
    }
    if self.descriptionString != nil {
        aCoder.encode(descriptionString, forKey:"descriptionString")
    }
    if self.image != nil {
        aCoder.encode(image, forKey:"image")
    }
    if self.location != nil {
        aCoder.encode(location, forKey:"location")
    }
    if self.name != nil {
        aCoder.encode(name, forKey:"name")
    }
    if self.online != nil {
        aCoder.encode(online, forKey:"online")
    }
    if self.tags != nil {
        aCoder.encode(tags, forKey:"tags")
    }
    if self.currency != nil {
        aCoder.encode(currency, forKey:"currency")
    }
}

/**
* NSCoding required initializer.
* Fills the data from the passed decoder
*/
required public init(coder aDecoder: NSCoder) {
    self.blurHash = aDecoder.decodeObject(forKey: "blurHash") as? String
    self.name1 = aDecoder.decodeObject(forKey: "name1") as? Int
    self.deliveryPrice = aDecoder.decodeObject(forKey: "deliveryPrice") as? Int
    self.descriptionString = aDecoder.decodeObject(forKey: "descriptionString") as? String
    self.image = aDecoder.decodeObject(forKey: "image") as? String
    self.location = aDecoder.decodeObject(forKey: "location") as? [Int]
    self.name = aDecoder.decodeObject(forKey: "name") as? String
    self.online = aDecoder.decodeObject(forKey: "online") as? Bool
    self.tags = aDecoder.decodeObject(forKey: "tags") as? [String]
    self.currency = aDecoder.decodeObject(forKey: "currency") as? String
}

}
