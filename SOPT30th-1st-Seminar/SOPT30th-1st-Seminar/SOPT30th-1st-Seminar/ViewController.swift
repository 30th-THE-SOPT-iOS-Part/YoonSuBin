//
//  ViewController.swift
//  SOPT30th-1st-Seminar
//
//  Created by subinyoon on 2022/04/02.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = "아요미에 참가하시겠습니까?"
    }
    
    @IBAction func yesButton(_ sender: Any) {
        messageLabel.text = "ㅎㅇ 아요미 참여 완료 *^^*"
        messageLabel.textColor = .blue
        messageLabel.sizeToFit()
        AudioServicesPlayAlertSound(SystemSoundID(1307))
        
        guard let yesVC = self.storyboard?.instantiateViewController(withIdentifier: "YesViewController") as? YesViewController else { return }
        
        yesVC.name = nameTextField.text
    
      //  yesVC.modalPresentationStyle = .pageSheet
      //  self.present(yesVC, animated: true, completion: nil)
        
        self.navigationController?.pushViewController(yesVC, animated: true)
        
        
    }
    
    @IBAction func noButton(_ sender: Any) {
        messageLabel.text = "??? 다시 생각해 보세요."
        messageLabel.sizeToFit()
        messageLabel.textColor = .red
        
        guard let noVC = self.storyboard?.instantiateViewController(withIdentifier: "NoViewController") else { return }
        
        noVC.modalTransitionStyle = .crossDissolve
        self.present(noVC, animated: true, completion: nil)
    }
}

