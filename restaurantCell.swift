//
//  restaurantCell.swift
//  prac
//
//  Created by Camyl Fernandez on 2/27/23.
//
// XibTwitterTableViewCell.swift
// https://github.com/luisligunas/CSCI-181.03-Layouting/blob/main/Layout%20Test%20App/XibTwitter/XibTwitterTableViewCell.swift
// NOTE: This class name should be set as the custom class of the table view cell in `XibTwitterTableViewCell.xib
// class name = custom class of the table view cell named "hello" in the View Storyboard AKA restaurantCell
import UIKit

struct XibTweet {
        var text: String
        var image: UIImage?
        var isTextHidden: Bool = false
        var isTweetHorizontal: Bool = false
    }

class restaurantCell: UITableViewCell {
    @IBOutlet weak var restaurantLabel: UILabel!
    @IBOutlet weak var restaurantImageView: UIImageView!
    
}
