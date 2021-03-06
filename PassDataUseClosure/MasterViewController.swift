//
//  ViewController.swift
//  PassDataUseClosure
//
//  Created by Hiếu Nguyễn on 10/4/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailViewController {
            detailViewController.data = nameTextField.text
            detailViewController.onCompletion = { [weak self] data in
                self?.nameTextField.text = data
            }
        }
    }
}

