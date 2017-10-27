//
//  HomeViewController.swift
//  OARS_mobile
//
//  Created by Alexios Ladikos on 10/16/17.
//  Copyright © 2017 q21. All rights reserved.
//

import UIKit
import LocalAuthentication
import Alamofire

class LoginController: UIViewController {

    
    @IBAction func action(_ sender: Any)
    {
        let context:LAContext = LAContext();
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error:nil){
            
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "We need your fingerprint", reply: {
                (wasSuccessful, error) in
                if (wasSuccessful){
                    print("Authentication Successful")
                    let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "Home")
                    self.show(vc as! UIViewController, sender: vc)
                  
                }else{
                    
                    print("Authentication Unsuccessful")
                }
            })
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("http://localhost:3000").validate().responseJSON { response in
            switch response.result {
            case .success:
                print("Validation Successful")
            case .failure(let error):
                print(error)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
