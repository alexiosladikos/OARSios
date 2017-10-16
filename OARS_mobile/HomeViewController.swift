//
//  HomeViewController.swift
//  OARS_mobile
//
//  Created by Alexios Ladikos on 10/16/17.
//  Copyright © 2017 q21. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var Messages: UITabBarItem!
    @IBOutlet weak var Journal: UITabBarItem!
    @IBOutlet weak var Progress: UITabBarItem!
    @IBOutlet weak var Calendar: UITabBarItem!
    @IBOutlet weak var Education: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
