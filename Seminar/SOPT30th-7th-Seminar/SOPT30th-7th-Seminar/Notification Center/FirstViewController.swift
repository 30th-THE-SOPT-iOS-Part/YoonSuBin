//
//  FirstViewController.swift
//  SOPT30th-7th-Seminar
//
//  Created by subinyoon on 2022/05/29.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func fireOnTapped(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("Fire"), object: "불 났어요!!")
    }

    @IBAction func fireOffTapped(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("TurnOff"), object: "불 꺼요~")
    }
}
