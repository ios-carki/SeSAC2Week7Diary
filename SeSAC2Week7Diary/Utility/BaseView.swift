//
//  BaseView.swift
//  SeSAC2Week7Diary
//
//  Created by Carki on 2022/08/19.
//

import UIKit

import SnapKit

class BaseView: UIView {
    
    //코드 베이스
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
    }
    
    //xib같은 스토리보드일때 이니셜라이져가 호출이된다
    //그럼에도 불구하고 프로토콜 기반으로 구성돼있어서 이 부분을 필수적으로 구현을 해줘야한다.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented") //런타임 오류
    }
    
    func configureUI() {
        
    }
    
    func setConstraints() {
        
    }
}

//required Initializer
protocol example {
    init(name: String)
    
}

class Mobile: example {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
}

//class Apple: Mobile {
//    let wwdc: String
//
//    init(wwdc: String) {
//        self.wwdc = wwdc
//
//        super.init(name: "모바일")
//
//    }
//    
//    required override init(name: String) {
//        super.init(name: "애플")
//    }
//
//}
//
//let a = Apple(wwdc: "애플")
//
