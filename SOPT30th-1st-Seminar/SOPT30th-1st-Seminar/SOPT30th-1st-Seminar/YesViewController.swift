//
//  YesViewController.swift
//  SOPT30th-1st-Seminar
//
//  Created by subinyoon on 2022/04/02.
//

import UIKit

class YesViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getName()
    }
    /*
     present - dismiss : modal
     push - pop : navigation
     */
    
    @IBAction func backButtonDidTap1(_ sender: Any) {
        // self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }

    private func getName() {
        if let name = name {
            nameLabel.text = name
            nameLabel.sizeToFit()
        }
    }
}
