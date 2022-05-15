//
//  HomeTableViewCell.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/28.
//

import UIKit

final class HomeFeedTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    static let identifier = "HomeFeedTableViewCell"
    public var likesButtonEvent : (() -> Void)?
    public var likesCount: Int!
    
    var model: HomeFeedDataModel? {
        didSet {
            guard let model = model else { return }
            setDataModel(feedData: model)
        }
    }
    
    // MARK: - UI Component Part
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileUsernameLabel: UILabel!
    @IBOutlet weak var moreButton: UIButton!
    
    @IBOutlet weak var imageCollectionView: UICollectionView!
    
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
        registerNib()
    }
    
    // MARK: - IBAction Part
    @IBAction func likeBtnDidTap(_ sender: UIButton) {
        sender.isSelected.toggle()
        likesButtonEvent?()
    }
    
    // MARK: - Feed Data Model과 연결
    func setDataModel(feedData: HomeFeedDataModel) {
        
        likesCount = feedData.likes

        profileImageView.image = .load(named: feedData.profileImage)
        profileUsernameLabel.text = feedData.profileUsername
        
        photoPageControl.numberOfPages = feedData.photo.count
                        
        likeLabel.text = "좋아요 \(feedData.likes)개"
        userCaptionLabel.text = feedData.userCaption
        viewAllCommentsButton.setTitle("댓글 \(feedData.comments)개 모두 보기", for: .normal)
    }
    
    // MARK: - CollectionView registerNib Part
    func registerNib() {
        
        let collectionNib = UINib(nibName: HomeFeedCollectionViewCell.identifier, bundle: nil)
        imageCollectionView.register(collectionNib, forCellWithReuseIdentifier: HomeFeedCollectionViewCell.identifier)
        
        imageCollectionView.delegate = self
        imageCollectionView.dataSource = self
    }
}

// MARK: - UICollectionView Delegate, DataSource
extension HomeFeedTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    /// imageCollectionView를 스크롤하면 pageControl의 currentPage도 같이 변경하는 메서드
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let page = Int(targetContentOffset.pointee.x / self.frame.width)
        photoPageControl.currentPage = page
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model?.photo.count ?? 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = imageCollectionView.dequeueReusableCell(withReuseIdentifier: HomeFeedCollectionViewCell.identifier, for: indexPath) as? HomeFeedCollectionViewCell else { return UICollectionViewCell() }
        cell.setImageModel(feedImage: model?.photo[indexPath.row] ?? "")

        return cell
    }
}

// MARK: - UICollectionView DelegateFlowLayout
/// 추가 셋팅 :  컬렉션 뷰 셀 정렬, 간격 지정
extension HomeFeedTableViewCell: UICollectionViewDelegateFlowLayout {
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         
         let width = UIScreen.main.bounds.width
         let height = width * (340/375)
         return CGSize(width: width, height: height)
     }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
         return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
     }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
         return 0
     }
 }
