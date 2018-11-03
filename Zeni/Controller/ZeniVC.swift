//
//  ViewController.swift
//  Zeni
//
//  Created by Yairo Fernandez on 11/1/18.
//  Copyright © 2018 Yairo Fernandez. All rights reserved.
//

import UIKit

class ZeniVC: UIViewController {

    @IBOutlet weak var dateOne: UITextField!
    @IBOutlet weak var dateTwo: UITextField!
    
    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(ZeniVC.dateChanged(datePicker:)), for: .valueChanged)
        
        dateOne.inputView = datePicker
        dateTwo.inputView = datePicker
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        dateOne.text = dateFormatter.string(from: datePicker.date)
        dateTwo.text = dateFormatter.string(from: datePicker.date)
        
        view.endEditing(true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

