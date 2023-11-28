//
//  HorizontalCollectionViewCell.swift
//  Homework_CollectionView
//
//  Created by Vlad on 27.11.23.
//

import UIKit

class HorizontalCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "HorizontalCollectionViewCell"
    
    let textLabel = {
        var textLabel = UILabel()
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.font = UIFont.systemFont(ofSize: 20)
        textLabel.textAlignment = .center
        
        return textLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(textLabel)
        
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            textLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


