//
//  creativityController.swift
//  mitchMcEntire_CSP
//
//  Created by Mcentire, Mitchell on 10/26/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import UIKit

class creativityController: UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    private let reuseIDentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow: CGFloat = 3
    
    private lazy var artSelection : [UIImage?] =
    {
        return [
            UIImage(named: "cute"),
            UIImage(named: "myArt")
        
        ]
    }()
    
    //var largePhotoIndexPath: IndexPath?
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
