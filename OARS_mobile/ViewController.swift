//
//  ViewController.swift
//  OARS_mobile
//
//  Created by Alexios Ladikos on 10/11/17.
//  Copyright © 2017 q21. All rights reserved.
//

import UIKit
import JTAppleCalendar

class ViewController: UIViewController {
    let formatter = DateFormatter()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
    extension ViewController: JTAppleCalendarViewDelegate, JTAppleCalendarViewDataSource{
        
        func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
            formatter.dateFormat = "yyyy MM dd"
            formatter.timeZone = Calendar.current.timeZone
            formatter.locale = Calendar.current.locale
            
            let startDate = formatter.date(from: "2017 10 19")
            let endDate = formatter.date(from:"2050 10 19")

            let parameters = ConfigurationParameters(startDate:startDate!,endDate:endDate!)
            return parameters
        }
        func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState cellstate: CellState,indexPath: IndexPath)-> JTAppleCell {
            
            let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
            cell.dateLabel.text = cellstate.text
            return cell;
        }
    }



