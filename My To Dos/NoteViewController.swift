//
//  ViewController.swift
//  My To Dos
//
//  Created by Brijesh Patel on 2017-02-28.
//  Copyright © 2017 Brijesh Patel. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    //MARK: Properties
    @IBOutlet weak var notetitle: UITextField!
    @IBOutlet weak var notebody: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notetitle.delegate = self//for delegate calls
        notebody.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Mark: Textfield(title) delegate methods
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        notebody.becomeFirstResponder()
        return true
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if(textView.text=="Write your note here"){
            textView.text=nil;
        }
    }
    

}

