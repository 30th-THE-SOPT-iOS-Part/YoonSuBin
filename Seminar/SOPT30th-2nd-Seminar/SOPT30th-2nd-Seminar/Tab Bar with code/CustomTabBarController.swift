//
//  CustomTabBarController.swift
//  SOPT30th-2nd-Seminar
//
//  Created by subinyoon on 2022/04/09.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setTabBarController()
    }
    
    // 함수 작성 - 탭 바 컨트롤러 세팅
    func setTabBarController() {
        
        // 1. 스토리보드 상 뷰 컨트롤러를 안전하게 가져와 인스턴스화 하는 작업
        // - 사용할 화면, 연결할 화면 가져오기
        guard let firstViewController = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController"),
              let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        else { return }
        
        // 2. 탭 바 아이템 설정
        firstViewController.tabBarItem = UITabBarItem(
            title: "First Tab",
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        
        secondViewController.tabBarItem = UITabBarItem(
            title: "Second Tab",
            image: UIImage(named: "Home"),
            selectedImage: UIImage(named: "Home-1")
        )
        
        // 3. 연결 (화면들과 탭 바 컨트롤러)
        setViewControllers([firstViewController, secondViewController], animated: true)
    }

}
