//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Ilya Sokolov on 30.08.2022.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    // MARK: - Private Properties
    var personList = Persons.getPerson()
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        personList.count

    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName",
                                                 for: indexPath)
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.name + " " + person.surname
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let contactDetailVC = segue.destination as? DetailContactViewController
        else {
            return
        }
        guard let index = tableView.indexPathForSelectedRow else {return}
        
        let person = personList[index.row]
        contactDetailVC.person = person
        
    }   
}
