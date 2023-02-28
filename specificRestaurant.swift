//
//  specificRestaurant.swift
//  prac
//
//  Created by Camyl Fernandez on 2/27/23.
//

import UIKit
    
class specificRestaurant: UIViewController {
    @IBOutlet weak var specificRestaurantImageView: UIImageView!
    @IBOutlet weak var specificRestaurantLabel: UILabel!
    
    var restaurant: Restaurant? // Declare a variable to hold the selected restaurant
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let restaurant = restaurant {
            specificRestaurantLabel.text = restaurant.name
            specificRestaurantImageView.image = UIImage(named: restaurant.imageName)
        }
    }
}
