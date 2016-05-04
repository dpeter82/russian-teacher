//
//  BasicWordsViewController.swift
//  RussianTeacher
//
//  Created by Aliaksei Paverany on 02/05/16.
//  Copyright © 2016 Dudas, Peter. All rights reserved.
//

import UIKit

class BasicWordsViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        BasicPhraceCategoryPicker.dataSource = self
        BasicPhraceCategoryPicker.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return DataModel.sharedInstance.categories.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return DataModel.sharedInstance.categories[row].name
    }
    


    @IBOutlet weak var BasicPhraceCategoryPicker: UIPickerView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
