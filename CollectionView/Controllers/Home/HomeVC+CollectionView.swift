//
//  HomeVC+CollectionView.swift
//  CollectionView
//
//  Created by Mobark Alseif on 11/04/1443 AH.
//

import Foundation
import UIKit



extension HomeVC : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func setDelegate() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return method.mehodsData.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionCell else {return UICollectionViewCell()}
        
        cell.titleLabel.text = method.mehodsData[indexPath.row].rawValue
        cell.backgroundColor = .red
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            let alert = UIAlertController(title: "Hi", message: nil, preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Ok", style: .destructive, handler: nil))
            present(alert, animated: true, completion: nil)
        case 1:
            performSegue(withIdentifier: "toDetals", sender: nil)
        default:
            print("")
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) - 12, height: (view.frame.height) / 3)
    }
    
}
