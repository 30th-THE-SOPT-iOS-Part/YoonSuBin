//
//  HomeTableViewCell.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/28.
//

import UIKit

class HomeFeedTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    static let identifier = "HomeFeedTableViewCell"
    public var likesButtonEvent : (() -> ())? // 좋아요 카운트 이벤트 클로저
    public var likesCount: Int!
    
    // MARK: - UI Component Part
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileUsernameLabel: UILabel!
    @IBOutlet weak var moreButton: UIButton!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    
    @IBOutlet weak var photoPageControl: UIPageControl!
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var userCaptionLabel: UILabel!
    @IBOutlet weak var viewAllCommentsButton: UIButton!

    // MARK: - awakeFromNib
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - IBAction Part
    @IBAction func photoPageChanged(_ sender: Any) {

    }
    
    @IBAction func likeBtnDidTap(_ sender: UIButton) {
        sender.isSelected.toggle()
        likesButtonEvent?() // 좋아요 카운트 이벤트
    }
    
    // MARK: - Feed Data Model과 연결
    func setDataModel(feedData: HomeFeedDataModel) {
        
        likesCount = feedData.likes // likes값 HomeViewController로 넘기기

        profileImageView.image = UIImage(named: feedData.profileImage)
        profileUsernameLabel.text = feedData.profileUsername
        
        photoImageView.image = UIImage(named: feedData.photo)
        
        likeLabel.text = "좋아요 \(feedData.likes)개"
        userCaptionLabel.text = feedData.userCaption
        viewAllCommentsButton.setTitle("댓글 \(feedData.comments)개 모두 보기", for: .normal)
    }
}
