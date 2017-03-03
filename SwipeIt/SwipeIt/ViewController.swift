//
//  ViewController.swift
//  SwipeIt
//
//  Created by Katharine Xie on 2/10/17.
//  Copyright © 2017 Katharine Xie. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var itemNameLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameTextField.delegate = self
        let tap:UITapGestureRecognizer = UITapGestureRecognizer (target:self, action: #selector(ViewController.dissmissKeyBoard))
        view.addGestureRecognizer(tap)
        
    }

    func dissmissKeyBoard() {
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: UITextFieldDelegate
    
    
    
    //MARK: actions
    @IBAction func saveButton(_ sender: UIButton) {
        //didn't work with itemNameLabel but it's fine with nameTextField
        itemNameLabel.text = "default text"
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        itemNameLabel.text = textField.text
    }
    
    
}

