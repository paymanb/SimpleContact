//
//  Contact.swift
//  Contacts
//
//  Created by Payman Bayat on 2/16/1396 AP.
//  Copyright © 1396 AP Payman Bayat. All rights reserved.
//

import UIKit

class Contact: NSObject {
    
    var name : String?
    var phoneNumber : String?
    
    init(name:String? = nil, phoneNumber:String? = nil) {
        self.name = name
        self.phoneNumber = phoneNumber
        super.init()
    }
}
