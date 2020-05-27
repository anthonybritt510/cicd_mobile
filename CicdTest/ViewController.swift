//
//  ViewController.swift
//  CicdTest
//
//  Created by Jovan Markovic on 5/27/20.
//  Copyright © 2020 ks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var envLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let env = getEnvValue() {
            envLabel.text = env
        } else {
            envLabel.text = "SOMETHING WENT WRONG"
        }
        
    }

    func getEnvValue() -> String? {
        return Bundle.main.object(forInfoDictionaryKey: "EnvVar") as? String
    }
}

