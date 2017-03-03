//
//  ViewController.swift
//  My To Dos
//
//  Created by Brijesh Patel on 2017-02-28.
//  Copyright © 2017 Brijesh Patel. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIScrollViewDelegate {

    //MARK: Properties
    @IBOutlet weak var notetitle: UITextField!
    @IBOutlet weak var notebody: UITextView!
    @IBOutlet weak var viewphoto: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notetitle.delegate = self//for delegate calls
        notebody.delegate = self
        scrollView.delegate = self
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.doneClicked))
        let gallaryButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.camera, target: self, action: #selector(self.addPhotoFromLibrary))
        toolBar.setItems([doneButton,gallaryButton], animated: false)
        notebody.inputAccessoryView = toolBar
        self.scrollView.minimumZoomScale = 1.0
        self.scrollView.maximumZoomScale = 10.0
        
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
    
    //MARK: UIImagePickerControllerDelegate
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismiss(animated: true, completion: nil)
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Set photoImageView to display the selected image.
        viewphoto.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    //MARK: Scroll view delegate methods
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.viewphoto
    }

    
    //MARK: Actions
    
    func doneClicked(){
        view.endEditing(true)
    }
    func addPhotoFromLibrary(){
        notetitle.resignFirstResponder()
        notebody.resignFirstResponder()
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
        
    }

}

