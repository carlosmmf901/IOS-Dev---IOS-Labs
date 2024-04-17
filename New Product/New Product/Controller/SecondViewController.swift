//
//  SecondViewController.swift
//  New Product
//
//  Created by iOS Lab 04 on 24/02/24.
//

import Foundation
import UIKit


class SecondViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var savedColorsArray: [UIColor] = []
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UITableView.self
        UITableViewDelegate.self
        UITableViewDataSource.self
    }
    
    
    
    
    
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        savedColorsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
        "colorCell", for: indexPath)
        
        return cell
    }
    
    
    
    
}
