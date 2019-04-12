//
//  ViewController.swift
//  Custom-CSButton
//
//  Created by 윤성호 on 11/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let btn = CSButton(frame: CGRect(x: 30, y: 50, width: 150, height: 35))
        self.view.addSubview(btn)
    }


}

