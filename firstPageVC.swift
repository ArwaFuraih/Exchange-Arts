//
//  firstPageVC.swift
//  InspireMeProject
//
//  Created by Arwa Alzahrani on 02/08/1443 AH.
//

import UIKit

class firstPageVC: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate
, UICollectionViewDelegate , UICollectionViewDataSource
,UICollectionViewDelegateFlowLayout
{

    
//    var BUTN = BTNN
    @IBOutlet weak var firstLBL: UILabel!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var tagLBL: UILabel!
    @IBOutlet weak var addBTN: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleTF: UITextField!
    @IBOutlet weak var paintingSTF: UITextField!
    @IBOutlet weak var MainCV: UICollectionView!
    @IBOutlet weak var secondLBL: UILabel!
    @IBOutlet weak var cancelBTN: UIButton!
    @IBOutlet weak var cvbtn: UIButton!
    var tagsArr = [ NSLocalizedString("Portrait", comment: "") , NSLocalizedString("Cities" , comment: ""), NSLocalizedString("People" , comment: ""),NSLocalizedString( "Music" , comment: ""), NSLocalizedString("Animal", comment: "")]
    
//    var BTN = BTNN
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLBL.text = NSLocalizedString("Name of piece:", comment: "")
        secondLBL.text = NSLocalizedString("Painting story: ", comment: "")
        tagLBL.text = NSLocalizedString("Tags:", comment: "")
        MainCV.delegate = self
        MainCV.dataSource = self
        titleTF.placeholder = NSLocalizedString("Enter your art piece name", comment: "")
        paintingSTF.placeholder = NSLocalizedString("Tell your artwork story", comment: "")
        addBTN.titleLabel?.text = NSLocalizedString("Add", comment: "")
        cancelBTN.titleLabel?.text = NSLocalizedString("Cancel", comment: "")
        segment.setTitle(NSLocalizedString("Waive", comment: ""), forSegmentAt: 0)
        segment.setTitle(NSLocalizedString("Lend", comment: ""), forSegmentAt: 1)
      
    
    }
    @IBAction func addBTN(_ sender: Any) {
       
    }


    
 
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let mydata = segue.destination as? secondPageVC{
//
//            mydata.myData = paintingSTF.text!
//
//
//        }
//
//        if let titdata = segue.destination as? secondPageVC{
//            titdata.titleData = titleTF.text!
//
//        }
//    }
    
    @IBAction func uploadBTN(_ sender: Any) {
        
        showPhotoAlert()
    }
    
    func showPhotoAlert() {
        let alert = UIAlertController(title: NSLocalizedString("Upload photo from:", comment: ""), message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Camera", comment: ""), style: .default, handler: {action in
            
        }))
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("Photo library", comment: ""), style: .default, handler: {action in
            
        }))
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style:.cancel, handler: {action in
            
        }))
        
        present(alert, animated: true, completion: nil)
        
    }

    func getPhoto( type : UIImagePickerController.SourceType){
        let picker = UIImagePickerController()
        picker.sourceType = type
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true, completion: nil)
        
    }


    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        dismiss(animated: true, completion: nil)
        guard let Image = info[.originalImage] as? UIImage else {
            
            print("Image not found")
            return
    }
        imageView.image = Image
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tagsArr.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MainCV.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! tagsCollectionView
        cell.BTNN.setTitle(tagsArr[indexPath.row], for: .normal)
//        cell.BTNN.titleLabel!.sizeToFit()
//        cell.BTNN.titleLabel!.textColor = .gray
        return cell
    }
    
}
