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
            if let navigationVC = viewController as? UINavigationController {
                guard let conttacVC = navigationVC.viewControllers.first as? ContactListViewController else {return}
                conttacVC.personList = person
            } else if let detailVC = viewController as? ContactListDetailViewController {
                detailVC.personList = person
            }
        }
    }
}
