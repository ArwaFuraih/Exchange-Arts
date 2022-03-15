//
//  EditProfileVC.swift
//  Artist Profile3
//
//  Created by Hanan Alansari on 28/07/1443 AH.
//

import UIKit

class EditProfileVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    

    @IBOutlet weak var photoCollection2: UICollectionView!
    @IBOutlet weak var segmented: UISegmentedControl!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var bio: UILabel!
    @IBOutlet weak var bioContent: UITextView!
    @IBOutlet weak var contact: UILabel!
    @IBOutlet weak var email: UITextView!
    @IBOutlet weak var save: UIBarButtonItem!
    
    var photoArray1 = [UIImage(named: "dog"), UIImage(named: "horsse2"), UIImage(named: "deer"), UIImage(named: "dog-1"), UIImage(named: "liionn"), UIImage(named: "bird") ]
    
    var photoArray2 = [UIImage(named: "hh33"), UIImage(named: "deeer"), UIImage(named: "lliioo"), UIImage(named: "doo"), UIImage(named: "sq"), UIImage(named: "biir") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = NSLocalizedString("Artist Profile", comment: "")
        
        segmented.setTitle(NSLocalizedString("Exchange", comment: ""), forSegmentAt: 0)
        segmented.setTitle(NSLocalizedString("Shop", comment: ""), forSegmentAt: 1)
        
        artistName.text = NSLocalizedString("Alice Marc", comment: "")
        bio.text = NSLocalizedString("Bio", comment: "")
        bioContent.text = NSLocalizedString("A digital and traditional artist intersted in nature paintings", comment: "")
        contact.text = NSLocalizedString("Contact", comment: "")
        save.title = NSLocalizedString("Save", comment: "")
        photoCollection2.delegate = self
        photoCollection2.dataSource = self
      
        
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch segmented.selectedSegmentIndex{
        case 0:
            segmented.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
            return photoArray1.count
            
        case 1:
            segmented.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)

            return photoArray2.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCollectionViewCell
        
        switch segmented.selectedSegmentIndex{
        case 0 :
            cell.photo.image = photoArray1[indexPath.row]
            return cell
        case 1 :
            cell.photo.image = photoArray2[indexPath.row]
            return cell
        default:
            return UICollectionViewCell()
            
        }
    
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 130, height: 130)
}

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    @IBAction func segmentedPressed(_ sender: UISegmentedControl) {
        photoCollection2.reloadData()
    }
    
    
}
