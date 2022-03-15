//
//  PlatesCollectionViewCell.swift
//  Myexchangepage
//
//  Created by Sara Ahmed Alshammari on 29/07/1443 AH.
//

import UIKit

class PlatesCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var Statusplates: UILabel!
    
    @IBOutlet weak var imgPlates: UIImageView!
    
    @IBOutlet weak var sectionNamr: UILabel!
    
    @IBOutlet weak var platesDescription: UILabel!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var artistName: UILabel!
    
    func setupCell(PlatesImage: UIImage, ProfileImage: UIImage, PlatesName: String, PlatesDescription: String, ArtistName: String, Platesstatus: String){
        imgPlates.image = PlatesImage
        profileImage.image = ProfileImage
        sectionNamr.text = PlatesName
        artistName.text = ArtistName
        Statusplates.text = Platesstatus
      platesDescription.text = PlatesDescription
    }
 
}
