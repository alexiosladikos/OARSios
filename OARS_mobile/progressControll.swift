//
//  progressControll.swift
//  OARS_mobile
//
//  Created by Alexios Ladikos on 10/24/17.
//  Copyright © 2017 q21. All rights reserved.
//

import UIKit

class progressControll: UIViewController {
    @IBOutlet weak var segment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let font = UIFont.systemFont(ofSize: 9)
        segment.setTitleTextAttributes([NSAttributedStringKey.font : font],
                                                for: .normal)
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
