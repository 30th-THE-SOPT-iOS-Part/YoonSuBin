//
//  MusicCollectionViewCell.swift
//  SOPT30th-3rd-Seminar
//
//  Created by subinyoon on 2022/04/23.
//

import UIKit

class MusicCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MusicCollectionViewCell"
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(albumData : AlbumDataModel) {
        albumImageView.image = UIImage(named: albumData.albumImageName)
        albumTitleLabel.text = albumData.albumTitle
        singerLabel.text = albumData.albumSinger
    }

}
