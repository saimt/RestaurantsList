//
//  ServerManager.swift
//  WoltAssignemnt
//
//  Created by Saim on 18/01/2020.
//  Copyright © 2020 Saim. All rights reserved.
//

import Foundation
class ServerManager {
    
    public static func readData(completion: @escaping(Any)->Void) {
        if let path = Bundle.main.path(forResource: "restaurants", ofType: "json") {
            do {
                  let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                  let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                  if let jsonResult = jsonResult as? Dictionary<String, AnyObject>, let restaurants = jsonResult["restaurants"] as? [Any] {
                    completion(restaurants)
                }
              } catch {
                   // handle error
              }
        }
    }
}
