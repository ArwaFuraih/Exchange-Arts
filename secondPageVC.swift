//
//  secondPageVC.swift
//  InspireMeProject
//
//  Created by Arwa Alzahrani on 02/08/1443 AH.
//

import UIKit

class secondPageVC: UIViewController {

 
    @IBOutlet weak var titleLBL: UILabel!
    @IBOutlet weak var storyLBL: UILabel!
    @IBOutlet weak var face2pic: UIImageView!
    var myData = ""
    var titleData = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLBL.text = myData
        titleLBL.text = titleData
        
    }
    
    @IBAction func doneBTN(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is firstPageVC {
            
        }
    }
  

}
