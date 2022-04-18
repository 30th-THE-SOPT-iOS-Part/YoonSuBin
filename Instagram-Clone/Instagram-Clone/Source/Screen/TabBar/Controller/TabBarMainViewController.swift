//
//  TabBarMainViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/17.
//

import UIKit

class TabBarMainViewController:
    UITabBarController,
    UITabBarControllerDelegate {

    // MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        setTabBarVC()
    }

    // MARK: - Custom Method Part
    private func setDelegate() {
      self.delegate = self
    }
    
    private func tabBarColor() {
      self.tabBar.unselectedItemTintColor = .black
    }
    
    private func setTabBarVC() {
        guard let reelsVC = UIStoryboard(name: "Reels", bundle: nil).instantiateViewController(withIdentifier: "ReelsViewController") as? ReelsViewController else {return}
        tabBarController(self, didSelect: reelsVC)
    }
    
    public func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        tabBarReverseCustom()
    }
}
