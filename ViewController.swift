//
//  ViewController.swift
//  CarRentalApp
//
//  Created by Zohra Guliyeva on 10/25/23.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: .main), forCellReuseIdentifier: "tableCell")
    }
  
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return  1
        } else {
            return 5
        }
                    
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            return UITableViewCell()
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableViewCell
//            cell.collectionView.backgroundColor = .red
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 12
        } else if indexPath.section == 1 {
            return  150
        } else {
            return 40
        }
                    
    }
}
