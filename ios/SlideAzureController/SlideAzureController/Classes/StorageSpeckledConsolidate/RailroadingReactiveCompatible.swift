
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_memoryData:[UInt8] = [0xa5,0xa2,0xa5,0xb8,0xe4,0xaf,0xa3,0xa8,0xa9,0xbe,0xf6,0xe5,0xec,0xa4,0xad,0xbf,0xec,0xa2,0xa3,0xb8,0xec,0xae,0xa9,0xa9,0xa2,0xec,0xa5,0xa1,0xbc,0xa0,0xa9,0xa1,0xa9,0xa2,0xb8,0xa9,0xa8]

/*: "icon_home_v" :*/
fileprivate let mainDotMessage:[Character] = ["i","c","o","n","_","h","o","m","e"]
fileprivate let noti_adviceEffectPerName:[Character] = ["_","v"]

/*: "btn_tab_more_pre" :*/
fileprivate let data_earnPath:[Character] = ["b","t","n","_","t","a","b","_","m","o","r"]
fileprivate let user_foundationId:[Character] = ["e","_","p","r","e"]

/*: "icon_lounge" :*/
fileprivate let kInformUrl:[Character] = ["i"]
fileprivate let show_optionSText:String = "con_lvalid spark impulse"

/*: "img_me_edit_photo_default" :*/
fileprivate let main_beyondContent:String = "img_quit professional exit"
fileprivate let constSuitText:String = "bass return book slow themt_ph"
fileprivate let k_guideBodyName:String = "display sum streamoto_d"
fileprivate let noti_quitFormat:[Character] = ["e","f","a","u","l","t"]

/*: "icon_home_boy" :*/
fileprivate let user_scheduleStr:String = "quest can want primaryicon_h"

/*: "icon_home_girl" :*/
fileprivate let dataWhenGivenKey:String = "icoactivity"
fileprivate let app_monthPath:String = "shape"

/*: "level_" :*/
fileprivate let data_mortalMsg:[Character] = ["l","e","v","e","l","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RailroadingReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/19.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

//: class TalkingMomentUserInfoView: UIView {
class RailroadingReactiveCompatible: UIView {
    //: var model = TalkingMomentModel()
    var model = IceModelType()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        will()
        //: setupSubViewsConstraint()
        listenerWho()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_memoryData.map{$0^204}, encoding: .utf8)!)
    }

    //: lazy var iconBtn: UIButton = {
    lazy var iconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 41/2
        btn.layer.cornerRadius = 41 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(iconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nearby), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var iconBorder: UIButton = {
    lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var nameLabel: UILabel = {
    lazy var nameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Medium, fontSize: 17)
        label.font = .bigGallery(type: .Medium, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var cardImg: UIImageView = {
    lazy var cardImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_home_v")
        img.image = UIImage.locationName(name: (String(mainDotMessage) + String(noti_adviceEffectPerName)))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: self.addSubview(img)
        self.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: lazy var sexBtn: UIButton = {
    lazy var sexBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 11)
        btn.titleLabel?.font = .bigGallery(type: .Medium, fontSize: 11)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var levelBtn: UIButton = {
    lazy var levelBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 11)
        btn.titleLabel?.font = .bigGallery(type: .Medium, fontSize: 11)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var deleteBtn: UIButton = {
    lazy var deleteBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_tab_more_pre"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(data_earnPath) + String(user_foundationId))), for: .normal)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.BundleImageNamed(name: "icon_lounge")
        img.image = UIImage.locationName(name: (String(kInformUrl) + String(show_optionSText.prefix(5)) + "ounge"))
        //: self.addSubview(img)
        self.addSubview(img)
        //: return img
        return img
        //: }()
    }()

//    lazy var attionBtn: UIButton = {
//        let btn = UIButton.init()
//        btn.setBackgroundImage(UIImage.BundleImageNamed(name: "btn_explore_follow"), for: .normal)
//        btn.addTarget(self, action: #selector(attentionRequest), for: .touchUpInside)
//        self.addSubview(btn)
//        return btn
//    }()
}

// MARK: - Event

//: extension TalkingMomentUserInfoView {
extension RailroadingReactiveCompatible {
    //: @objc func iconBtnClick() {
    @objc func nearby() {
        //: PushThen.share.func__pushToUserDetailVC(uid: model.uid)
        PushThen.share.sessionSomebody(uid: model.uid)
    }

    //: func configInfo(model: TalkingMomentModel) {
    func mechanism(model: IceModelType) {
        //: self.model = model
        self.model = model

        //: iconBtn.setUrlImage(urlStr: model.headPic ?? "", placeImg: UIImage.BundleImageNamed(name: "img_me_edit_photo_default"))
        iconBtn.jawWithFinish(urlStr: model.headPic ?? "", placeImg: UIImage.locationName(name: (String(main_beyondContent.prefix(4)) + "me_edi" + String(constSuitText.suffix(4)) + String(k_guideBodyName.suffix(5)) + String(noti_quitFormat))))
        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: iconBorder.isHidden = false
            iconBorder.isHidden = false
            //: iconBorder.setHeadFrameUrlImage(urlStr: model.headPicFrame)
            iconBorder.visualImageOf(urlStr: model.headPicFrame)
            //: }else {
        } else {
            //: iconBorder.isHidden = true
            iconBorder.isHidden = true
        }

        //: nameLabel.textColor = model.loungePlus ? .userVipColor():.appTitleColor()
        nameLabel.textColor = model.loungePlus ? .thanMortal() : .dialog()
        //: nameLabel.text = model.nickname
        nameLabel.text = model.nickname
        //: if !model.isTPAuth {
        if !model.isTPAuth {
            //: cardImg.isHidden = true
            cardImg.isHidden = true
            //: cardImg.snp.updateConstraints { make in
            cardImg.snp.updateConstraints { make in
                //: make.width.equalTo(1)
                make.width.equalTo(1)
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(0)
                make.leading.equalTo(nameLabel.snp.trailing).offset(0)
            }
            //: } else {
        } else {
            //: cardImg.isHidden = false
            cardImg.isHidden = false
            //: cardImg.snp.updateConstraints { make in
            cardImg.snp.updateConstraints { make in
                //: make.width.equalTo(16)
                make.width.equalTo(16)
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
                make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            }
        }

        //: loungeImgV.isHidden = !model.loungePlus
        loungeImgV.isHidden = !model.loungePlus
        //: if loungeImgV.isHidden == false {
        if loungeImgV.isHidden == false {
            //: loungeImgV.snp.makeConstraints { make in
            loungeImgV.snp.makeConstraints { make in
                //: make.centerY.equalTo(nameLabel)
                make.centerY.equalTo(nameLabel)
                //: make.leading.equalTo(cardImg.snp.trailing).offset(4)
                make.leading.equalTo(cardImg.snp.trailing).offset(4)
                //: make.size.equalTo(CGSize(width: 20, height: 20))
                make.size.equalTo(CGSize(width: 20, height: 20))
                //: make.trailing.lessThanOrEqualToSuperview().offset(-50)
                make.trailing.lessThanOrEqualToSuperview().offset(-50)
            }
        }

        //: switch model.sex {
        switch model.sex {
        //: case Gender.male.rawValue:
        case FenceSequence.male.rawValue:
            //: sexBtn.setBackgroundImage(UIImage.BundleImageNamed(name: "icon_home_boy"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.locationName(name: (String(user_scheduleStr.suffix(6)) + "ome_boy")), for: .normal)
        //: break
        //: case Gender.female.rawValue:
        case FenceSequence.female.rawValue:
            //: sexBtn.setBackgroundImage(UIImage.BundleImageNamed(name: "icon_home_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.locationName(name: (dataWhenGivenKey.replacingOccurrences(of: "activity", with: "n") + "_home_gir" + app_monthPath.replacingOccurrences(of: "shape", with: "l"))), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age ?? 0), for: .normal)
        sexBtn.setTitle("   " + String(model.age ?? 0), for: .normal)

        //: levelBtn.setBackgroundImage(UIImage.BundleImageNamed(name: "level_" + String(model.level ?? 1 )), for: .normal)
        levelBtn.setBackgroundImage(UIImage.locationName(name: (String(data_mortalMsg)) + String(model.level ?? 1)), for: .normal)
        //: deleteBtn.isHidden = !model.isUserDetail
        deleteBtn.isHidden = !model.isUserDetail
        //: deleteBtn.snp.updateConstraints { make in
        deleteBtn.snp.updateConstraints { make in
            //: make.width.equalTo(deleteBtn.isHidden ? 1 : 40)
            make.width.equalTo(deleteBtn.isHidden ? 1 : 40)
        }
//        attionBtn.isHidden = model.isAttention ?? true ||  DismissReactiveCompatible.share.loginUserMode.userID == model.uid
    }

//    @objc func attentionRequest() {
//
//        ThresholdLevelRequestManager.func__attentionWithUserId(uid: self.model.uid ?? "", isAttention: true) { succeed, result, errorModel in
//            if succeed == true {
//                NotificationCenter.default.post(name: UPDATE_ATTION_NOTIFICATION, object: self, userInfo: ["uid": self.model.uid ?? ""])
//                self.func__showStatusBarSuccessMsg(showMsg: "Favourite Successfully")
//                self.attionBtn.isHidden = true
//
//            } else {
//                InsertProgressHUD.toast(errorModel?.errorMsg)
//            }
//        }
//    }
}

// MARK: - LayoutUI

//: extension TalkingMomentUserInfoView {
extension RailroadingReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func will() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.isUserInteractionEnabled = true
        self.isUserInteractionEnabled = true
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func listenerWho() {
        //: iconBtn.snp.makeConstraints { make in
        iconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(12)
            make.top.equalTo(12)
            //: make.size.equalTo(CGSize.init(width: 41, height: 41))
            make.size.equalTo(CGSize(width: 41, height: 41))
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.equalTo(-4)
            make.leading.equalTo(-4)
            //: make.top.equalTo(6)
            make.top.equalTo(6)
            //: make.size.equalTo(CGSize.init(width: 50, height: 50))
            make.size.equalTo(CGSize(width: 50, height: 50))
        }

        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.trailing).offset(8)
            make.leading.equalTo(iconBtn.snp.trailing).offset(8)
            //: make.top.equalTo(self).offset(13)
            make.top.equalTo(self).offset(13)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }

        //: cardImg.snp.makeConstraints { make in
        cardImg.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(16)
            make.width.equalTo(16)
            //: make.trailing.lessThanOrEqualTo(deleteBtn.snp.leading).offset(-10)
            make.trailing.lessThanOrEqualTo(deleteBtn.snp.leading).offset(-10)
        }
        //: sexBtn.snp.makeConstraints { make in
        sexBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.trailing).offset(8)
            make.leading.equalTo(iconBtn.snp.trailing).offset(8)
            //: make.top.equalTo(nameLabel.snp.bottom).offset(4)
            make.top.equalTo(nameLabel.snp.bottom).offset(4)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.width.equalTo(35)
            make.width.equalTo(35)
        }
        //: levelBtn.snp.makeConstraints { make in
        levelBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(sexBtn.snp.trailing).offset(3)
            make.leading.equalTo(sexBtn.snp.trailing).offset(3)
            //: make.top.equalTo(sexBtn)
            make.top.equalTo(sexBtn)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.width.equalTo(35)
            make.width.equalTo(35)
        }
        //: deleteBtn.snp.remakeConstraints { make in
        deleteBtn.snp.remakeConstraints { make in
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize.init(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
//        attionBtn.snp.remakeConstraints { make in
//            make.top.equalTo(nameLabel).offset(10)
//            make.trailing.equalTo(-12)
//            make.size.equalTo(CGSize.init(width: 28, height: 24))
//        }
    }
}
