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
        
        // CSButtonType이 rect인 버튼
        let recBtn = CSButton(type: .rect)
        recBtn.frame = CGRect(x: 30, y: 200, width: 150, height: 30)
        self.view.addSubview(recBtn)
        
        // CSButtonType이 circle인 버튼
        let circleBtn = CSButton(type: .circle)
        circleBtn.frame = CGRect(x: 200, y: 200, width: 150, height: 30)
        self.view.addSubview(circleBtn)
        
        circleBtn.style = .rect
    }


}

