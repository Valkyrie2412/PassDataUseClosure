//
//  DetailViewController.swift
//  PassDataUseClosure
//
//  Created by Hiếu Nguyễn on 10/4/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var data: String?
    var onCompletion: ((_ data: String) -> () )?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if data != nil {
            textField.text = data
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendingData(_ sender: UIButton) {
               data = textField.text
        onCompletion!(data!)
        navigationController?.popViewController(animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
