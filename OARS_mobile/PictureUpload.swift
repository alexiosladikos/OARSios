//
//  PictureUpload.swift
//  OARS_mobile
//
//  Created by Alexios Ladikos on 10/17/17.
//  Copyright © 2017 q21. All rights reserved.
//

import UIKit

class PictureUpload: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        myImage.layer.borderWidth = 1
//        myImage.layer.masksToBounds = false
////        myImage.layer.borderColor = UIColor.blackColor().CGColor
//        myImage.layer.cornerRadius = myImage.frame.height/2
//        myImage.clipsToBounds = true
        // Do any additional setup after loading the view.
  
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func GoToCalendar(_ sender: Any) {
        }
    @IBAction func chooseImage(_ sender: Any) {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        
        let actionSheet = UIAlertController(title: "Photo Source", message: "Choose a source", preferredStyle: . actionSheet)
        actionSheet.addAction(UIAlertAction(title:"Camera", style: .default, handler:{(action:UIAlertAction) in
            if(UIImagePickerController.isSourceTypeAvailable(.camera)){
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)
            }else{
                print("camera not available")
            }
        }))
        actionSheet.addAction(UIAlertAction(title:"Photo Library", style: .default, handler:{(action:UIAlertAction) in imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true, completion: nil)

        }))
        actionSheet.addAction(UIAlertAction(title:"Cancel", style: .cancel, handler: nil))
        self.present(actionSheet, animated: true, completion: nil)

    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        myImage.image = image
        saveImage ()
        myImage.transform = myImage.transform.rotated(by: CGFloat(Double.pi/2))

        picker.dismiss(animated: true, completion: nil)
            
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
       
    }
    func saveImage (){
        
            let imageData:NSData = UIImagePNGRepresentation(myImage.image!)! as NSData
            UserDefaults.standard.set(imageData, forKey: "savedImage")
            let data = UserDefaults.standard.object(forKey: "savedImage") as! NSData
            myImage.image = UIImage(data:data as Data)
      
    }
}
