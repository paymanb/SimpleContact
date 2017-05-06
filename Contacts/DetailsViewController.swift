//
//  DetailsViewController.swift
//  Contacts
//
//  Created by Payman Bayat on 2/16/1396 AP.
//  Copyright © 1396 AP Payman Bayat. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    var contact : Contact?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let contact = self.contact {
            if let name = contact.name {
                nameLabel.text = name
            } else {
                nameLabel.text = "No Name"
            }
            
            if let phoneNumber = contact.phoneNumber {
                phoneNumberLabel.text = phoneNumber
            } else {
                phoneNumberLabel.text = "No Number"
            }
            
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
