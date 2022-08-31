//
//  DetailContactViewController.swift
//  ContactList
//
//  Created by Ilya Sokolov on 31.08.2022.
//

import UIKit

final class DetailContactViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet var nameLable: UILabel!
    @IBOutlet var surnameLable: UILabel!
    @IBOutlet var phoneLable: UILabel!
    @IBOutlet var emailLable: UILabel!
   
    // MARK: - Public Properties
    var person: Persons!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLable.text = person.name
        surnameLable.text = person.surname
        phoneLable.text = person.phone
        emailLable.text = person.email
    }
    
}
