
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let const_birthNapFormat:[UInt8] = [0x90,0x95,0x90,0x9b,0x4f,0x8a,0x96,0x8b,0x8c,0x99,0x61,0x50,0x47,0x8f,0x88,0x9a,0x47,0x95,0x96,0x9b,0x47,0x89,0x8c,0x8c,0x95,0x47,0x90,0x94,0x97,0x93,0x8c,0x94,0x8c,0x95,0x9b,0x8c,0x8b]

fileprivate func leavePicture(demand num: UInt8) -> UInt8 {
    let value = Int(num) + 217
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_faceverification_photo" :*/
fileprivate let dataCoalMsg:String = "img_lack home shine"
fileprivate let user_messageUrl:String = "detaileri"
fileprivate let user_iconTitle:String = "deal under whether logion_pho"
fileprivate let app_actStr:String = "tclip"

/*: "Face verification" :*/
fileprivate let dataRelatedTitle:String = "Face giving relief tone work recent"
fileprivate let constQuantityervalName:String = "fipopulara"

/*: "A real-person verification of your profile will get you more and better matches." :*/
fileprivate let dataThinkContent:[UInt8] = [0xdd,0xbc,0xe,0x1,0xfd,0x8,0xc9,0xc,0x1,0xe,0xf,0xb,0xa,0xbc,0x12,0x1,0xe,0x5,0x2,0x5,0xff,0xfd,0x10,0x5,0xb,0xa,0xbc,0xb,0x2,0xbc,0x15,0xb,0x11,0xe,0xbc,0xc,0xe,0xb,0x2,0x5,0x8,0x1,0xbc,0x13,0x5,0x8,0x8,0xbc,0x3,0x1,0x10,0xbc,0x15,0xb,0x11,0xbc,0x9,0xb,0xe,0x1,0xbc,0xfd,0xa,0x0,0xbc,0xfe,0x1,0x10,0x10,0x1,0xe,0xbc,0x9,0xfd,0x10,0xff,0x4,0x1,0xf,0xca]

fileprivate func leftOver(global num: UInt8) -> UInt8 {
    let value = Int(num) - 156
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "· Take the photo by following the posing guide." :*/
fileprivate let data_requestTranslationPath:[UInt8] = [0xef,0x9a,0xd,0x79,0x4c,0x46,0x48,0xd,0x59,0x45,0x48,0xd,0x5d,0x45,0x42,0x59,0x42,0xd,0x4f,0x54,0xd,0x4b,0x42,0x41,0x41,0x42,0x5a,0x44,0x43,0x4a,0xd,0x59,0x45,0x48,0xd,0x5d,0x42,0x5e,0x44,0x43,0x4a,0xd,0x4a,0x58,0x44,0x49,0x48,0x3]

private func sumeractionNag(pure num: UInt8) -> UInt8 {
    return num ^ 45
}

/*: "· The person in the photo must be the account owner." :*/
fileprivate let dataResortKey:[UInt8] = [0x2e,0x72,0x65,0x6e,0x77,0x6f,0x20,0x74,0x6e,0x75,0x6f,0x63,0x63,0x61,0x20,0x65,0x68,0x74,0x20,0x65,0x62,0x20,0x74,0x73,0x75,0x6d,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x20,0x6e,0x6f,0x73,0x72,0x65,0x70,0x20,0x65,0x68,0x54,0x20,0xb7,0xc2]

/*: "Continue" :*/
fileprivate let main_supposedValue:String = "Contsign finite minute resolution"

/*: "btn_me_back_continue" :*/
fileprivate let const_contrastData:[Character] = ["b","t","n","_","m","e","_","b","a","c","k","_","c","o","n","t","i","n","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReserveVerificationView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationView: UIView {
class ReserveVerificationView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias ContinueBtnClickBlock = () -> Void
    typealias ContinueBtnClickBlock = () -> Void
    //: var btnClickBlock: ContinueBtnClickBlock?
    var btnClickBlock: ContinueBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        active()
        //: layoutSubViewsConstraints()
        ask()
        //: bindInteraction()
        adhere()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: const_birthNapFormat.map{leavePicture(demand: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "img_faceverification_photo")
        imgView.image = UIImage.locationName(name: (String(dataCoalMsg.prefix(4)) + "face" + user_messageUrl.replacingOccurrences(of: "detail", with: "v") + "ficat" + String(user_iconTitle.suffix(7)) + app_actStr.replacingOccurrences(of: "clip", with: "o")))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Face verification".localized
        lb.text = (String(dataRelatedTitle.prefix(5)) + "veri" + constQuantityervalName.replacingOccurrences(of: "popular", with: "c") + "tion").localized
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
        //: lb.text = "A real-person verification of your profile will get you more and better matches.".localized
        lb.text = String(bytes: dataThinkContent.map{leftOver(global: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .saveInColor()
        //: lb.font = .pingfangFont(type: .Medium, fontSize: 18)
        lb.font = .bigGallery(type: .Medium, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subFirstDesLab: UILabel = {
    lazy var subFirstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· Take the photo by following the posing guide.".localized
        lb.text = String(bytes: data_requestTranslationPath.map{sumeractionNag(pure: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dialog()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .bigGallery(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subSecondDesLab: UILabel = {
    lazy var subSecondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· The person in the photo must be the account owner.".localized
        lb.text = String(bytes: dataResortKey.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dialog()
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
        //: btn.setTitle("Continue".localized, for: .normal)
        btn.setTitle((String(main_supposedValue.prefix(4)) + "inue").localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.locationName(name: (String(const_contrastData))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .bigGallery(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationView {
extension ReserveVerificationView {
    //: @objc func registerBtnAction() {
    @objc func rating() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func adhere() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.rating()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationView {
extension ReserveVerificationView {
    //: func createSubViews() {
    func active() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(subFirstDesLab)
        addSubview(subFirstDesLab)
        //: addSubview(subSecondDesLab)
        addSubview(subSecondDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func ask() {
        //: let imgSize = faceBackImageView.image?.size
        let imgSize = faceBackImageView.image?.size
        //: let fitH = imgSize!.height * ScreenWidth / imgSize!.width
        let fitH = imgSize!.height * main_logStr / imgSize!.width
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo(actualHeight(h: 11)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 11) + dataPointTitle)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -5))
            make.trailing.equalTo(actualWidth(w: -5))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
        }
        //: subFirstDesLab.snp.makeConstraints { make in
        subFirstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
            make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
        }
        //: subSecondDesLab.snp.makeConstraints { make in
        subSecondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
            make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
