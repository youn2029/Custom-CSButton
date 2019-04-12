//
//  CSButton.swift
//  Custom-CSButton
//
//  Created by 윤성호 on 12/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

// 버튼 타임을 결정하는 열거형
public enum CSButtonType {
    case rect
    case circle
}

class CSButton: UIButton {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    var style: CSButtonType = .rect{
        // didSet : 프로퍼티의 값이 변경된 직후에 실행되는 프로퍼티 옵저버
        // willSet : 프로퍼티의 값이 변경되기 직전에 실행되는 프로퍼티 옵저버
        didSet{
            switch style {
            case .rect :
                self.backgroundColor = UIColor.black
                self.layer.borderColor = UIColor.black.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 0
                self.setTitleColor(UIColor.white, for: .normal)
                self.setTitle("Rect Button", for: .normal)
                
            case .circle:
                self.backgroundColor = UIColor.red
                self.layer.borderColor = UIColor.blue.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 50        // 50만큼 둥글게 처리
                self.setTitle("Circle Button", for: .normal)
            }
        }
    }
    
    // 스토리보드에서 생성된 버튼의 초기화 메소드 (필수 구현 메소드)
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        // 스토리보드 방식으로 버튼을 정의했을 떄 적용
        self.backgroundColor = .green
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.setTitle("버튼", for: .normal)
    }
    
    // 지정 초기화 메소드
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .gray
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        self.setTitle("코드로 생성된 버튼", for: .normal)
    }
    
    // 새로운 지정 초기화 메소드
    init(){
        super.init(frame: CGRect.zero)
    }
    
    // 편의 초기화 메소드
    convenience init(type: CSButtonType){
        self.init()
        
        switch type {
            case .rect :
                self.backgroundColor = UIColor.black
                self.layer.borderColor = UIColor.black.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 0
                self.setTitleColor(UIColor.white, for: .normal)
                self.setTitle("Rect Button", for: .normal)

            case .circle:
                self.backgroundColor = UIColor.red
                self.layer.borderColor = UIColor.blue.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 50        // 50만큼 둥글게 처리
                self.setTitle("Circle Button", for: .normal)
        }
        
        self.addTarget(self, action: #selector(counting(_:)), for: .touchUpInside)
    }
    
    // 버튼 클릭 횟수를 카운트하여 타이틀에 표시해 주는 함수
    @objc func counting(_ sender : CSButton){
        sender.tag = sender.tag + 1
        sender.setTitle("\(sender.tag) 번째 클릭", for: .normal)
        
    }
}
