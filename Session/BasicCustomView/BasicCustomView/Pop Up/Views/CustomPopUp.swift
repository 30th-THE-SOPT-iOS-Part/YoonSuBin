//
//  CustomPopUp.swift
//  BasicCustomView
//
//  Created by subinyoon on 2022/05/24.
//

import UIKit

class CustomPopUp: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if let touch = touches.first,
           touch.view == self.view {
            dismiss(animated: true)
        }
    }
}
