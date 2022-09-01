//
//  TabBarVCViewController.swift
//  ContactList
//
//  Created by Ilya Sokolov on 01.09.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
     
    var personList = Persons.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(personList)
        
    }
    
    private func setupViewControllers(_ person: [Persons]) {
  
        guard let viewControllers  = viewControllers else {return}
        for viewController in viewControllers {
            if let contacListVC = viewController as? ContactListViewController {
                contacListVC.personList = person
            } else if let detailContactListVC = viewController as? ContactListDetailViewController {
                detailContactListVC.personList = person
            } else {return}
        }
    }
}
