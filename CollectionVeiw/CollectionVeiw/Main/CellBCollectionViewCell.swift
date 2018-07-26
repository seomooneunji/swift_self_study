//
//  CellBCollectionViewCell.swift
//  CollectionVeiw
//
//  Created by eunji on 2018. 7. 26..
//  Copyright © 2018년 eunji. All rights reserved.
//

import UIKit

class CellBCollectionViewCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (frame.width-40)/3 , height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let ItemCellB = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCellB", for: indexPath) as! ItemCellBCollectionViewCell
        return ItemCellB
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    }
}
