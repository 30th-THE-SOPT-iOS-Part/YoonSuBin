//
//  ThirdViewController.swift
//  SOPT30th-7th-Seminar
//
//  Created by subinyoon on 2022/05/29.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var fires: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fires.forEach { $0.isHidden = true }
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(notiReceived),
                                               name: NSNotification.Name("Fire"),
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(notiReceived2),
                                               name: NSNotification.Name("TurnOff"),
                                               object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func notiReceived(notification: NSNotification) {
        if let notification = notification.object {
            print(notification)
        }
        fires.forEach { $0.isHidden = false }
    }
    
    @objc func notiReceived2(notification: NSNotification) {
        if let notification = notification.object {
            print(notification)
        }
        fires.forEach { $0.isHidden = true }
    }
}
