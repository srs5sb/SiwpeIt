//
//  AddItemViewController.swift
//  SwipeIt
//
//  Created by Katharine Xie on 2/12/17.
//  Copyright © 2017 Katharine Xie. All rights reserved.
//

import UIKit
import os.log

class AddItemViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var longTextField: UITextField!
    @IBOutlet weak var desTextField: UITextField!
    @IBOutlet weak var latTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    //MARK: Navigation
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
        print("here")
    }
    
    
    var myitem: BucketItem?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    // MARK: - Navigation

    
    //lets you configure a view controller before it's presneted
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
         guard let button = sender as? UIBarButtonItem, button === saveButton else {
         os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
         return
         }
         
         let name1 = nameTextField.text ?? ""
         let des1 = desTextField.text ?? ""
         var long1 = Double(longTextField.text!)
         var lat1 = Double(latTextField.text!)
         //let datepicker1 =
  
        datePicker.datePickerMode = UIDatePickerMode.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let selectedDate = dateFormatter.string(from: datePicker.date)
        
        //if no longitude or latitude
        if (long1 == nil) {
            long1 = 0;
        }
        if (lat1 == nil) {
            lat1 = 0
        }
        
         myitem = BucketItem(name: name1, des: des1, longi: long1!, lat: lat1!, date: selectedDate, checked: false)
        
    }

}
