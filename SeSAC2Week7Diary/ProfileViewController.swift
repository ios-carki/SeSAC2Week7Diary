//
//  ProfileViewController.swift
//  SeSAC2Week7Diary
//
//  Created by Carki on 2022/08/18.
//

import UIKit

extension NSNotification.Name {
    static let saveButton = NSNotification.Name("saveButtonNotification")
}

class ProfileViewController: UIViewController {
    
    var saveButtonActionHandler: ((String) -> ())? //반환값, 매개변수가 없는 함수
    
    @objc func saveButtonClicked() {
        
        //2.notification
        NotificationCenter.default.post(name: .saveButton, object: nil, userInfo: ["name": nameTextField.text!, "value": 123456])
        //값 전달 기능 실행 => 클로저 구문 활용
        //1.클로저
//        saveButtonActionHandler?(nameTextField.text!)
        
        //화면 Dismiss
        dismiss(animated: true)
    }
    
    let saveButton: UIButton = {
        let view = UIButton()
        view.setTitle("저장", for: .normal)
        view.backgroundColor = .black
        return view
    }()
    
    let nameTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "이름을 입력하세요."
        view.backgroundColor = .brown
        view.textColor = .white
        return view
    }()
    
   
    
    func configure() {
        [saveButton, nameTextField].forEach { view.addSubview($0) }
        
        nameTextField.snp.makeConstraints {
            $0.leading.trailing.equalTo(view).inset(50)
            $0.top.equalTo(50)
            $0.height.equalTo(50)
        }
        
        saveButton.snp.makeConstraints {
            $0.width.height.equalTo(100)
            $0.center.equalTo(view)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        view.backgroundColor = .white
        
        saveButton.addTarget(self, action: #selector(saveButtonClicked), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(saveButtonNotificationObserver(notification:)), name: NSNotification.Name("TEST"), object: nil)
    }
    
    @objc func saveButtonNotificationObserver(notification: NSNotification) {
        print(#function, "이거?")
        if let name = notification.userInfo?["name"] as? String {
            print(name)
            self.nameTextField.text = name
        }
    }
    
    

}
