//
//  HomeFeedCollectionViewCell.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/05/06.
//

import UIKit

final class HomeFeedCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    static let identifier = "HomeFeedCollectionViewCell"

    // MARK: - UI Component Part
    @IBOutlet weak var feedImageView: UIImageView!
    
    // MARK: - awakeFromNib
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Story Data Model과 연결
    func setImageModel(feedImage: String){
        feedImageView.image = .load(named: feedImage)
    }
}
