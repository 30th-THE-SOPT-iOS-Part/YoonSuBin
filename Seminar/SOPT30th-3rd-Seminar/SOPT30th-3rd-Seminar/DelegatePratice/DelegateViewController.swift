//
//  DelegateViewController.swift
//  SOPT30th-3rd-Seminar
//
//  Created by subinyoon on 2022/04/23.
//

import UIKit

class DelegateViewController: UIViewController, SecondDelegateViewControllerDelegate {
    
    func sendData(data: String) { // 두 번째 실습
        dataLabel.text = data
    }
    
    // 첫 번째 실습
    @IBOutlet weak var textField: UITextField!
    
    // 두 번째 실습
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // textField.delegate = self // 첫 번째 실습
    }
    
    // 두 번째 실습
    @IBAction func nextButtonDidTap(_ sender: Any) {
        guard let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondDelegateViewController") as? SecondDelegateViewController else { return }
        
        secondVC.delegate = self
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

// 첫 번째 실습을 위한 익스텐션
extension DelegateViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 시작되었습니다 !!!")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Return 버튼이 눌렸어요~")
        textField.endEditing(true)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("텍스트 필드 편집이 끝났습니다 ~~! ")
    }
}
