//
//  SecondViewController.swift
//  contract1
//
//  Created by Sara Ahmed Alshammari on 03/08/1443 AH.
//

import UIKit
// Contract page and required conditions
class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var DeclineButton: UIButton!
    
    @IBOutlet weak var AcceptButton: UIButton!
    
    @IBOutlet weak var partTow: UITextView!
    @IBOutlet weak var partOne: UITextView!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
       partOne.text = NSLocalizedString("The first party retains property rights. In the event of a violation or breach by the second party,the second party obligated to compensate the first party for psychological and material damage. The parties are also obligated to:", comment: "")
      partTow.text = NSLocalizedString("I, the owner of the painting allow the application to lend the painting to the second party under the condition of returning the painting , after the period of one month . In case the painting gets sold, the second party has the right to collect 40% and the application gets 10% of the selling price.", comment: "")

        AcceptButton.setTitle(NSLocalizedString("Accept", comment: ""), for: .normal)
        DeclineButton.setTitle(NSLocalizedString("Decline", comment: ""), for: .normal)
    }
   
    @IBAction func decline(_ sender: Any) {
    }
    
    @IBAction func accept2(_ sender: Any) {
        showAlertView2()
    }
    
    @IBAction func Declinealertview(_ sender: Any) {
        
    }


    
    
    func showAlertView2(){
        let alert1 = UIAlertController(title: "You’re All Set!", message: "You’ve agreed to the artists’ terms,Can’t wait to see your touch!", preferredStyle:.alert)

        let action1 = UIAlertAction(title:NSLocalizedString("Download Artwork", comment: ""),style: .default,
                    handler: nil)
               alert1.addAction(action1)
        present(alert1, animated: true, completion: nil)
        alert1.title = NSLocalizedString("You’re All Set!", comment: "")
        alert1.message = NSLocalizedString("You’ve agreed to the artists’ terms,Can’t wait to see your touch!", comment: "")
//        alert1.title = NSLocalizedString("Download Artwork", comment: "")
//        action1.value(forKey: "Download Artwork")
//        self.action1.title = NSLocalizedString("Download Artwork", comment: "")
//        action1.setValuesForKeys( NSLocalizedString("Download Artwork", comment: ""))
      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

