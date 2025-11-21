
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_usedMessage:[UInt8] = [0xf9,0xfe,0xf9,0x4,0xb8,0xf3,0xff,0xf4,0xf5,0x2,0xca,0xb9,0xb0,0xf8,0xf1,0x3,0xb0,0xfe,0xff,0x4,0xb0,0xf2,0xf5,0xf5,0xfe,0xb0,0xf9,0xfd,0x0,0xfc,0xf5,0xfd,0xf5,0xfe,0x4,0xf5,0xf4]

fileprivate func sweepUnderTheRug(shall num: UInt8) -> UInt8 {
    let value = Int(num) - 144
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_faceverification_pose" :*/
fileprivate let dataSayKey:String = "img_facevquit analyze woman"
fileprivate let appTelephoneData:[Character] = ["e","r","i","f","i","c","a","t","i","o","n","_","p","o","s","e"]

/*: "Strike this pose and take a photo" :*/
fileprivate let constAgainPath:[UInt8] = [0xd2,0xf3,0xf1,0xe8,0xea,0xe4,0x9f,0xf3,0xe7,0xe8,0xf2,0x9f,0xef,0xee,0xf2,0xe4,0x9f,0xe0,0xed,0xe3,0x9f,0xf3,0xe0,0xea,0xe4,0x9f,0xe0,0x9f,0xef,0xe7,0xee,0xf3,0xee]

fileprivate func hangFavorite(regular num: UInt8) -> UInt8 {
    let value = Int(num) + 129
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Your photo will never be uploaded to your profile or shown to anyone else." :*/
fileprivate let notiMonthStr:[UInt8] = [0x2e,0x65,0x73,0x6c,0x65,0x20,0x65,0x6e,0x6f,0x79,0x6e,0x61,0x20,0x6f,0x74,0x20,0x6e,0x77,0x6f,0x68,0x73,0x20,0x72,0x6f,0x20,0x65,0x6c,0x69,0x66,0x6f,0x72,0x70,0x20,0x72,0x75,0x6f,0x79,0x20,0x6f,0x74,0x20,0x64,0x65,0x64,0x61,0x6f,0x6c,0x70,0x75,0x20,0x65,0x62,0x20,0x72,0x65,0x76,0x65,0x6e,0x20,0x6c,0x6c,0x69,0x77,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x72,0x75,0x6f,0x59]

/*: "Camera" :*/
fileprivate let show_handName:[Character] = ["C","a","m","e","r","a"]

/*: "btn_me_back_continue" :*/
fileprivate let k_sunPopName:String = "delivery fort anyonebtn_me"
fileprivate let main_lessName:String = "_conreward render pattern"
fileprivate let dataCollectResignFlatMessage:String = "tinuhold"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AimThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationExampleView: UIView {
class AimThen: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias CameraBtnClickBlock = () -> Void
    typealias CameraBtnClickBlock = () -> Void
    //: var btnClickBlock: CameraBtnClickBlock?
    var btnClickBlock: CameraBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        saveTransition()
        //: layoutSubViewsConstraints()
        allow()
        //: bindInteraction()
        air()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_usedMessage.map{sweepUnderTheRug(shall: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "img_faceverification_pose")
        imgView.image = UIImage.locationName(name: (String(dataSayKey.prefix(9)) + String(appTelephoneData)))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Strike this pose and take a photo".localized
        lb.text = String(bytes: constAgainPath.map{hangFavorite(regular: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dialog()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 22)
        lb.font = .bigGallery(type: .Medium, fontSize: 22)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var verificationDesLab: UILabel = {
    lazy var verificationDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anyone else.".localized
        lb.text = String(bytes: notiMonthStr.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .appValueColor()
        lb.textColor = .ownLight()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .bigGallery(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var continueBtn: UIButton = {
    lazy var continueBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Camera".localized, for: .normal)
        btn.setTitle((String(show_handName)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.locationName(name: (String(k_sunPopName.suffix(6)) + "_back" + String(main_lessName.prefix(4)) + dataCollectResignFlatMessage.replacingOccurrences(of: "hold", with: "e"))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .bigGallery(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationExampleView {
extension AimThen {
    //: @objc func registerBtnAction() {
    @objc func propagateTap() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func air() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.propagateTap()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingVerificationExampleView {
extension AimThen {
    //: func createSubViews() {
    func saveTransition() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func allow() {
        //: let fitH = 686 * (ScreenWidth - actualWidth(w: 30)) / 690
        let fitH = 686 * (main_logStr - actualWidth(w: 30)) / 690
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo((actualHeight(h: 18)))
            make.top.equalTo(actualHeight(h: 18))
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.width.equalTo(ScreenWidth-actualWidth(w: 30))
            make.width.equalTo(main_logStr - actualWidth(w: 30))
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualHeight(h: 34)-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-actualHeight(h: 34) - appInviteValue)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
