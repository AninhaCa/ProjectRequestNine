//
//  StartViewController.swift
//  ProjectRequestNine
//
//  Created by Ana Paula Silva de Sousa on 20/03/23.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func start(_ sender: Any) {
        if let tableView = storyboard?.instantiateViewController(identifier: "table") {
            buttonStart.backgroundColor = .brown
            self.present(tableView, animated: true)
        }
    }
}
