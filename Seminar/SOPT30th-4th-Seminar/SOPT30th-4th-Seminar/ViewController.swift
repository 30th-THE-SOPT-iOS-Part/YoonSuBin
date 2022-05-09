//
//  ViewController.swift : 서버 통신 코드를 View Controller에서 호출
//  SOPT30th-4th-Seminar
//
//  Created by subinyoon on 2022/05/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginBtnDidTap(_ sender: Any) {
        print("tapped")
        login()
    }
}

extension ViewController {
    func login() {
        guard let name = nameTextField.text else { return }
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        UserService.shared.login(
            name: name,
            email: email,
            password: password) { response in
                switch response {
                case .success(let data):
                    guard let data = data as? LoginResponse else { return }
                    print(data)
                    self.alert(message: data.message!)
                case .requestErr(let err):
                    print(err)
                case .pathErr:
                    print("pathErr")
                case .serverErr:
                    print("serverErr")
                case .networkFail:
                    print("networkFail")
                }
            }
    }
    // 알림창을 띄우는 함수입니다.
    func alert(message: String) {
        let alertVC = UIAlertController(title: message, message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        alertVC.addAction(okAction)
        present(alertVC, animated: true)
    }
}
