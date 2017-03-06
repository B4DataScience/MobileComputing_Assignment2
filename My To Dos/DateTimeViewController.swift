//
//  dateTimeViewController.swift
//  My To Dos
//
//  Created by Brijesh Patel on 2017-03-05.
//  Copyright © 2017 Brijesh Patel. All rights reserved.
//

import UIKit

class DateTimeViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var priorityLabel: UILabel!
    @IBOutlet weak var lowPriorityButton: UIButton!
    @IBOutlet weak var mediumPriorityButton: UIButton!
    @IBOutlet weak var highPriorityButton: UIButton!
    @IBOutlet weak var dateTimeLabel: UILabel!
    @IBOutlet weak var noDateButton: UIButton!
    @IBOutlet weak var immediatelyButton: UIButton!
    @IBOutlet weak var dateSelectButton: UIButton!
    @IBOutlet weak var dateTextField: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        dateTextField.isHidden = true
        
    }
    func createDatePicker(){ // custom Date Picker
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.doneClicked))
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        toolBar.setItems([flexibleSpace,doneButton], animated: false)
        dateTextField.inputAccessoryView = toolBar
        dateTextField.inputView = datePicker
    }
    
    
    
    //MARK: Actions
    func doneClicked (){
        self.view.endEditing(true)
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateTextField.text = dateFormatter.string(from: datePicker.date)
    }
    @IBAction func lowPrioritySelected(_ sender: UIButton) {
        lowPriorityButton.backgroundColor = UIColor.black
        mediumPriorityButton.backgroundColor = UIColor.white
        highPriorityButton.backgroundColor = UIColor.white
        self.view.endEditing(true)
        if(dateSelectButton.backgroundColor == UIColor.white){
            dateTextField.isHidden = true
        }
    }
    @IBAction func mediumPrioritySelected(_ sender: UIButton) {
        lowPriorityButton.backgroundColor = UIColor.white
        mediumPriorityButton.backgroundColor = UIColor.black
        highPriorityButton.backgroundColor = UIColor.white
        self.view.endEditing(true)
        if(dateSelectButton.backgroundColor == UIColor.white){
            dateTextField.isHidden = true
        }
        
    }
    @IBAction func highPrioritySelected(_ sender: UIButton) {
        lowPriorityButton.backgroundColor = UIColor.white
        mediumPriorityButton.backgroundColor = UIColor.white
        highPriorityButton.backgroundColor = UIColor.black
        self.view.endEditing(true)
        if(dateSelectButton.backgroundColor == UIColor.white){
            dateTextField.isHidden = true
        }
        
    }
    @IBAction func noDateSelected(_ sender: UIButton) {
        noDateButton.backgroundColor = UIColor.black
        immediatelyButton.backgroundColor = UIColor.white
        dateSelectButton.backgroundColor = UIColor.white
        self.view.endEditing(true)
        if(dateSelectButton.backgroundColor == UIColor.white){
            dateTextField.isHidden = true
        }
        
    }
    @IBAction func immediatelySelected(_ sender: UIButton) {
        noDateButton.backgroundColor = UIColor.white
        immediatelyButton.backgroundColor = UIColor.black
        dateSelectButton.backgroundColor = UIColor.white
        self.view.endEditing(true)
        if(dateSelectButton.backgroundColor == UIColor.white){
            dateTextField.isHidden = true
        }
        
    }
    @IBAction func dateSelect(_ sender: UIButton) {
        noDateButton.backgroundColor = UIColor.white
        immediatelyButton.backgroundColor = UIColor.white
        dateSelectButton.backgroundColor = UIColor.black
        dateTextField.isHidden = false
        dateTextField.becomeFirstResponder()
    }
    
}
