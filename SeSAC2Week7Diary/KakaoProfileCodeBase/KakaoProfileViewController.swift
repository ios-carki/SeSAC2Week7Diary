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
    
    let backGround: UIImageView = {
        let url = URL(string: "https://image.yes24.com/goods/24937314/XL")
        let view = UIImageView()
        view.kf.setImage(with: url!)
        return view
    }()
    
    let tintView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.alpha = 0.3
        return view
    }()
    
    let cancelButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(systemName: "xmark"), for: .normal)
        return view
    }()
    
    let giftButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(systemName: "gift.circle.fill"), for: .normal)
        return view
    }()
    
    let qrButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(systemName: "qrcode"), for: .normal)
        return view
    }()
    
    let settingButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(systemName: "gearshape.circle"), for: .normal)
        return view
    }()
    
    let profileButton: UIButton = {
        let url = URL(string: "https://res.cloudinary.com/linkareer/image/fetch/f_auto/https://api.linkareer.com/attachments/90594")
        let view = UIButton()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.cornerRadius = 30
        view.clipsToBounds = true
        view.kf.setImage(with: url!, for: .normal)
        return view
    }()
    
    let nameLable: UILabel = {
        let view = UILabel()
        view.text = "Carki"
        view.textColor = .white
        view.font = .systemFont(ofSize: 20)
        view.textAlignment = .center
        return view
    }()
    
    let statusLable: UILabel = {
        let view = UILabel()
        view.text = "코딩은 너무 어려워"
        view.textColor = .white
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
        view.tintColor = .white
        var configuration = UIButton.Configuration.borderless()
        configuration.subtitle = "나와의 채팅"
        configuration.imagePlacement = .top
        configuration.imagePadding = 10
        configuration.titleAlignment = .center
        view.configuration = configuration
        
        return view
    }()
    
    let editProfileButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "pencil"), for: .normal)
        view.tintColor = .white
        var configuration = UIButton.Configuration.borderless()
        configuration.subtitle = "프로필 편집"
        configuration.imagePlacement = .top
        configuration.imagePadding = 10
        configuration.titleAlignment = .center
        view.configuration = configuration
        
        return view
    }()
    
    let kakaoStoryButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "figure.stand.line.dotted.figure.stand"), for: .normal)
        view.tintColor = .white
        var configuration = UIButton.Configuration.borderless()
        configuration.subtitle = "카카오스토리"
        configuration.imagePlacement = .top
        configuration.imagePadding = 10
        configuration.titleAlignment = .center
        view.configuration = configuration
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    func configureUI() {
        [backGround, tintView, cancelButton, giftButton, qrButton, settingButton, profileButton, nameLable, statusLable, boundaryLine, chatButton, editProfileButton, kakaoStoryButton].forEach { view.addSubview($0)
        }
        
        backGround.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.trailing.equalTo(0)
            make.leading.equalTo(0)
            make.bottom.equalToSuperview()
        }
        tintView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.trailing.equalTo(0)
            make.leading.equalTo(0)
            make.bottom.equalToSuperview()
        }
        
        //좌 상단 (취소버튼)
        cancelButton.snp.makeConstraints { make in
//            make.top.equalToSuperview()
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
        
        //하단(채팅, 편집, 스토리 버튼)
        chatButton.snp.makeConstraints { make in
            make.top.equalTo(boundaryLine.snp.bottom).offset(30)
            make.trailing.equalTo(editProfileButton.snp.leading).offset(-30)
            make.width.equalTo(editProfileButton.snp.width)
        }
        editProfileButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(boundaryLine.snp.bottom).offset(30)
            make.width.equalTo(view.bounds.width / 4)
        }
        kakaoStoryButton.snp.makeConstraints { make in
            make.top.equalTo(boundaryLine.snp.bottom).offset(30)
            make.leading.equalTo(editProfileButton.snp.trailing).offset(30)
            make.width.equalTo(editProfileButton.snp.width)
        }
        
    }
    
}
