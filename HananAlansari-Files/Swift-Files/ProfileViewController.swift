//
//  ViewController.swift
//  Artist Profile3
//
//  Created by Hanan Alansari on 28/07/1443 AH.
//


import UIKit

class ProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var photoCollection: UICollectionView!
    @IBOutlet weak var segmented: UISegmentedControl!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var bio: UILabel!
    @IBOutlet weak var bioContent: UITextView!
    @IBOutlet weak var contact: UILabel!
    @IBOutlet weak var email: UITextView!
    @IBOutlet weak var edit: UIButton!
    @IBOutlet weak var edit2: UIButton!

    
    var dataSource = [f]()
    
    var photoArray1: [f] = [
        f.init(photo: "dog"),
        f.init(photo: "horsse2"),
        f.init(photo: "deer"),
        f.init(photo: "dog-1"),
        f.init(photo: "liionn"),
        f.init(photo: "bird")
    ]
    var photoArray2: [f] = [
        f.init(photo: "hh33"),
        f.init(photo: "deeer"),
        f.init(photo: "lliioo"),
        f.init(photo: "doo"),
        f.init(photo: "sq"),
        f.init(photo: "biir"),
        
    ]
    
    
    override func viewWillAppear(_ animated: Bool) {
        
       // edit.titleLabel?.text = NSLocalizedString("Edit Profile", comment: "")

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = NSLocalizedString("Artist Profile", comment: "")
        segmented.setTitle(NSLocalizedString("Exchange", comment: ""), forSegmentAt: 0)
        segmented.setTitle(NSLocalizedString("Shop", comment: ""), forSegmentAt: 1)
        
        
        artistName.text = NSLocalizedString("Alice Marc", comment: "")
        bio.text = NSLocalizedString("Bio", comment: "")
        bioContent.text = NSLocalizedString("A digital and traditional artist intersted in nature paintings", comment: "")
        contact.text = NSLocalizedString("Contact", comment: "")
        
        let attributedTitle = NSAttributedString(string: NSLocalizedString("Edit Profile", comment: ""))
        edit.setAttributedTitle(attributedTitle, for: .selected)
        edit.setAttributedTitle(attributedTitle, for: .normal)

        
        
        photoCollection.delegate = self
        photoCollection.dataSource = self
        
        
    }
    
    @IBAction func settingPressed(_ sender: UIBarButtonItem) {
        //TODO
        
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
            cell.photo.image = UIImage(named: photoArray1[indexPath.row].photo)
            return cell
        case 1 :
            cell.photo.image = UIImage(named: photoArray2[indexPath.row].photo)
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
    
    @IBAction func Segment(_ sender: UISegmentedControl) {
        photoCollection.reloadData()
        
    }
    
}

