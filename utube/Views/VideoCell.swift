//
//  VideoCell.swift
//  utube
//
//  Created by _coz on 2018/08/08.
//  Copyright © 2018 _coz. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews(){
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class VideoCell: BaseCell {
    let thumbnailImageView : UIImageView = {
        let thumbnail = UIImageView()
        thumbnail.image = UIImage(named: "doge")
        thumbnail.contentMode = .scaleAspectFill
        thumbnail.clipsToBounds = true
        return thumbnail
    }()
    
    let userProfileImageView : UIImageView = {
        let avatar = UIImageView()
        avatar.image = UIImage(named: "avatar")
        avatar.layer.cornerRadius = 22
        avatar.layer.masksToBounds = true
        return avatar
    }()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.text = "This is title of the video"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subLabel : UILabel = {
        let sub = UILabel()
        sub.text = "Coz Studiooooooooooooooooooooooooo"
        sub.textColor = UIColor.lightGray
        sub.translatesAutoresizingMaskIntoConstraints = false
        return sub
    }()
    
    let separator : UIView = {
        let line = UIView()
        line.backgroundColor = UIColor.gray
        return line
    }()
    
    override func setupViews(){
        addSubview(thumbnailImageView)
        addSubview(separator)
        addSubview(userProfileImageView)
        addSubview(titleLabel)
        addSubview(subLabel)
        
        addContraintsWithFormat(format: "V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", views: thumbnailImageView, userProfileImageView, separator )
        addContraintsWithFormat(format: "H:|-16-[v0]-16-|", views: thumbnailImageView)
        
        addContraintsWithFormat(format: "H:|-16-[v0(44)]", views: userProfileImageView)
        addContraintsWithFormat(format: "H:|[v0]|", views: separator)
        
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: thumbnailImageView, attribute: .bottom, multiplier: 1, constant: 8))
        
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        
        addConstraint(NSLayoutConstraint(item: subLabel, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 4))
        
        addConstraint(NSLayoutConstraint(item: subLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        
        addConstraint(NSLayoutConstraint(item: subLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        
        addConstraint(NSLayoutConstraint(item: subLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        
        
        
        //        addContraintsWithFormat(format: "H:|[v0]|", views: titleLabel)
        //        addContraintsWithFormat(format: "V:[v0(20)]", views: titleLabel)
    }
    
   
}

