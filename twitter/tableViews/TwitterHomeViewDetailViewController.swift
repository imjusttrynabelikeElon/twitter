//
//  TwitterHomeViewDetailViewController.swift
//  twitter
//
//  Created by Karon Bell on 5/7/23.
//

import Foundation
import UIKit




class TwitterHomeViewDetailViewController: UIViewController {
    @IBOutlet weak var selectedLabel: UILabel!
    
    var selectedTweet: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("K")
        

        if let label = selectedLabel as UILabel? {
            view.addSubview(label)
            
            if let tweetToLoad = selectedTweet {
                label.text = tweetToLoad
                print(tweetToLoad)
            }
        }
    }
}
