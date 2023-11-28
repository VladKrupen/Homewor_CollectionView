//
//  VerticalCollectionViewCell.swift
//  Homework_CollectionView
//
//  Created by Vlad on 27.11.23.
//

import UIKit

class VerticalCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "VerticalCollectionViewCell"
    
    let imageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let firstLabel = {
        let firstLabel = UILabel()
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        firstLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
        
        return firstLabel
    }()
    
    let secondLabel = {
        let secondLabel = UILabel()
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        secondLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 17)
        
        return secondLabel
    }()
    
    let thirdLabel = {
        let thirdLabel = UILabel()
        thirdLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return thirdLabel
    }()
    
    let horizontalStackView = {
        let horizontalStackView = UIStackView()
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView.axis = .horizontal
        
        return horizontalStackView
    }()
    
    let verticalStackView = {
        let verticalStackView = UIStackView()
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        verticalStackView.axis = .vertical
        
        return verticalStackView
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(horizontalStackView)
        
        horizontalStackView.addArrangedSubview(imageView)
        horizontalStackView.addArrangedSubview(verticalStackView)
        horizontalStackView.spacing = 5
        
        verticalStackView.addArrangedSubview(firstLabel)
        verticalStackView.addArrangedSubview(secondLabel)
        verticalStackView.addArrangedSubview(thirdLabel)
        verticalStackView.setCustomSpacing(5, after: secondLabel)
        
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 40
        
        NSLayoutConstraint.activate([
            horizontalStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            horizontalStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            horizontalStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            horizontalStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            imageView.widthAnchor.constraint(equalToConstant: 80),
            imageView.heightAnchor.constraint(equalToConstant: 80),
            
            verticalStackView.trailingAnchor.constraint(equalTo: horizontalStackView.trailingAnchor)
        ])
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

