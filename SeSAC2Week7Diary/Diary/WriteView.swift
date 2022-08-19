//
//  WriteView.swift
//  SeSAC2Week7Diary
//
//  Created by Carki on 2022/08/19.
//

import UIKit

class WriteView: BaseView {
    
    let photoImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = .lightGray
        return view
    }()
    
    let titleTextField:BlackRadiusTextField = {
        let view = BlackRadiusTextField()
        view.text = "제목을 입력해주세요"
        return view
    }()
    
    let dateTextField: BlackRadiusTextField = {
        let view = BlackRadiusTextField()
        view.text = "날짜를 입력해주세요"
        return view
    }()
    
    let contentTextView: UITextView = {
        let view = UITextView()
        
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
      
        return view
    }()
    
    let tableView = UITableView()
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
//    
//    required init?(coder: NSCoder) {
//        <#code#>
//    }
    override func configureUI() {
        
        [photoImageView, titleTextField, dateTextField, contentTextView].forEach {
            self.addSubview($0)
        }
        
    }
    
    override func setConstraints() {
        
        photoImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(self).multipliedBy(0.3)
        }
        
        titleTextField.snp.makeConstraints { make in
            make.top.equalTo(photoImageView.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        dateTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        contentTextView.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
        }
        
    }
    
}
