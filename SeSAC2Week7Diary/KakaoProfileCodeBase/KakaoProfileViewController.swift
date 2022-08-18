//
//  KakaoProfileViewController.swift
//  SeSAC2Week7Diary
//
//  Created by Carki on 2022/08/17.
//

import UIKit

import SnapKit
import Kingfisher

class KakaoProfileViewController: UIViewController {
    
    let cancelButton: UIButton = {
        let view = UIButton()
        view.tintColor = .black
        view.setImage(UIImage(systemName: "xmark"), for: .normal)
        return view
    }()
    
    let giftButton: UIButton = {
        let view = UIButton()
        view.tintColor = .black
        view.setImage(UIImage(systemName: "gift.circle.fill"), for: .normal)
        return view
    }()
    
    let qrButton: UIButton = {
        let view = UIButton()
        view.tintColor = .black
        view.setImage(UIImage(systemName: "qrcode"), for: .normal)
        return view
    }()
    
    let settingButton: UIButton = {
        let view = UIButton()
        view.tintColor = .black
        view.setImage(UIImage(systemName: "gearshape.circle"), for: .normal)
        return view
    }()
    
    let profileButton: UIButton = {
        let url = URL(string: "https://res.cloudinary.com/linkareer/image/fetch/f_auto/https://api.linkareer.com/attachments/90594")
        let view = UIButton()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.cornerRadius = 30
        view.kf.setImage(with: url!, for: .normal)
        return view
    }()
    
    let nameLable: UILabel = {
        let view = UILabel()
        view.text = "Carki"
        view.font = .systemFont(ofSize: 20)
        view.textAlignment = .center
        return view
    }()
    
    let statusLable: UILabel = {
        let view = UILabel()
        view.text = "코딩은 너무 어려워"
        view.textColor = .gray
        view.font = .systemFont(ofSize: 14)
        view.textAlignment = .center
        return view
    }()
    
    let boundaryLine: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let chatButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "message.fill"), for: .normal)
        view.tintColor = .black
        return view
    }()
    
    let editProfileButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "pencil"), for: .normal)
        view.tintColor = .black
        return view
    }()
    
    let kakaoStoryButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "figure.stand.line.dotted.figure.stand"), for: .normal)
        view.tintColor = .black
        return view
    }()
    
    let chatLabel: UILabel = {
        let view = UILabel()
        view.backgroundColor = .black
        view.text = "나와의 채팅"
        view.font = .systemFont(ofSize: 13)
        return view
    }()
    
    let editProfileLabel: UILabel = {
        let view = UILabel()
        view.backgroundColor = .black
        view.text = "프로필 편집"
        view.font = .systemFont(ofSize: 13)
        return view
    }()
    
    let kakaoStoryLabel: UILabel = {
        let view = UILabel()
        view.backgroundColor = .black
        view.text = "카카오스토리"
        view.font = .systemFont(ofSize: 13)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        [cancelButton, giftButton, qrButton, settingButton, profileButton, nameLable, statusLable, boundaryLine, chatButton, editProfileButton, kakaoStoryButton, chatLabel, editProfileLabel, kakaoStoryLabel].forEach { view.addSubview($0)
        }
        
        //좌 상단 (취소버튼)
        cancelButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        
        //우 상단 (선물, qr, 설정 버튼)
        settingButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        qrButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(settingButton).offset(-40)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        giftButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(qrButton).offset(-40)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        
        //가운데 (프로필, 이름, 상태메세지, 경계선)
        profileButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(150)
            make.width.equalTo(view.snp.width).multipliedBy(0.3)
            make.height.equalTo(view.snp.width).multipliedBy(0.3)
        }
        nameLable.snp.makeConstraints { make in
            make.top.equalTo(profileButton).offset(115)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(30)
        }
        statusLable.snp.makeConstraints { make in
            make.top.equalTo(profileButton).offset(145)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(24)
        }
        boundaryLine.snp.makeConstraints { make in
            make.top.equalTo(statusLable).offset(32)
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
            make.height.equalTo(1)
        }
        
        //하단(채팅, 편집, 스토리 버튼 / 레이블)
        chatButton.snp.makeConstraints { make in
            make.top.equalTo(boundaryLine).offset(20)
            make.leading.equalTo(50)
            make.trailing.equalTo(editProfileButton).offset(100)
//            make.bottom.equalTo(chatLabel).offset(20)
            make.height.width.equalTo(50)
        }
        editProfileButton.snp.makeConstraints { make in
            make.top.equalTo(boundaryLine).offset(20)
            make.centerX.equalToSuperview()
//            make.bottom.equalTo(editProfileLabel).offset(20)
            make.height.width.equalTo(50)
        }
//        kakaoStoryButton.snp.makeConstraints { make in
//            make.top.equalTo(boundaryLine).offset(40)
//            make.leading.equalTo(editProfileButton)
//            make.trailing.equalTo(50)
//            make.bottom.equalTo(kakaoStoryLabel).offset(20)
//            make.height.width.equalTo(50)
//        }
//        chatLabel.snp.makeConstraints { make in
//            make.leading.equalTo(50)
//            make.bottom.equalTo(30)
//        }
//        editProfileLabel.snp.makeConstraints { make in
//            make.leading.equalTo(chatLabel).offset(32)
//            make.bottom.equalTo(30)
//        }
//        kakaoStoryLabel.snp.makeConstraints { make in
//            make.leading.equalTo(editProfileLabel)
//            make.trailing.equalTo(50)
//            make.bottom.equalTo(30)
//        }
        
    }
    
//        view.addSubview(cancelButton)
//        view.addSubview(giftButton)
//        view.addSubview(qrButton)
//        view.addSubview(settingButton)
//
//        view.addSubview(profileButton)
//        view.addSubview(nameLable)
//        view.addSubview(statusLable)
//        view.addSubview(boundaryLine)
//
//        view.addSubview(chatButton)
//        view.addSubview(editProfileButton)
//        view.addSubview(kakaoStoryButton)
//
//        view.addSubview(chatLabel)
//        view.addSubview(editProfileLabel)
//        view.addSubview(kakaoStoryLabel)
//
//
//        cancelButton.tintColor = .black
//        cancelButton.frame = CGRect(x: 20, y: 50, width: 30, height: 30)
//
//        giftButton.setImage(UIImage(systemName: "gift.circle.fill"), for: .normal)
//        giftButton.tintColor = .black
//        giftButton.frame = CGRect(x: 245, y: 50, width: 30, height: 30)
//
//        qrButton.setImage(UIImage(systemName: "qrcode"), for: .normal)
//        qrButton.tintColor = .black
//        qrButton.frame = CGRect(x: 285, y: 50, width: 30, height: 30)
//
//        settingButton.setImage(UIImage(systemName: "gearshape.circle"), for: .normal)
//        settingButton.tintColor = .black
//        settingButton.frame = CGRect(x: 325, y: 50, width: 30, height: 30)
//
//        let url = URL(string: "https://res.cloudinary.com/linkareer/image/fetch/f_auto/https://api.linkareer.com/attachments/90594")
//        print(url!)
//        profileButton.kf.setImage(with: url!, for: .normal)
//        profileButton.frame = CGRect(x: (UIScreen.main.bounds.width / 2) - 45, y: 500, width: 90, height: 90)
//        profileButton.layer.borderWidth = 1
//        profileButton.layer.borderColor = UIColor.black.cgColor
//        profileButton.layer.cornerRadius = 30
//
//        nameLable.text = "Carki"
//        nameLable.textAlignment = .center
//        nameLable.frame = CGRect(x: (UIScreen.main.bounds.width / 2) - 45, y: 600, width: 90, height: 30)
//
//        statusLable.text = "코딩은 너무 어려워"
//        statusLable.textAlignment = .center
//        statusLable.frame = CGRect(x: (UIScreen.main.bounds.width / 2) - 135, y: 640, width: 270, height: 25)
//
//        boundaryLine.backgroundColor = .lightGray
//        boundaryLine.frame = CGRect(x: 0, y: 690, width: UIScreen.main.bounds.width, height: 1)
//
//        chatButton.setImage(UIImage(systemName: "message.fill"), for: .normal)
//        chatButton.tintColor = .black
//        chatButton.frame = CGRect(x:((UIScreen.main.bounds.width / 2) - 25) - 100, y: 710, width: 50, height: 50)
//
//        editProfileButton.setImage(UIImage(systemName: "pencil"), for: .normal)
//        editProfileButton.tintColor = .black
//        editProfileButton.frame = CGRect(x: (UIScreen.main.bounds.width / 2) - 25, y: 710, width: 50, height: 50)
//
//        kakaoStoryButton.setImage(UIImage(systemName: "figure.stand.line.dotted.figure.stand"), for: .normal)
//        kakaoStoryButton.tintColor = .black
//        kakaoStoryButton.frame = CGRect(x: ((UIScreen.main.bounds.width / 2) - 25) + 100, y: 710, width: 50, height: 50)
//
//        chatLabel.text = "나와의 채팅"
//        chatLabel.font = .systemFont(ofSize: 13)
//        chatLabel.frame = CGRect(x: 57, y: 760, width: 60, height: 30)
//
//        editProfileLabel.text = "프로필 편집"
//        editProfileLabel.font = .systemFont(ofSize: 13)
//        editProfileLabel.frame = CGRect(x: (UIScreen.main.bounds.width / 2) - 30, y: 760, width: 60, height: 30)
//
//        kakaoStoryLabel.text = "카카오스토리"
//        kakaoStoryLabel.font = .systemFont(ofSize: 13)
//        kakaoStoryLabel.frame = CGRect(x: 253, y: 760, width: 70, height: 30)
    
}
