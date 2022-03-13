//
//  SettingsViewController.swift
//  Artwork
//
//  Created by Arwa Alfuraih on 01/03/2022.
//

import UIKit

class SettingsViewController: UIViewController {

    
    
    @IBOutlet weak var accountInfo: UIView!
    @IBOutlet weak var appSettings: UIView!
    @IBOutlet weak var accountSettings: UILabel!
    @IBOutlet weak var lang: UILabel!
    @IBOutlet weak var logout: UILabel!
    @IBOutlet weak var pass: UILabel!
    @IBOutlet weak var mail: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var arrow: UIImageView!
    @IBOutlet weak var languageSelect: UISegmentedControl!
    @IBOutlet weak var alice: UILabel!
    
    
    override func viewDidLoad() {
        accountInfo.layer.cornerRadius = 22
        appSettings.layer.cornerRadius = 22
        super.viewDidLoad()
    
        
        
     //-----Translate----//
        
        accountSettings.text = NSLocalizedString("Account Settings", comment:"")
        lang.text = NSLocalizedString("Language", comment: "")
        pass.text = NSLocalizedString("Change Password", comment: "")
        mail.text = NSLocalizedString("Email", comment: "")
        name.text = NSLocalizedString("Name", comment: "")
        alice.text = NSLocalizedString("Alice Marc", comment:"")
    }
    
    
    //-----Change Language------//
    
    @IBAction func language(_ sender: UISegmentedControl) {
        
        let currentLang = Locale.current.languageCode
        let newLanguage = currentLang == "en" ? "ar" : "en"
        UserDefaults.standard.setValue([newLanguage], forKey: "AppleLanguages")
      
        switch sender.selectedSegmentIndex {
            
        case 0:
            let alert = UIAlertController ( title : "App Language" , message : "Please Change Your Device Language" , preferredStyle: .alert)
            let dismessButton = UIAlertAction(title: "Go to Settings", style: .default){
                (_) -> Void in

                        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
                            return
                        }
                   if UIApplication.shared.canOpenURL(settingsUrl) {
                           UIApplication.shared.open(settingsUrl, completionHandler: { (success) in
                               print("Settings opened: \(success)") // Prints true
                           })
                       }
                else
                {
                    print("Not Open!!")
                }
            }
            
            alert .addAction(dismessButton)
            self.present(alert, animated: true , completion: nil)
            print("English")
        case 1:
            let alert = UIAlertController ( title : "لغة التطبيق" , message : "الرجاء تغيير لغة التطبيق الى الانجليزية" , preferredStyle: .alert)
            let dismessButton = UIAlertAction(title: "فتح الاعدادات", style: .default){
                
                    (_) -> Void in

                            guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
                                return
                            }
                       if UIApplication.shared.canOpenURL(settingsUrl) {
                               UIApplication.shared.open(settingsUrl, completionHandler: { (success) in
                                   print("تم فتح الاعدادات \(success)") // Prints true
                               })
                           }
                else
                {
                    print("Not Open!!")
                }
            }
            alert .addAction(dismessButton)
            self.present(alert, animated: true , completion: nil)
            print("Arabic")
        default:
            print("")
        }
        
        
}
    
    @IBAction func logOut(_ sender: UIButton) {
        let alert = UIAlertController ( title : "LogOut" , message : "Are you sure you want to LogOut ?" , preferredStyle: .alert)
        let cancelButton = UIAlertAction(title: "Cancel", style: .default, handler: nil)
            
        alert .addAction(cancelButton)
        self.present(alert, animated: true , completion: nil)
        
    }

}
