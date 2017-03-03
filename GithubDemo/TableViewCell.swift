//
//  TableViewCell.swift
//  GithubDemo
//
//  Created by Arthur on 2017/2/16.
//  Copyright © 2017年 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class TableViewCell: UITableViewCell {

    @IBOutlet var repoName: UILabel!
    @IBOutlet var owner: UILabel!
  
    @IBOutlet var forkCount: UILabel!
    @IBOutlet var starCount: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var avater: UIImageView!
    @IBOutlet var star: UIImageView!
    @IBOutlet var fork: UIImageView!
    
    var repo: GithubRepo!
    {
        didSet
        {
            repoName.text = repo.name
            owner.text = "by " + repo.ownerHandle!
            star.image = #imageLiteral(resourceName: "star")
            fork.image = #imageLiteral(resourceName: "fork")
            avater.setImageWith(URL(string: "\(repo.ownerAvatarURL!)")!)
            descriptionLabel.text = repo.about
            forkCount.text = "\(repo.forks!)"
            starCount.text = "\(repo.stars!)"
            
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

}
