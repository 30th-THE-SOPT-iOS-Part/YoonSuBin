//
//  ViewController.swift
//  SOPT30th-8th-Seminar
//
//  Created by subinyoon on 2022/06/25.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var box = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        self.view.addSubview(box)
        
        box.backgroundColor = .darkGray
        box.snp.makeConstraints {
            $0.width.height.equalTo(50)
            $0.center.equalTo(view)
        }
    }
}
