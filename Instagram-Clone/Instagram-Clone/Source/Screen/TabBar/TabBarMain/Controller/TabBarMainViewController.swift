//
//  TabBarMainViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/17.
//

import UIKit

class TabBarMainViewController:
    UITabBarController {

    // MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        setTabBarColor()
    }

    // MARK: - Custom Method Part
    private func setDelegate() {
      self.delegate = self
    }
    
    private func setTabBarColor() {
      tabBar.unselectedItemTintColor = .black
    }
}

// MARK: - UITabBarController Delegate
extension TabBarMainViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        tabBarReverseCustom(wantToChangeIndex: 2)
    }
}
