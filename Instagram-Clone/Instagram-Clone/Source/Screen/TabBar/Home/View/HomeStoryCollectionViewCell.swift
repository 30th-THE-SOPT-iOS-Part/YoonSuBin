//
//  HomeStoryCollectionViewCell.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/28.
//

import UIKit

class HomeStoryCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    static let identifier = "HomeStoryCollectionViewCell"
    
    // MARK: - UI Component Part
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileUsernameLabel: UILabel!
    
    // MARK: - awakeFromNib
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Story Data Model과 연결
    func setDataModel(storyData: HomeStoryDataModel) {
        profileImageView.image = UIImage(named: storyData.profileImage)
        profileUsernameLabel.text = storyData.profileUsername
    }
}
