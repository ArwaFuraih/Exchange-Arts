//
//  ViewController.swift
//  Myexchangepage
//
//  Created by Sara Ahmed Alshammari on 29/07/1443 AH.
//

import UIKit
// Array of photos and artist information
class ExchangeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout , UISearchBarDelegate, UISearchControllerDelegate{
    @IBOutlet weak var BuildingButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!

    @IBOutlet weak var FoodsButton: UIButton!
    @IBOutlet weak var NaureButton: UIButton!
    
    @IBOutlet weak var AnimalsButton: UIButton!
    @IBOutlet weak var MusicButton: UIButton!
    @IBOutlet weak var searchbar: UISearchBar!
    var arryPlates: [Plates]  = [
        
        Plates(PlatesImage: UIImage(named: "dog")!, ProfileImage: UIImage(named: "Alice")!, PlatesName: NSLocalizedString("Animal", comment: ""), PlatesDescription: NSLocalizedString("I painted a brown dog with an incomplete body, M colors were used", comment: ""), ArtistName: NSLocalizedString("Alice", comment: ""), Platesstatus: NSLocalizedString("Lend", comment: "")),
        Plates(PlatesImage: UIImage(named: "face")!, ProfileImage: UIImage(named: "Alanoud")!, PlatesName: NSLocalizedString("Face", comment: ""), PlatesDescription: NSLocalizedString("Unfinshed face for women paint mixed feelings for painted ", comment: ""), ArtistName:NSLocalizedString( "Alany", comment: ""), Platesstatus: NSLocalizedString("wiaver", comment: "")),
        Plates(PlatesImage: UIImage(named: "Pieces")!, ProfileImage: UIImage(named: "Laila")!, PlatesName: NSLocalizedString("Pieces", comment: ""), PlatesDescription: NSLocalizedString("Piece of art nead to complate It goes back to an ancient time ", comment: ""), ArtistName: NSLocalizedString("Laila", comment: ""), Platesstatus: NSLocalizedString("wiaver", comment: "")),
        Plates(PlatesImage: UIImage(named: "Building")!, ProfileImage: UIImage(named: "Hany")!, PlatesName: NSLocalizedString("Building", comment: ""), PlatesDescription: NSLocalizedString("Drawing of an old building piece of art nead to complate ", comment: ""), ArtistName:NSLocalizedString( "Hany", comment: ""), Platesstatus: NSLocalizedString("wiaver", comment: "")),
        Plates(PlatesImage: UIImage(named: "Artiest")!, ProfileImage: UIImage(named: "Ram")!, PlatesName: NSLocalizedString("Artiest", comment: ""), PlatesDescription: NSLocalizedString("A family drawing dating back to the ancient times piece of art and people relaxing", comment: ""), ArtistName: NSLocalizedString("Ram", comment: ""), Platesstatus: NSLocalizedString("wiaver", comment: "")),
        Plates(PlatesImage: UIImage(named: "Sketch")!, ProfileImage: UIImage(named: "Hany")!, PlatesName: NSLocalizedString("Sketch", comment: ""), PlatesDescription: NSLocalizedString("FInitial drawing of a girl without colors nead to be done", comment: ""), ArtistName: NSLocalizedString("Hany", comment: ""), Platesstatus: NSLocalizedString("Lend", comment: ""))]
 


    
    var searchActive : Bool = true
    

    var  searcging = false
    var searchPlates = [Plates]()
    
    
    let searchController = UISearchController(searchResultsController: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        searchbar.delegate = self
        searchPlates = arryPlates
        
        NaureButton.setTitle(NSLocalizedString("Nature", comment: ""), for: .normal)
        BuildingButton.setTitle(NSLocalizedString("Builiding", comment: ""), for: .normal)
        FoodsButton.setTitle(NSLocalizedString("Foods", comment: ""), for: .normal)
        MusicButton.setTitle(NSLocalizedString("Music", comment: ""), for: .normal)
        AnimalsButton.setTitle(NSLocalizedString("Animals", comment: ""), for: .normal)
        
    }
    
    

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
     
        if searchText.isEmpty
            {

                searchActive = false
                collectionView.reloadData()

            }

            else {
                
                searchActive = true

            
            searchPlates = arryPlates.filter { team in
                team.ArtistName.range(of: searchText, options: .caseInsensitive) != nil
                || team.PlatesName.contains { item in
                    team.PlatesName.range(of: searchText, options: .caseInsensitive) != nil
                }
                
            }
            
            collectionView.reloadData()
            
            }

        
    }
    
    
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if searchActive {
            return searchPlates.count
        } else {
            return arryPlates.count
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "platesCell", for: indexPath) as! PlatesCollectionViewCell
        if searchActive {
            let plate = searchPlates[indexPath.row]
            cell.setupCell(PlatesImage: plate.PlatesImage, ProfileImage: plate.ProfileImage, PlatesName: plate.PlatesName, PlatesDescription: plate.PlatesDescription, ArtistName: plate.ArtistName, Platesstatus: plate.Platesstatus)
        }
        else {
            let plate = arryPlates[indexPath.row]
            cell.setupCell(PlatesImage: plate.PlatesImage, ProfileImage: plate.ProfileImage, PlatesName: plate.PlatesName, PlatesDescription: plate.PlatesDescription, ArtistName: plate.ArtistName, Platesstatus: plate.Platesstatus)
            
            
        }
        
        
        cell.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00)
        
        cell.layer.cornerRadius = 22
        cell.layer.shadowOffset = CGSize(width: 0, height: 0.9)
        
        
       
        for _ in arryPlates{
            if cell.Statusplates.text == "Lend"   {
                cell.Statusplates.backgroundColor = UIColor(red: 0.49, green: 0.05, blue: 0.02, alpha: 1.00)
                cell.Statusplates.textColor = .white
            }     else if cell.Statusplates.text == "استعارة"{
                cell.Statusplates.backgroundColor = UIColor(red: 0.49, green: 0.05, blue: 0.02, alpha: 1.00)
                cell.Statusplates.textColor = .white
                
                
            } else if cell.Statusplates.text == "wiaver"  {
                
                cell.Statusplates.backgroundColor = UIColor(red: 0.18, green: 0.47, blue: 0.24, alpha: 1.00)
                cell.Statusplates.textColor = .white
            }
            else if cell.Statusplates.text == "تنازل" {
                
                cell.Statusplates.backgroundColor = UIColor(red: 0.18, green: 0.47, blue: 0.24, alpha: 1.00)
                cell.Statusplates.textColor = .white
            }
        }
        cell.Statusplates.layer.cornerRadius = 3
        cell.Statusplates.clipsToBounds = true

        return cell
        
   
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: (self.view.frame.width / 2) - 12, height: 300)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    
}




struct Plates {
    let PlatesImage : UIImage
    let ProfileImage : UIImage
    let PlatesName : String
    let PlatesDescription : String
    var ArtistName : String
    let Platesstatus : String
    
    
    
}

