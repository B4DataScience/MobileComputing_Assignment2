//
//  Note.swift
//  My To Dos
//
//  Created by Brijesh Patel on 2017-03-01.
//  Copyright © 2017 Brijesh Patel. All rights reserved.
//

import UIKit
class Note{
    //MARK: Properties
    var title: String!
    var body: String!
    var photo: UIImage!
    var noteCreated: NSDate!
    var noteDue: NSDate!
    var priority: String!
    
    //MARK: Initialization
    init (title:String?, body:String?, noteCreated:NSDate?, photo:UIImage?, noteDue:NSDate?, priority:String?) {
        self.title = title;
        self.body = body;
        self.noteCreated = noteCreated
        self.photo = photo
        self.noteDue = noteDue
        self.priority = priority
    }
}
