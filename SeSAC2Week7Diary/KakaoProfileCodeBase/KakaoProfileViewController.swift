//
//  KakaoProfileViewController.swift
//  SeSAC2Week7Diary
//
//  Created by Carki on 2022/08/17.
//

import UIKit

import Kingfisher

class KakaoProfileViewController: UIViewController {
    
    let cancelButton = UIButton()
    let giftButton = UIButton()
    let qrButton = UIButton()
    let settingButton = UIButton()
    
    let profileButton = UIButton()
    let nameLable = UILabel()
    let statusLable = UILabel()
    let boundaryLine = UIView()
    
    let chatButton = UIButton()
    let editProfileButton = UIButton()
    let kakaoStoryButton = UIButton()
    
    let chatLabel = UILabel()
    let editProfileLabel = UILabel()
    let kakaoStoryLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(cancelButton)
        view.addSubview(giftButton)
        view.addSubview(qrButton)
        view.addSubview(settingButton)
        
        view.addSubview(profileButton)
        view.addSubview(nameLable)
        view.addSubview(statusLable)
        view.addSubview(boundaryLine)
        
        view.addSubview(chatButton)
        view.addSubview(editProfileButton)
        view.addSubview(kakaoStoryButton)
        
        view.addSubview(chatLabel)
        view.addSubview(editProfileLabel)
        view.addSubview(kakaoStoryLabel)
        
        cancelButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        cancelButton.tintColor = .black
        cancelButton.frame = CGRect(x: 20, y: 50, width: 30, height: 30)
        
        giftButton.setImage(UIImage(systemName: "gift.circle.fill"), for: .normal)
        giftButton.tintColor = .black
        giftButton.frame = CGRect(x: 245, y: 50, width: 30, height: 30)
        
        qrButton.setImage(UIImage(systemName: "qrcode"), for: .normal)
        qrButton.tintColor = .black
        qrButton.frame = CGRect(x: 285, y: 50, width: 30, height: 30)
        
        settingButton.setImage(UIImage(systemName: "gearshape.circle"), for: .normal)
        settingButton.tintColor = .black
        settingButton.frame = CGRect(x: 325, y: 50, width: 30, height: 30)
        
        let url = URL(string: "https://res.cloudinary.com/linkareer/image/fetch/f_auto/https://api.linkareer.com/attachments/90594")
        print(url!)
        profileButton.kf.setImage(with: url!, for: .normal)
        profileButton.frame = CGRect(x: (UIScreen.main.bounds.width / 2) - 45, y: 500, width: 90, height: 90)
        profileButton.layer.borderWidth = 1
        profileButton.layer.borderColor = UIColor.black.cgColor
        profileButton.layer.cornerRadius = 30
        
        nameLable.text = "Carki"
        nameLable.textAlignment = .center
        nameLable.frame = CGRect(x: (UIScreen.main.bounds.width / 2) - 45, y: 600, width: 90, height: 30)
        
        statusLable.text = "코딩은 너무 어려워"
        statusLable.textAlignment = .center
        statusLable.frame = CGRect(x: (UIScreen.main.bounds.width / 2) - 135, y: 640, width: 270, height: 25)
        
        boundaryLine.backgroundColor = .lightGray
        boundaryLine.frame = CGRect(x: 0, y: 690, width: UIScreen.main.bounds.width, height: 1)
        
        chatButton.setImage(UIImage(systemName: "message.fill"), for: .normal)
        chatButton.tintColor = .black
        chatButton.frame = CGRect(x:((UIScreen.main.bounds.width / 2) - 25) - 100, y: 710, width: 50, height: 50)
        
        editProfileButton.setImage(UIImage(systemName: "pencil"), for: .normal)
        editProfileButton.tintColor = .black
        editProfileButton.frame = CGRect(x: (UIScreen.main.bounds.width / 2) - 25, y: 710, width: 50, height: 50)
        
        kakaoStoryButton.setImage(UIImage(systemName: "figure.stand.line.dotted.figure.stand"), for: .normal)
        kakaoStoryButton.tintColor = .black
        kakaoStoryButton.frame = CGRect(x: ((UIScreen.main.bounds.width / 2) - 25) + 100, y: 710, width: 50, height: 50)
        
        chatLabel.text = "나와의 채팅"
        chatLabel.font = .systemFont(ofSize: 13)
        chatLabel.frame = CGRect(x: 57, y: 760, width: 60, height: 30)
        
        editProfileLabel.text = "프로필 편집"
        editProfileLabel.font = .systemFont(ofSize: 13)
        editProfileLabel.frame = CGRect(x: (UIScreen.main.bounds.width / 2) - 30, y: 760, width: 60, height: 30)
        
        kakaoStoryLabel.text = "카카오스토리"
        kakaoStoryLabel.font = .systemFont(ofSize: 13)
        kakaoStoryLabel.frame = CGRect(x: 253, y: 760, width: 70, height: 30)
    }
    

    

}
