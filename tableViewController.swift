//
//  tableViewController.swift
//  prac
//
//  Created by Camyl Fernandez on 2/27/23.
//  XibTwitterTableViewController.swift
// https://github.com/luisligunas/CSCI-181.03-Layouting/blob/main/Layout%20Test%20App/XibTwitter/XibTwitterTableViewController.swift

import UIKit

struct Restaurant {
    var imageName : String
    var name : String
}

class tableViewController: UITableViewController {
    var restaurants = [
        Restaurant(imageName: "jollibeeImage", name: "Jolibee"),
        Restaurant(imageName: "mcdoPic", name: "McDonald's"),
        Restaurant(imageName: "Wendys", name: "Wendy's"),
        Restaurant(imageName: "tacoBelll", name: "Taco Bell"),
        Restaurant(imageName: "kFc", name: "KFC"),
        Restaurant(imageName: "burgerKing", name: "Burger King")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(
                    UINib(nibName: "View", bundle: nil),
                    forCellReuseIdentifier: "hello"
                )
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: "hello",
                for: indexPath
            ) as? restaurantCell
            else { return UITableViewCell() }

            let restaurant = restaurants[indexPath.row]
            cell.restaurantLabel.text = restaurant.name
            cell.restaurantImageView.image = UIImage(named: restaurant.imageName)
            return cell
        }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let restaurant = restaurants[indexPath.row]
        goToDetailsViewController(restaurant: restaurant)
    }
    
    func goToDetailsViewController(restaurant: Restaurant) {
            let storyboard = UIStoryboard(name: "Storyboard", bundle: nil)
            guard let detailsViewController = storyboard.instantiateViewController(withIdentifier: "specific") as? specificRestaurant else { return }
        detailsViewController.restaurant = restaurant
        navigationController?.pushViewController(detailsViewController, animated: true)
        }
}
