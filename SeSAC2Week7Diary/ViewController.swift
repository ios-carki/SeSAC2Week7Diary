//
//  ViewController.swift
//  SeSAC2Week7Diary
//
//  Created by Carki on 2022/08/16.
//

import UIKit
import SeSAC2UIFramework

//import SnapKit

class ViewController: UIViewController {

    let nameButton: UIButton = {
        let view = UIButton()
        view.setTitle("닉네임", for: .normal)
        view.backgroundColor = .black
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nameButton)
        
        configure()
        nameButton.addTarget(self, action: #selector(nameButtonClicked), for: .touchUpInside)
    }
    
    @objc func nameButtonClicked() {
        let vc = ProfileViewController()
        
        vc.saveButtonActionHandler = {
            
            self.nameButton.setTitle(vc.nameTextField.text, for: .normal)
        }
        present(vc, animated: true)
    }
    
    func configure() {
        view.addSubview(nameButton)
        
        nameButton.snp.makeConstraints { make in
            make.width.height.equalTo(200)
            make.center.equalTo(view)
        }
    }

    

}

