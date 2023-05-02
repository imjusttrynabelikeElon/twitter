//
//  createAccountPage.swift
//  twitter
//
//  Created by Karon Bell on 5/2/23.
//

import Foundation
import UIKit




class createAccountPage: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nextButton.addTarget(self, action: #selector(nextButtonn), for: .touchUpInside)
        
        
    }
    
    @objc func nextButtonn() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
      
        let vc2 = storyboard.instantiateViewController(withIdentifier: "tabBar")
        vc2.modalPresentationStyle = .fullScreen // set the modalPresentationStyle
        self.present(vc2, animated: true, completion: nil)
    }
}
