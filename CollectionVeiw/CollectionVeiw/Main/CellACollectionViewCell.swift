//
//  CellACollectionViewCell.swift
//  CollectionVeiw
//
//  Created by eunji on 2018. 7. 26..
//  Copyright © 2018년 eunji. All rights reserved.
//

import UIKit

class CellACollectionViewCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (frame.width-30)/2 , height: 199)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let ItemCellA = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCellA", for: indexPath) as! ItemCellACollectionViewCell
        return ItemCellA
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    
    }
}
