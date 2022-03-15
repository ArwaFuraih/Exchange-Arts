//
//  ViewController.swift
//  MyContrcat
//
//  Created by Sara Ahmed Alshammari on 11/08/1443 AH.
//

import UIKit

class ContractViewController: UIViewController {

   
    @IBOutlet weak var declinee2: UIButton!
    @IBOutlet weak var acceptt: UIButton!
    @IBOutlet weak var part2_: UITextView!
    @IBOutlet weak var part1_: UITextView!

    @IBOutlet weak var btnMale: UIButton!
    
    @IBOutlet weak var part3: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        part1_.text = NSLocalizedString("The first party retains property rights. In the event of a violation or breach by the second party,the second party obligated to compensate the first party for psychological and material damage. The parties are also obligated to:", comment: "")
        part2_.text = NSLocalizedString("I, the owner of the painting allow the application to lend the painting to the second party under the condition of returning the painting , after the period of one month . In case the painting gets sold, the second party has the right to collect 40% and the application gets 10% of the selling price.", comment: "")

        part3.text = NSLocalizedString("I, the owner of the painting allow the application to lend the painting to the second party without return, and each party has the right to fully utilize the painting and the application gets 10% ", comment: "")

        acceptt.setTitle(NSLocalizedString("Accept", comment: ""), for: .normal)
        declinee2.setTitle(NSLocalizedString("Decline", comment: ""), for: .normal)
        
    }
    
  
    
    @IBAction func btnTapped(_ sender: Any) {
        
        if (sender as AnyObject).currentImage == UIImage(named: "off"){
        
            (sender as AnyObject).setImage(UIImage(named: "on"), for: .normal)
        
                }else{
        
                    (sender as AnyObject).setImage(UIImage(named: "off"), for: .normal)
                }
        
    }
    
    

   
    @IBAction func Declinealertview(_ sender: Any) {
    }
    
    @IBAction func Acceptalertview(_ sender: Any) {
        showAlertView()
        
    }

 
    func showAlertView(){
        let alert = UIAlertController(title: "Wohoo!", message: "You’ve uploaded your artwork to exchange successfully!", preferredStyle:.alert)

        let action = UIAlertAction(title:NSLocalizedString("Dismess", comment: ""),style: .default,
                    handler: nil)

        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        alert.title = NSLocalizedString("Wohoo!", comment: "")
        alert.message = NSLocalizedString("You’ve uploaded your artwork to exchange successfully!", comment: "")
        
        
    }
    
   
    
}




