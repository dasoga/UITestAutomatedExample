//
//  DetailViewController.swift
//  EasyAnchors
//
//  Created by Dante Solorio on 8/24/18.
//  Copyright © 2018 Dante Solorio. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    
    var textToShow: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = textToShow
    }
    
}
