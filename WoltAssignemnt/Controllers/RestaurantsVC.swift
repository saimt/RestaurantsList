//
//  ViewController.swift
//  WoltAssignemnt
//
//  Created by Saim on 18/01/2020.
//  Copyright © 2020 Saim. All rights reserved.
//

import UIKit
import SDWebImage
class RestaurantsVC: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var tblRestaurants: UITableView!
    
    //MARK: Variables
    var restaurantsData = [RestaurantsResponse]()
    var isAscending = false
    //MARK: Load
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    //MARK: Methods
    func loadData() {
        ServerManager.readData { (data) in
            if let restaurantArray = data as? Array<Any> {
                for item in restaurantArray {
                    let object = RestaurantsResponse(fromDictionary: item as! [String:Any])
                    self.restaurantsData.append(object)
                }
                self.sortData() // sort list
            }
        }
    }
    
    func sortData() {
        if isAscending {
            restaurantsData = restaurantsData.sorted(by: { $0.name!.lowercased() > $1.name!.lowercased() })
        }
        else {
           restaurantsData = restaurantsData.sorted(by: { $0.name!.lowercased() < $1.name!.lowercased() })
        }
        isAscending.toggle()
        self.tblRestaurants.reloadData()
    }

    //MARK: Actions
    @IBAction func btnSortAction(_ sender: UIBarButtonItem) {
        sortData()
    }
    
}


extension RestaurantsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantTCell") as! RestaurantTCell
        cell.lblName.text = restaurantsData[indexPath.row].name
        cell.lblDescription.text = restaurantsData[indexPath.row].descriptionString
        if !restaurantsData[indexPath.row].online! {
            cell.vwOnline.backgroundColor = .systemRed
        }
        else {
            cell.vwOnline.backgroundColor = .systemGreen
        }
        cell.imgRestaurant.sd_setImage(with: URL(string: restaurantsData[indexPath.row].image!), completed: nil)
        let price = "\(restaurantsData[indexPath.row].deliveryPrice!) \(restaurantsData[indexPath.row].currency!)"
        cell.lblPrice.text = price
        return cell
    }
    
    
}
