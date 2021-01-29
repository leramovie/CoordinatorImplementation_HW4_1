//
//  MainTabBar.swift
//  VKontakte
//
//  Created by Valery Shel on 28.01.2021.
//

import UIKit

class MainNavigationTabBarController: UITabBarController {
    
    let loginVC = UINavigationController(rootViewController: LoginViewController())
    let feedVC = UINavigationController(rootViewController: FeedViewController())

    let loginBarItem: UITabBarItem = {
        let item = UITabBarItem()
        item.image = UIImage(systemName: "rectangle.grid.1x2.fill")
        item.title = "Profile"
        
        return item
    }()
   
    let feedBarItem: UITabBarItem = {
        let item = UITabBarItem()
        item.image = UIImage(systemName: "info.circle.fill")
        item.title = "Feed"
        
        return item
    }()
    
    
    override func viewDidLoad() {
        tabBar.unselectedItemTintColor =  UIColor(named: "SystemGray2")
        tabBar.barTintColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
   
        setupNavigationTabBar()
    }
    
    private func setupNavigationTabBar() {
        
        loginVC.tabBarItem = loginBarItem
        feedVC.tabBarItem = feedBarItem
     
        let tabBarList = [loginVC, feedVC]
        
        viewControllers = tabBarList
    }

}
