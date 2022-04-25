//
//  SecondDelegateViewController.swift
//  SOPT30th-3rd-Seminar
//
//  Created by subinyoon on 2022/04/23.
//

import UIKit

protocol SecondDelegateViewControllerDelegate {
    func sendData(data: String)
}

class SecondDelegateViewController: UIViewController {
    @IBOutlet weak var dataTextField: UITextField!
    
    var delegate: SecondDelegateViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func sendDataButtonDidTap(_ sender: Any) {
        
        if let text = dataTextField.text {
            delegate?.sendData(data: text)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
}
