//
//  GeeksViewController.swift
//  Tip Calculator
//
//  Created by Monte's Pro 13" on 12/29/15.
//  Copyright © 2015 MonteThakkar. All rights reserved.
//

import UIKit

class GeeksViewController: UIViewController {

    @IBOutlet weak var ScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollView.contentSize.height = 700
        ScrollView.contentSize.width = 200
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
