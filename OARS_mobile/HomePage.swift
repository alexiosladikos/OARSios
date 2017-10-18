//
//  HomePage.swift
//  OARS_mobile
//
//  Created by Alexios Ladikos on 10/18/17.
//  Copyright © 2017 q21. All rights reserved.
//

import UIKit
import Charts

class HomePage: UIViewController {
 
    @IBOutlet var pie1: PieChartView!
    @IBOutlet var pie2: PieChartView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        pieChartUpdate()
        makeChart(good:23,bad:45,medium:6,name:"PARTICIPATION",pie1: pie1)
        let entry1 = PieChartDataEntry(value: Double(34))
        let entry2 = PieChartDataEntry(value: Double(30))
        let entry3 = PieChartDataEntry(value: Double(20))
        let dataSet = PieChartDataSet(values: [entry1, entry2, entry3], label:"")
        let data = PieChartData(dataSet: dataSet)
        pie2.data = data
        pie2.chartDescription?.text = "ATTENDANCE"
        self.pie2.data?.getDataSetForEntry(entry1)?.addColor(UIColor.red)
        self.pie2.data?.getDataSetForEntry(entry2)?.addColor(UIColor.green)
        self.pie2.data?.getDataSetForEntry(entry3)?.addColor(UIColor.blue)
        self.pie2.data?.setDrawValues(false)
        pie1.legend.enabled =  false;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeChart(good:Double,bad:Double,medium:Double,name:String,pie1:PieChartView){
        let entry1 = PieChartDataEntry(value: Double(good))
        let entry2 = PieChartDataEntry(value: Double(bad))
        let entry3 = PieChartDataEntry(value: Double(medium))
        let dataSet = PieChartDataSet(values: [entry1, entry2, entry3], label:"")
        let data = PieChartData(dataSet: dataSet)
        pie1.data = data
        pie1.chartDescription?.text = name
        self.pie1.data?.getDataSetForEntry(entry1)?.addColor(UIColor.red)
        self.pie1.data?.getDataSetForEntry(entry2)?.addColor(UIColor.green)
        self.pie1.data?.getDataSetForEntry(entry3)?.addColor(UIColor.blue)
        self.pie1.data?.setDrawValues(false)
        pie1.legend.enabled =  false;
        
    }
    
    func pieChartUpdate () {
        //future home of pie chart code
    }
    @IBAction func renderCharts() {
        pieChartUpdate()
    }
}
