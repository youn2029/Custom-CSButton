//
//  CSButton.swift
//  Custom-CSButton
//
//  Created by 윤성호 on 12/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class CSButton: UIButton {
    
    // 스토리보드에서 생성된 버튼의 초기화 메소드
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        // 스토리보드 방식으로 버튼을 정의했을 떄 적용
        self.backgroundColor = .green
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.setTitle("버튼", for: .normal)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .gray
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        self.setTitle("코드로 생성된 버튼", for: .normal)
    }
    
    init(){
        super.init(frame: CGRect.zero)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
