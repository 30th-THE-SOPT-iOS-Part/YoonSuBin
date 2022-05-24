//
//  CustomBottomSheet.swift
//  BasicCustomView
//
//  Created by subinyoon on 2022/05/24.
//

import UIKit

class CustomBottomSheet: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var containerHeight: NSLayoutConstraint!
    @IBOutlet weak var itemStackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if let touch = touches.first,
           touch.view == self.view {
            hideBottomSheetWithAnimation()
        }
    }
    
    private func setUI() {
        containerHeight.constant = 0
        containerView.layer.cornerRadius = 12
        containerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    @IBAction func cancelBtnTapped(_ sender: Any) {
        hideBottomSheetWithAnimation()
    }
    
}

// MARK: - Show/Hide Animation
extension CustomBottomSheet {
    func showBottomSheetWithAnimation() {
        UIView.animate(withDuration: 0.3) {
            self.containerHeight.constant = 330
            self.view.layoutIfNeeded()
        }
    }
    
    func hideBottomSheetWithAnimation() {
        UIView.animate(withDuration: 0.3) {
            self.containerHeight.constant = 0
            self.view.layoutIfNeeded()
        } completion: { _ in
            self.dismiss(animated: false)
        }
    }
}

