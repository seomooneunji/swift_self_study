//
//  ViewController.swift
//  CollectionVeiw
//
//  Created by eunji on 2018. 7. 26..
//  Copyright © 2018년 eunji. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // collection view 에 필요한 3가지 기본적인 func //
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row == 1 {
            let CellB = collectionView.dequeueReusableCell(withReuseIdentifier: "CellB", for: indexPath) as! CellBCollectionViewCell
            return CellB
        }
        
        let CellA = collectionView.dequeueReusableCell(withReuseIdentifier: "CellA", for: indexPath) as! CellACollectionViewCell
        return CellA
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.row == 1 {
            return CGSize(width: view.frame.width, height: 140)
            // 스토리보드에서 오토레이아웃으로 적용해주면안되낭 ? - 스토리보드에서 오토레이아웃 적용을 못하게 되어있음..
        }
        
        return CGSize(width: view.frame.width, height: 450)
        
        
    }
    
      
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

