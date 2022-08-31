//
//  ContactListDetailViewController.swift
//  ContactList
//
//  Created by Ilya Sokolov on 31.08.2022.
//

import UIKit

class ContactListDetailViewController: UITableViewController {

    // MARK: - Private Properties
    private var personList = Persons.getPerson()

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView,
                            heightForHeaderInSection section: Int) -> CGFloat {
        40
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailPersonName",
                                                 for: indexPath)
        let person = personList[indexPath.section]
    
        switch indexPath.row {
        case 0:
            var content = cell.defaultContentConfiguration()
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
            cell.contentConfiguration = content
        default:
            var content = cell.defaultContentConfiguration()
            content.text = person.email
            content.image = UIImage(systemName: "mail")
            cell.contentConfiguration = content
        }
        return cell
    }
     
     override func tableView(_ tableView: UITableView,
                             titleForHeaderInSection section: Int) -> String? {
         let header = personList[section].name + " " + personList[section].surname
         return header
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
