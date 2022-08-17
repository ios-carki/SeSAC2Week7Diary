//
//  CodeSnap2ViewController.swift
//  SeSAC2Week7Diary
//
//  Created by Carki on 2022/08/17.
//

import UIKit
import SnapKit

class CodeSnap2ViewController: UIViewController {
    
    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()

    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        [redView, blackView].forEach {
            view.addSubview($0)
        }
        
        redView.addSubview(yellowView)
        // containerView, stackView => 대응 살펴보기
        
        redView.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(200)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
        }
        
        //RTL(Right To Left) - 오른쪽 트레일링, right 두개 다 존재 ( 아랍권 대응 )
        blackView.snp.makeConstraints { make in
            make.edges.equalTo(redView).inset(50)
        }
    }
    

}
