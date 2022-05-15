//
//  UIImage+.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/05/04.
//

import UIKit

extension UIImage {
    
   static func load(named imageName: String) -> UIImage {
       /// String 타입으로 입력받은 이미지를 UIImage로 변환하는 함수입니다.
        guard let image = UIImage(named: imageName, in: nil, compatibleWith: nil) else { return UIImage() }
        image.accessibilityIdentifier = imageName
        return image
    }
    
    func resize(length: CGFloat) -> UIImage? {
        /// 이미지 비율을 맞춰 크기를 줄이는 함수입니다.
        let scale = length / self.size.width
        let newHeight = self.size.height * scale
        let size = CGSize(width: length, height: newHeight)
        let resizedImage = UIGraphicsImageRenderer(size: size).image {
            _ in draw(in: CGRect(origin: .zero, size: size)) }
        return resizedImage
    }
}
