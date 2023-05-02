//
//  twitterTabBar.swift
//  twitter
//
//  Created by Karon Bell on 5/1/23.
//

import Foundation
import UIKit



class TwitterTabBar: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         
         */

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = storyboard.instantiateViewController(withIdentifier: "tabBar")
        vc1.modalPresentationStyle = .fullScreen // set the modalPresentationStyle
        self.present(vc1, animated: true, completion: nil)
    }
}
