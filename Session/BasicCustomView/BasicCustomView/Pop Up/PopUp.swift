//
//  PopUp.swift
//  BasicCustomView
//
//  Created by subinyoon on 2022/05/24.
//

import UIKit

class PopUp: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func showPopUpTapped(_ sender: Any) {
        print("팝업 띄우기 버튼 클릭")
        guard let customPopUp = self.storyboard?.instantiateViewController(withIdentifier: "CustomPopUp") as? CustomPopUp else { return }
        customPopUp.modalTransitionStyle = .crossDissolve
        customPopUp.modalPresentationStyle = .overFullScreen
        present(customPopUp, animated: true)
    }
}
