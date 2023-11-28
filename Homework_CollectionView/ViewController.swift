//
//  ViewController.swift
//  Homework_CollectionView
//
//  Created by Vlad on 27.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    var textForHorizontalCell: [String] = ["Personal", "Политика", "НБ", "Recruters", "ученики"]
    
    var circles: [UIImage] = []
    
    var textForFirstLabel: [String] = ["Недвижимость НБ/Копище", "Авиционная 45 - Новоя боровая", "ТЦ \"Центральный парк - 7\"", "Правление ТС \"ЦП7\"", "Избранное", "Центральный парк. Новая Боровая"]
    var textForSecondLabel: [String] = ["Ольга", "Сергей", "Андрей", "Артем", "Анжела", "Полина"]
    var textForThirdLabel: [String] = ["Продам 3х комнатную (85 кв) с террасой", "Спасибо", "Фото", "Добрый день", "Фото", "Как дела"]
    
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        for item in 0...5 {
            circles.append(UIImage(named: "cat\(item)")!)
        }
        
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
        switch section {
        case 0:
            return textForHorizontalCell.count
        case 1:
            return 6
        default:
            fatalError()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        switch indexPath.section {
        case 0:
            let cellHorizontal = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontalCollectionViewCell.identifier, for: indexPath) as! HorizontalCollectionViewCell
            
            cellHorizontal.textLabel.text = textForHorizontalCell[indexPath.row]
            
            return cellHorizontal
        case 1:
            let cellVertical = collectionView.dequeueReusableCell(withReuseIdentifier: VerticalCollectionViewCell.identifier, for: indexPath) as! VerticalCollectionViewCell
            
            cellVertical.imageView.image = circles[indexPath.row]
            cellVertical.firstLabel.text = textForFirstLabel[indexPath.row]
            cellVertical.secondLabel.text = textForSecondLabel[indexPath.row]
            cellVertical.thirdLabel.text = textForThirdLabel[indexPath.row]
            
            return cellVertical
        default:
            fatalError()
        }
        
    }
}

extension ViewController: UICollectionViewDelegate {
    
}
