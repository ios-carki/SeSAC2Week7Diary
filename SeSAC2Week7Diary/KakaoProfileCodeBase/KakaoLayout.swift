//
//  KakaoLayout.swift
//  SeSAC2Week7Diary
//
//  Created by Carki on 2022/08/17.
//

import UIKit

import SnapKit

//클래스 상속해보거나 클래스 초기화해보기
class KakaoLayout: UIViewController {
    
//    let photoImageView: UIImageView = {
//        let view = UIImageView()
//        view.contentMode = .scaleAspectFill
//        view.backgroundColor = .lightGray
//        return view
//    }()
    
    let cancelButton: UITextField = {
        let view = UITextField()
        
        view.backgroundColor = .black
        view.borderStyle = .none
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.text = "제목을 입력해주세요"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 15)
        
        return view
    }()
    
    func configureUI() {
        [cancelButton].forEach {
            view.addSubview($0)
        }
        
        cancelButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(view.safeAreaLayoutGuide)
            make.trailingMargin.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(view.safeAreaLayoutGuide)
        }
        
    }
    
    func printll() {
        print("왜안돼")
    }
    
    
//    func configureUI() {
//
//        //for - in VS foreach
//        [photoImageView, titleTextField, dateTextField, contentTextView].forEach {
//            view.addSubview($0)
//        }
//
//        photoImageView.snp.makeConstraints { make in
//            make.top.equalTo(view.safeAreaLayoutGuide)
//            make.leadingMargin.equalTo(20)
//            make.trailingMargin.equalTo(-20)
//            make.height.equalTo(view).multipliedBy(0.3)
//        }
    
    
}
