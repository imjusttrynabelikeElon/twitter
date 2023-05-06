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
    let userName: String
    let comments: String
    let numberOfComments: Int
    let retweet: String
    let numberOfRetweets: Int
    let likes: String
    let numberOfLikes: Int
    let views: String
    let numberOfViews: Int
    let share: String
    
 
}



class MyTableViewCell: UITableViewCell {
    
    
    let nameLabel = UILabel()
    let messageLabel = UILabel()
    let profileImageView = UIImageView()
    let titleLabel = UILabel()
    let userNameLabel = UILabel()
    let commentsLabel = UIImageView()
    let numberOfCommentsLabel = UILabel()
    let retweetsLabel = UIImageView()
    let numberOfRetweetsLabel = UILabel()
    let likesLabel = UIImageView()
    let numberOfLikesLabel = UILabel()
    let viewsLabel = UIImageView()
    let numberOfViewsLabel = UILabel()
    let shareLabel = UIImageView()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        commentsLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        numberOfCommentsLabel.translatesAutoresizingMaskIntoConstraints = false
        retweetsLabel.translatesAutoresizingMaskIntoConstraints = false
        numberOfRetweetsLabel.translatesAutoresizingMaskIntoConstraints = false
        likesLabel.translatesAutoresizingMaskIntoConstraints = false
        numberOfLikesLabel.translatesAutoresizingMaskIntoConstraints = false
        viewsLabel.translatesAutoresizingMaskIntoConstraints = false
        numberOfViewsLabel.translatesAutoresizingMaskIntoConstraints = false
        shareLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        /*
    
         let commentsLabel = UILabel()
         let numberOfCommentsLabel = UILabel()
         let retweetsLabel = UILabel()
         let numberOfRetweetsLabel = UILabel()
         let likesLabel = UILabel()
         let numberOfLikesLabel = UILabel()
         let viewsLabel = UILabel()
         let numberOfViewsLabel = UILabel()
         let shareLabel = UILabel()
         */
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(messageLabel)
        contentView.addSubview(profileImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(userNameLabel)
        contentView.addSubview(commentsLabel)
        contentView.addSubview(numberOfCommentsLabel)
        contentView.addSubview(retweetsLabel)
        contentView.addSubview(numberOfRetweetsLabel)
        contentView.addSubview(likesLabel)
        contentView.addSubview(numberOfLikesLabel)
        contentView.addSubview(viewsLabel)
        contentView.addSubview(numberOfViewsLabel)
        contentView.addSubview(shareLabel)
        
        NSLayoutConstraint.activate([
            
            
            profileImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            profileImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            profileImageView.widthAnchor.constraint(equalToConstant: 50),
            profileImageView.heightAnchor.constraint(equalToConstant: 50),
            
            nameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -16),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50),
            
            userNameLabel.trailingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 243),
            userNameLabel.leadingAnchor.constraint(equalTo: profileImageView.leadingAnchor, constant: 167),
            userNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            
            messageLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
            messageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: -6),
            messageLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            messageLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            commentsLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: -16),
            commentsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 13),
            
            numberOfCommentsLabel.leadingAnchor.constraint(equalTo: commentsLabel.trailingAnchor, constant: 5),
            numberOfCommentsLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: -16),
            
            retweetsLabel.leadingAnchor.constraint(equalTo: numberOfCommentsLabel.trailingAnchor, constant: 19),
            retweetsLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: -16),
            
           numberOfRetweetsLabel.leadingAnchor.constraint(equalTo: retweetsLabel.trailingAnchor, constant: 8),
            numberOfRetweetsLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: -16),
            
            likesLabel.leadingAnchor.constraint(equalTo: numberOfCommentsLabel.trailingAnchor, constant: 107),
            likesLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: -16),
            
            numberOfLikesLabel.leadingAnchor.constraint(equalTo: commentsLabel.leadingAnchor, constant: 183),
            numberOfLikesLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: -16),
            
            viewsLabel.leadingAnchor.constraint(equalTo: numberOfCommentsLabel.trailingAnchor, constant: 195),
            viewsLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: -16),
            
            numberOfViewsLabel.leadingAnchor.constraint(equalTo: numberOfCommentsLabel.trailingAnchor, constant: 228),
            numberOfViewsLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: -16),
            
            
            shareLabel.leadingAnchor.constraint(equalTo: numberOfCommentsLabel.trailingAnchor, constant: 276),
            shareLabel.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: -16)
            
            /*
             
             let commentsLabel = UILabel()
             let numberOfCommentsLabel = UILabel()
             let retweetsLabel = UILabel()
             let numberOfRetweetsLabel = UILabel()
             let likesLabel = UILabel()
             let numberOfLikesLabel = UILabel()
             let viewsLabel = UILabel()
             let numberOfViewsLabel = UILabel()
             let shareLabel = UILabel()
             */
            
            
        ])
        
        // Set the corner radius of the image view
        profileImageView.layer.cornerRadius = 3.0
        profileImageView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
             
    
    
    func configure(with tweet: Tweet) {
        
        nameLabel.text = tweet.name
        messageLabel.text = tweet.message
        profileImageView.image = UIImage(named: tweet.profileImageName)
        titleLabel.text = tweet.title
        userNameLabel.text = tweet.userName
        commentsLabel.image = UIImage(systemName: "message")
        numberOfCommentsLabel.text = "\(tweet.numberOfComments)"
        retweetsLabel.image = UIImage(systemName: "repeat")
        numberOfRetweetsLabel.text = "\(tweet.numberOfRetweets)"
        likesLabel.image = UIImage(systemName: "suit.heart")
        numberOfLikesLabel.text = "\(tweet.numberOfLikes)"
        viewsLabel.image = UIImage(systemName: "eye.fill")
        numberOfViewsLabel.text = "\(tweet.numberOfViews)"
        shareLabel.image = UIImage(systemName: "tray.and.arrow.down.fill")
        
        
    }
    // the amount right amount of things that has to be able
    
}



class twitterHomeFeedTableView: UITableViewController {

  
    let twitterLogoImageView = UIImageView(image: UIImage(named: "twitterLogo"))
    let addTweetbutton = UIButton(frame: CGRect(x: 150, y: 130, width: 89, height: 64))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    
        
        
        
        
        
        
        /*
    
         let commentsLabel = UILabel()
         let numberOfCommentsLabel = UILabel()
         let retweetsLabel = UILabel()
         let numberOfRetweetsLabel = UILabel()
         let likesLabel = UILabel()
         let numberOfLikesLabel = UILabel()
         let viewsLabel = UILabel()
         let numberOfViewsLabel = UILabel()
         let shareLabel = UILabel()
         */
 
        tabBarController?.delegate = self

        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: "tweetCell")

        
        // Set the delegate of the UITabBarController to self
         self.tabBarController?.delegate = self
       
       tableView.translatesAutoresizingMaskIntoConstraints = false
        twitterLogoImageView.translatesAutoresizingMaskIntoConstraints = false
        addTweetbutton.translatesAutoresizingMaskIntoConstraints = false
        
        
      
        /*
    
         let commentsLabel = UILabel()
         let numberOfCommentsLabel = UILabel()
         let retweetsLabel = UILabel()
         let numberOfRetweetsLabel = UILabel()
         let likesLabel = UILabel()
         let numberOfLikesLabel = UILabel()
         let viewsLabel = UILabel()
         let numberOfViewsLabel = UILabel()
         let shareLabel = UILabel()
         */

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
        
        Tweet(name: "Karon Bell", message: "Just had the best pizza ever 🍕🤤", profileImageName: "kb", title: "", userName: "@karonbell", comments: "KUOH", numberOfComments: 44, retweet: "KIHUOL", numberOfRetweets: 63, likes: "IKUHU", numberOfLikes: 73, views: "KUHO", numberOfViews: 54, share: "IHLPHI"),
        Tweet(name: "NBA", message: "Can't wait to go on vacation next week 🌴🌊", profileImageName: "nba", title: "", userName: "@nba", comments: "KUOH", numberOfComments: 21, retweet: "KIHUOL", numberOfRetweets: 23, likes: "IKUHU", numberOfLikes: 23, views: "KUHO", numberOfViews: 54, share: "IHLPHI"),
        Tweet(name: "Google", message: "Finished my first marathon today! 🏃‍♀️💪", profileImageName: "google", title: "", userName: "@google", comments: "KUOH", numberOfComments: 21, retweet: "KIHUOL", numberOfRetweets: 23, likes: "IKUHU", numberOfLikes: 23, views: "KUHO", numberOfViews: 54, share: "IHLPHI"),
        Tweet(name: "Mark Zuck", message: "facebook is my day job 😆", profileImageName: "markkk", title: "", userName: "@marky", comments: "KUOH", numberOfComments: 21, retweet: "KIHUOL", numberOfRetweets: 23, likes: "IKUHU", numberOfLikes: 23, views: "KUHO", numberOfViews: 54, share: "IHLPHI"),
        Tweet(name: "Elon Musk", message: "I love this app can you tell?🤣", profileImageName: "elom", title: "", userName: "@elonMusk", comments: "KUOH", numberOfComments: 21, retweet: "KIHUOL", numberOfRetweets: 23, likes: "IKUHU", numberOfLikes: 23, views: "KUHO", numberOfViews: 54, share: "IHLPHI"),
        Tweet(name: "justin Bieber", message: "will you be my Baby?♥️", profileImageName: "jb", title: "", userName: "@justinBieber", comments: "KUOH", numberOfComments: 21, retweet: "KIHUOL", numberOfRetweets: 23, likes: "IKUHU", numberOfLikes: 23, views: "KUHO", numberOfViews: 54, share: "IHLPHI")
        
        
        /*
    
         let commentsLabel = UILabel()
         let numberOfCommentsLabel = UILabel()
         let retweetsLabel = UILabel()
         let numberOfRetweetsLabel = UILabel()
         let likesLabel = UILabel()
         let numberOfLikesLabel = UILabel()
         let viewsLabel = UILabel()
         let numberOfViewsLabel = UILabel()
         let shareLabel = UILabel()
         */
        
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
        return 111
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
