//
//  twitterHomeFeedTableView.swift
//  twitter
//
//  Created by Karon Bell on 5/4/23.
//

import Foundation
import UIKit

struct Tweet {
    let name: String
    let message: String
    let profileImageName: String
    let title: String
    
    static let dummyData: [Tweet] = [
        Tweet(name: "John Smith", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", profileImageName: "profile1", title: "First Tweet"),
        Tweet(name: "Jane Doe", message: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.", profileImageName: "profile2", title: "Second Tweet"),
        Tweet(name: "Bob Johnson", message: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", profileImageName: "profile3", title: "Third Tweet")
    ]
}



class MyTableViewCell: UITableViewCell {
    
    
    let nameLabel = UILabel()
    let messageLabel = UILabel()
    let profileImageView = UIImageView()
    let titleLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(messageLabel)
        contentView.addSubview(profileImageView)
        contentView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            profileImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            profileImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            profileImageView.widthAnchor.constraint(equalToConstant: 50),
            profileImageView.heightAnchor.constraint(equalToConstant: 50),
            
            nameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            messageLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
            messageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            messageLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            messageLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with tweet: Tweet) {
        nameLabel.text = tweet.name
        messageLabel.text = tweet.message
        profileImageView.image = UIImage(named: tweet.profileImageName)
        titleLabel.text = tweet.title
    }
}


class twitterHomeFeedTableView: UITableViewController {

  
    let twitterLogoImageView = UIImageView(image: UIImage(named: "twitterLogo"))
    let addTweetbutton = UIButton(frame: CGRect(x: 150, y: 130, width: 89, height: 64))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    
        
 
        tabBarController?.delegate = self

        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: "tweetCell")

        
        // Set the delegate of the UITabBarController to self
         self.tabBarController?.delegate = self
       
       tableView.translatesAutoresizingMaskIntoConstraints = false
        twitterLogoImageView.translatesAutoresizingMaskIntoConstraints = false
        addTweetbutton.translatesAutoresizingMaskIntoConstraints = false
        
      

        NSLayoutConstraint.activate([
         //   tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         //   tableView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
         //   tableView.widthAnchor.constraint(equalTo: view.widthAnchor),
         //   tableView.heightAnchor.constraint(equalToConstant: 300),
            
         //   twitterLogoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          ///  twitterLogoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
          //  twitterLogoImageView.widthAnchor.constraint(equalToConstant: 59),
          //  twitterLogoImageView.heightAnchor.constraint(equalToConstant: 34),
            
          //  addTweetbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          //  addTweetbutton.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
          //  addTweetbutton.widthAnchor.constraint(equalToConstant: 89),
           // addTweetbutton.heightAnchor.constraint(equalToConstant: 64)
        ])

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }

    
    let tweets: [Tweet] = [
        Tweet(name: "John Smith", message: "Just had the best pizza ever 🍕🤤", profileImageName: "profile1", title: "Foodie"),
        Tweet(name: "Emma Brown", message: "Can't wait to go on vacation next week 🌴🌊", profileImageName: "profile2", title: "Travel enthusiast"),
        Tweet(name: "Sarah Johnson", message: "Finished my first marathon today! 🏃‍♀️💪", profileImageName: "profile3", title: "Fitness junkie")
    ]

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tweetCell", for: indexPath) as? MyTableViewCell else {
            fatalError("Unable to dequeue TweetTableViewCell")
        }
        
        let tweet = tweets[indexPath.row]
        cell.configure(with: tweet)
        return cell

    }


    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}


extension twitterHomeFeedTableView: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        // Check if the selected view controller belongs to the "For you" tab
        if let currentViewController = self.tabBarController?.selectedViewController,
           currentViewController.tabBarItem.title == "Following" {
            // Reload the table view data if the current view controller is the "For you" tab
            tableView.reloadData()
            print("JGHV")
        }
    }
}
