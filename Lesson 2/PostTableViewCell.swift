//
//  PostTableViewCell.swift
//  Lesson 2
//
//  Created by Роман Антоняк on 15.12.2020.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var postTextLabel: UILabel!
    @IBOutlet weak var likeCounterLabel: UILabel!
    
    var likesNumber = 0 {
        willSet {
            likeCounterLabel.text = "\(newValue)"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func dislikeTapped(_ sender: UIButton) {
      likesNumber -= 1
    }
    
    @IBAction func likeTapped(_ sender: UIButton) {
        likesNumber += 1
    }
}
