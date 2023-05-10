//
//  CustomTabBar.swift
//  twitter
//
//  Created by Karon Bell on 5/2/23.
//
//
import Foundation
import UIKit

// okay the probelm is that the view only pushes when Its nav controller is the intalal view


import UIKit

class CustomTabBarController: UITabBarController, UITabBarControllerDelegate {

    var selectedCustomTabBarItem: CustomTabBarItem?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the delegate to self to receive tab bar selection events
        delegate = self

        // Set the custom tab bar
        let customTabBar = CustomTabBar()
        customTabBar.customTabBarController = self
        setValue(customTabBar, forKey: "tabBar")
    }

    func didSelectCustomTabBarItem(_ item: CustomTabBarItem) {
        // Set the selected item and switch to the corresponding tab
        selectedCustomTabBarItem = item
        selectedIndex = tabBar.items?.firstIndex(of: item) ?? 0
    }
}

class CustomTabBar: UITabBar {

    weak var customTabBarController: CustomTabBarController?
    private var lineView: UIView?

    override func draw(_ rect: CGRect) {
        super.draw(rect)

        // Remove any existing line view
        lineView?.removeFromSuperview()

        // Get the selected custom tab bar item
        guard let selectedCustomTabBarItem = customTabBarController?.selectedCustomTabBarItem else {
            return
        }

        // Add a blue line below the selected custom tab bar item
        let itemIndex = items?.firstIndex(of: selectedCustomTabBarItem) ?? 0
        let itemWidth = frame.width / CGFloat(items?.count ?? 1)
        let lineWidth: CGFloat = 0
        let lineX = itemWidth * CGFloat(itemIndex) + (itemWidth - lineWidth) / 2
        let lineY = frame.height - 6
        let lineView = UIView(frame: CGRect(x: lineX, y: lineY, width: lineWidth, height: 2))
        lineView.backgroundColor = UIColor.systemBlue
        addSubview(lineView)
        self.lineView = lineView
    }
}

class CustomTabBarItem: UITabBarItem {

    var customTabBarTitle: String?
    var customTabBarImage: UIImage?
    var customTabBarSelectedImage: UIImage?

    convenience init(title: String?, image: UIImage?, selectedImage: UIImage?, customTabBarTitle: String?, customTabBarImage: UIImage?, customTabBarSelectedImage: UIImage?) {
        self.init(title: title, image: image, selectedImage: selectedImage)
        self.customTabBarTitle = customTabBarTitle
        self.customTabBarImage = customTabBarImage
        self.customTabBarSelectedImage = customTabBarSelectedImage
    }
}
