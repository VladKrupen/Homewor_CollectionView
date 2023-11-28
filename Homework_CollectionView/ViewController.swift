//
//  ViewController.swift
//  Homework_CollectionView
//
//  Created by Vlad on 27.11.23.
//

import UIKit

class ViewController: UIViewController {

    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        setupCollectionView()
        
    }
    
    func setupCollectionView() {
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(HorizontalCollectionViewCell.self, forCellWithReuseIdentifier: HorizontalCollectionViewCell.identifier)
        
        collectionView.register(VerticalCollectionViewCell.self, forCellWithReuseIdentifier: VerticalCollectionViewCell.identifier)
    }
    
    
}

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        switch indexPath.section {
        case 0:
            let cellHorizontal = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontalCollectionViewCell.identifier, for: indexPath) as! HorizontalCollectionViewCell
            
           
            return cellHorizontal
        case 1:
            let cellVertical = collectionView.dequeueReusableCell(withReuseIdentifier: VerticalCollectionViewCell.identifier, for: indexPath) as! VerticalCollectionViewCell
        
            return cellVertical
        default:
            fatalError()
        }
        
    }
}

extension ViewController: UICollectionViewDelegate {
    
}


