//
//  ViewController.swift
//  3rd_hw_DoHyeonhak
//
//  Created by 도현학 on 9/24/24.
//

import UIKit

class ViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setTabBar()
    }
    
    func setTabBar() {
        
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController: SearchViewController())
        let vc3 = UINavigationController(rootViewController: ComingSoonViewController())
        let vc4 = UINavigationController(rootViewController: DownloadViewController())
        let vc5 = UINavigationController(rootViewController: MoreViewController())
        
        
        self.viewControllers = [vc1, vc2, vc3, vc4, vc5]
        self.tabBar.tintColor = .white
        self.tabBar.backgroundColor = .black
        self.tabBar.barTintColor = .black
        
        
        guard let tabBarItems = self.tabBar.items else {return}
        tabBarItems[0].image = UIImage(named: "home")
        tabBarItems[0].title = "Home"
        tabBarItems[1].image = UIImage(named: "lenz")
        tabBarItems[1].title = "Search"
        tabBarItems[2].image = UIImage(named: "video")
        tabBarItems[2].title = "Coming Soon"
        tabBarItems[3].image = UIImage(named: "download")
        tabBarItems[3].title = "Download"
        tabBarItems[4].image = UIImage(named: "3lines")
        tabBarItems[4].title = "More"
        
    }

}

