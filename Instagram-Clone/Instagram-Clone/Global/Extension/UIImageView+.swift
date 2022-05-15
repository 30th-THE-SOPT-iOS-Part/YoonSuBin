//
//  UIImageView+.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/05/15.
//

import UIKit
import Kingfisher

extension UIImageView {
    func setImage(with urlString: String) {
          let cache = ImageCache.default
          cache.retrieveImage(forKey: urlString, options: nil) { result in
              switch result {
              case .success(let value):
                  if let image = value.image {
                      self.image = image
                  } else {
                      guard let url = URL(string: urlString) else { return }
                      let resource = ImageResource(downloadURL: url, cacheKey: urlString)
                      self.kf.setImage(with: resource)
                  }
              case .failure(let error):
                  print(error)
              }
          }
      }
}
