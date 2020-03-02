//
//  RestaurantTCell.swift
//  WoltAssignemnt
//
//  Created by Saim on 18/01/2020.
//  Copyright © 2020 Saim. All rights reserved.
//

import UIKit

class RestaurantTCell: UITableViewCell {

    @IBOutlet weak var vwBackground: UIView!
    @IBOutlet weak var imgRestaurant: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var vwOnline: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        initViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initViews() {
        vwBackground.layer.cornerRadius = 10
        vwBackground.dropShadow(scale: false)
        vwOnline.layer.cornerRadius = vwOnline.frame.height/2
        imgRestaurant.layer.cornerRadius = 7
    }
    

}
