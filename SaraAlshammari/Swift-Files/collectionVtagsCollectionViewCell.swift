//
//  collectionVtagsCollectionViewCell.swift
//  Myexchangepage
//
//  Created by Sara Ahmed Alshammari on 29/07/1443 AH.
//

import UIKit

class collectionVtagsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var tagsName: UILabel!
    
    
    func setCells(tagnames: String){

        tagsName.text = tagnames
    }
}
