//
//  HomeVC.swift
//  CollectionView
//
//  Created by Mobark Alseif on 11/04/1443 AH.
//

import UIKit

class HomeVC: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let method = Methods()
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        // Do any additional setup after loading the view.
    }

}
