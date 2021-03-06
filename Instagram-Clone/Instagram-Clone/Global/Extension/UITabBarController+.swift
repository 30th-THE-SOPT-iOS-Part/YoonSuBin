//
//  UITabBarController+.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/17.
//

import UIKit

extension UITabBarController {
    /// 릴스 탭 바 클릭 시 아이템 색상과 에셋 색상을 반전시키는 함수입니다
    func tabBarReverseCustom(wantToChangeIndex: Int) {
        let isReelsSelected = (selectedIndex == 2)
        tabBar.backgroundColor = isReelsSelected ? .black : .white
        tabBar.tintColor = isReelsSelected ? .white : .black
        tabBar.unselectedItemTintColor = isReelsSelected ? .white : .black
    }
}
