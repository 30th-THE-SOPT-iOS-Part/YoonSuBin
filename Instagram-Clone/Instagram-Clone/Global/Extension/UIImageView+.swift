//
//  UIImageView+.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/05/14.
//

import UIKit

extension UIImageView{
    /// img URL에서 이미지를 로드하는 함수입니다.
    func loadRandomImage(_ imgURL: String) {
        let url = URL(string: imgURL)
        if url != nil {
            DispatchQueue.global().async {
                guard let data = try? Data(contentsOf: url!) else { return }
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)?.resize(length: 375)
                }
            }
        }
    }
}
