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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func importmage(_ sender: AnyObject){
//        let image = UIImagePickerController()
//        image.delegate = self
//        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
//        image.allowsEditing = false
//        self.present(image, animated: true){
//            
//        }
//        
//    }
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//        if let image = info[UIImagePickerControllerOriginalImage] as?UIImage{
//            myImage.image=image
//        }else{
//           //error message
//        }
//        self.dismiss(animated: true, completion: nil) 
//            
//        
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
