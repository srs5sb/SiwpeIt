//
//  EditItemViewController.swift
//  SwipeIt
//
//  Created by Katharine Xie on 2/15/17.
//  Copyright © 2017 Katharine Xie. All rights reserved.
//

import UIKit
import os.log

class EditItemViewController: UIViewController {
    
    
    @IBOutlet weak var editNameField: UITextField!
    @IBOutlet weak var editLongField: UITextField!
    @IBOutlet weak var editLatField: UITextField!
    @IBOutlet weak var editDesField: UITextField!
    @IBOutlet weak var editDatePicker: UIDatePicker!
    
    
    
    @IBOutlet weak var editSave: UIBarButtonItem!
    
    @IBAction func editCancel(_ sender: UIBarButtonItem) {
            dismiss(animated: true, completion: nil)
            print("here")
    }
    
    var myitem:BucketItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    editNameField.text = myitem?.itemName
    
    let long = String(format:"%.2f", (myitem?.itemLong)!)
    editLongField.text = long
    
    let lat = String(format:"%.2f", (myitem?.itemLong)!)
    editLatField.text = lat
        
    editDesField.text = myitem?.itemDes

    //HOW TO MAKE A STRING TO DATE
    let strDate = myitem?.itemDate
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM/dd/yyyy"
    let DateA = dateFormatter.date(from:strDate!)
    editDatePicker.date = DateA!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        guard let button = sender as? UIBarButtonItem, button === editSave else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        
      
        let name1 = editNameField.text ?? ""
        let des1 = editDesField.text ?? ""
        var long1 = Double(editLongField.text!)
        var lat1 = Double(editLatField.text!)
        
        editDatePicker.datePickerMode = UIDatePickerMode.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let selectedDate = dateFormatter.string(from: editDatePicker.date)
        
        //if no longitude or latitude
        if (long1 == nil) {
            long1 = 0;
            
        }
        if (lat1 == nil) {
            lat1 = 0
        }
        
        myitem = BucketItem(name: name1, des: des1, longi: long1!, lat: lat1!, date: selectedDate, checked: false)


    }
    /*@IBAction func unwindToBucketList(sender: UIStoryboardSegue) {
        
        //if let sourceViewController = sender.source as? BucketListTableViewController, let listItem = sourceViewController.myitem {
            
           
        //}
    }*/


}
