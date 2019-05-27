//
//  TableViewController.swift
//  UITableViewControllerWithMVCInStoryboard
//
//  Created by Артём Кармазь on 5/27/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    private let persons = [Person(name: "Vitaliy Kurochkin", profession: "Car mechanic"),
                          Person(name: "Gennadiy Cvetochkin", profession: "Developer"),
                          Person(name: "Arkadiy Ukupnik", profession: "Singer"),
                          Person(name: "Fedor Dvenaytin", profession: "Soldier"),
                          Person(name: "Mikhail Pilochkin", profession: "Writer"),
                          Person(name: "Denis Neposeda", profession: "Player")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyTableViewCell {
            let table = persons[indexPath.row]
            cell.reload(cell: table)
            return cell
        }

        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
}
