//
//  newArtPieceVC.swift
//  InspireMeProject
//
//  Created by Arwa Alzahrani on 03/08/1443 AH.
//

import UIKit

class newArtPieceVC: UIViewController {


    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var profileView: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var storyLBL: UILabel!
    @IBOutlet weak var chooseBTN: UIButton!

    @IBOutlet weak var waiverBTN: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLBL.text! = NSLocalizedString("I spent 3 hours working on the begining of this art piece , I stoped work on it since I lost my passion when my tablet has broken , I’m interesting to see how can someone finish it in different way.", comment: "")
        waiverBTN.layer.cornerRadius = 11
        chooseBTN.titleLabel?.text = NSLocalizedString("Choose", comment: "")
        waiverBTN.titleLabel?.text = NSLocalizedString("Waiver", comment: "")
        waiverBTN.titleLabel?.font = .systemFont(ofSize: 11)
        
    }
    
    
    

  

}
