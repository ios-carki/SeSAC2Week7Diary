//
//  WriteViewController.swift
//  SeSAC2Week7Diary
//
//  Created by Carki on 2022/08/19.
//

import UIKit

import SnapKit

class WriteViewController: BaseViewController {
    
    var mainView = WriteView()
    
    //loadView는 ViewDidLoad보다 먼저 호출된다.
    override func loadView() { //super.loadView -> X
        
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func configure() {
        mainView.titleTextField.addTarget(self, action: #selector(titleTextFiledClicked(_:)), for: .editingDidEndOnExit)
        
    }
    
    @objc func titleTextFiledClicked(_ textField: UITextField) {
        guard let text = textField.text, text.count > 0 else {
            showAlertMessage(title: "제목을 입력해주세요", button: "확인")
            return
        }
    }
    
}
