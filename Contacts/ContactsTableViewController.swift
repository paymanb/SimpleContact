//
//  ContactsTableViewController.swift
//  Contacts
//
//  Created by Payman Bayat on 2/16/1396 AP.
//  Copyright © 1396 AP Payman Bayat. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var contacts : [Contact] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        let payman = Contact(phoneNumber: "0902-2003300")
        let mahnaz = Contact(name: "Mahnaz", phoneNumber: "0912-33223344")
        let milad = Contact(name: "Milad")
        
        self.contacts.append(payman)
        self.contacts.append(mahnaz)
        self.contacts.append(milad)
        
        navigationItem.leftBarButtonItem = self.editButtonItem
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.contacts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let contact = self.contacts[indexPath.row]
        
        if let name = contact.name {
            cell.textLabel?.text = name
        } else {
            cell.textLabel?.text = "No Name"
        }

        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.contacts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
    }

    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

        let contactMoving = self.contacts.remove(at: fromIndexPath.row)
        contacts.insert(contactMoving, at: to.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell)!
        let contact = self.contacts[indexPath.row]
        let destination = segue.destination as! DetailsViewController
        destination.contact = contact
    }


}
