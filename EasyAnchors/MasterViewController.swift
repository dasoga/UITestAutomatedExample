//
//  MasterViewController.swift
//  EasyAnchors
//
//  Created by Dante Solorio on 8/24/18.
//  Copyright © 2018 Dante Solorio. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
    @IBOutlet weak var mainTable: UITableView!
    
    let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}


extension MasterViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTable.dequeueReusableCell(withIdentifier: cellId)
        cell?.textLabel?.text = "Cell - \(indexPath.row)"
        return cell!
    }
}

extension MasterViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let detailController = mainStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailController.textToShow = "Cell - \(indexPath.row)"        
        navigationController?.pushViewController(detailController, animated: true)
    }
}
