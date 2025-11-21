
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainAutomaticallyValue:[UInt8] = [0x75,0x7a,0x75,0x80,0x34,0x6f,0x7b,0x70,0x71,0x7e,0x46,0x35,0x2c,0x74,0x6d,0x7f,0x2c,0x7a,0x7b,0x80,0x2c,0x6e,0x71,0x71,0x7a,0x2c,0x75,0x79,0x7c,0x78,0x71,0x79,0x71,0x7a,0x80,0x71,0x70]

fileprivate func foundFormal(rid num: UInt8) -> UInt8 {
    let value = Int(num) - 12
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_faceverification_photopose" :*/
fileprivate let constAreaSitName:String = "img_faassist liquid res audience"
fileprivate let notiOperateMessage:String = "ibeanc"
fileprivate let const_bindMessage:String = "n_photbubble example thanks today"
fileprivate let main_goldHangUrl:String = "gatherose"

/*: "To pass the verification, in the photo you should:" :*/
fileprivate let constMediaName:[UInt8] = [0xa7,0x9c,0xd3,0x83,0x92,0x80,0x80,0xd3,0x87,0x9b,0x96,0xd3,0x85,0x96,0x81,0x9a,0x95,0x9a,0x90,0x92,0x87,0x9a,0x9c,0x9d,0xdf,0xd3,0x9a,0x9d,0xd3,0x87,0x9b,0x96,0xd3,0x83,0x9b,0x9c,0x87,0x9c,0xd3,0x8a,0x9c,0x86,0xd3,0x80,0x9b,0x9c,0x86,0x9f,0x97,0xc9]

private func othersMaybe(include num: UInt8) -> UInt8 {
    return num ^ 243
}

/*: "· show your face clearly;" :*/
fileprivate let mainInstallationTitle:String = "· shotill skip device"
fileprivate let userSnakePath:String = "ur fwithout access operation bounce"
fileprivate let k_remainTitle:[Character] = ["a","c","e"," ","c","l","e","a","r","l","y",";"]

/*: "· pose exactly like the posing guide." :*/
fileprivate let showCleanName:[UInt8] = [0x1d,0x68,0xff,0xaf,0xb0,0xac,0xba,0xff,0xba,0xa7,0xbe,0xbc,0xab,0xb3,0xa6,0xff,0xb3,0xb6,0xb4,0xba,0xff,0xab,0xb7,0xba,0xff,0xaf,0xb0,0xac,0xb6,0xb1,0xb8,0xff,0xb8,0xaa,0xb6,0xbb,0xba,0xf1]

/*: "Your photo will never be uploaded to your profile or shown to anvone else." :*/
fileprivate let kPlaceSumroTitle:[UInt8] = [0x53,0x65,0x7f,0x78,0x2a,0x7a,0x62,0x65,0x7e,0x65,0x2a,0x7d,0x63,0x66,0x66,0x2a,0x64,0x6f,0x7c,0x6f,0x78,0x2a,0x68,0x6f,0x2a,0x7f,0x7a,0x66,0x65,0x6b,0x6e,0x6f,0x6e,0x2a,0x7e,0x65,0x2a,0x73,0x65,0x7f,0x78,0x2a,0x7a,0x78,0x65,0x6c,0x63,0x66,0x6f,0x2a,0x65,0x78,0x2a,0x79,0x62,0x65,0x7d,0x64,0x2a,0x7e,0x65,0x2a,0x6b,0x64,0x7c,0x65,0x64,0x6f,0x2a,0x6f,0x66,0x79,0x6f,0x24]

/*: "Submit Photo" :*/
fileprivate let data_forthFormat:String = "Submit manner exactly"
fileprivate let k_expectedMsg:String = "still corruptPhoto"

/*: "btn_me_back_continue" :*/
fileprivate let mainDailyName:String = "btn_me_bhoney bridge decide later however"
fileprivate let k_ignoreContent:String = "produce bold continue mean paraack_"

/*: "Retake Photo" :*/
fileprivate let app_cloudText:String = "Retake following let"
fileprivate let const_numbPairPrivateFormat:String = "stage progress him load norPhoto"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EngineeringReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationTakePhotoView: UIView {
class EngineeringReactiveCompatible: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias SubmitBtnClickBlock = (_ photoImage: UIImage) -> Void
    typealias SubmitBtnClickBlock = (_ photoImage: UIImage) -> Void
    //: typealias RetakeBtnClickBlock = () -> Void
    typealias RetakeBtnClickBlock = () -> Void
    //: var submitClickBlock: SubmitBtnClickBlock?
    var submitClickBlock: SubmitBtnClickBlock?
    //: var retakeClickBlock: RetakeBtnClickBlock?
    var retakeClickBlock: RetakeBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        fromPending()
        //: layoutSubViewsConstraints()
        takeAHop()
        //: bindInteraction()
        temporaryWorker()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainAutomaticallyValue.map{foundFormal(rid: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var leftExampleImageView: UIImageView = {
    lazy var leftExampleImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.BundleImageNamed(name: "img_faceverification_photopose")
        imgView.image = UIImage.locationName(name: (String(constAreaSitName.prefix(6)) + "cever" + notiOperateMessage.replacingOccurrences(of: "bean", with: "fi") + "atio" + String(const_bindMessage.prefix(6)) + main_goldHangUrl.replacingOccurrences(of: "gather", with: "op")))
        //: imgView.layer.cornerRadius = 8
        imgView.layer.cornerRadius = 8
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var rightPhotoImageView: UIImageView = {
    lazy var rightPhotoImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.backgroundColor = UIColor.appValueColor()
        imgView.backgroundColor = UIColor.ownLight()
        //: imgView.layer.cornerRadius = 8
        imgView.layer.cornerRadius = 8
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "To pass the verification, in the photo you should:".localized
        lb.text = String(bytes: constMediaName.map{othersMaybe(include: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appTitleColor()
        lb.textColor = .dialog()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 18)
        lb.font = .bigGallery(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var firstDesLab: UILabel = {
    lazy var firstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· show your face clearly;".localized
        lb.text = (String(mainInstallationTitle.prefix(5)) + "w yo" + String(userSnakePath.prefix(4)) + String(k_remainTitle)).localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .saveInColor()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .bigGallery(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var secondDesLab: UILabel = {
    lazy var secondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· pose exactly like the posing guide.".localized
        lb.text = String(bytes: showCleanName.map{$0^223}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .saveInColor()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .bigGallery(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var bottomTipLab: UILabel = {
    lazy var bottomTipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anvone else.".localized
        lb.text = String(bytes: kPlaceSumroTitle.map{$0^10}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .saveInColor()
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 15)
        lb.font = .bigGallery(type: .Regular, fontSize: 15)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var submitBtn: UIButton = {
    lazy var submitBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Submit Photo".localized, for: .normal)
        btn.setTitle((String(data_forthFormat.prefix(7)) + String(k_expectedMsg.suffix(5))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.locationName(name: (String(mainDailyName.prefix(8)) + String(k_ignoreContent.suffix(4)) + "continue")), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .bigGallery(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var retakeBtn: UIButton = {
    lazy var retakeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Retake Photo".localized, for: .normal)
        btn.setTitle((String(app_cloudText.prefix(7)) + String(const_numbPairPrivateFormat.suffix(5))).localized, for: .normal)
        //: btn.setTitleColor(.appValueColor(), for: .normal)
        btn.setTitleColor(.ownLight(), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = .bigGallery(type: .Regular, fontSize: 18)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationTakePhotoView {
extension EngineeringReactiveCompatible {
    //: @objc func registerSubmitAction() {
    @objc func namedrop() {
        //: if submitClickBlock != nil, rightPhotoImageView.image != nil {
        if submitClickBlock != nil, rightPhotoImageView.image != nil {
            //: submitClickBlock!(rightPhotoImageView.image!)
            submitClickBlock!(rightPhotoImageView.image!)
        }
    }

    //: @objc func registerRetakeAction() {
    @objc func event() {
        //: if retakeClickBlock != nil {
        if retakeClickBlock != nil {
            //: retakeClickBlock!()
            retakeClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func temporaryWorker() {
        //: submitBtn.rx.controlEvent(.touchUpInside)
        submitBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerSubmitAction()
                self.namedrop()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        //: retakeBtn.rx.controlEvent(.touchUpInside)
        retakeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerRetakeAction()
                self.event()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - UI

//: extension TalkingVerificationTakePhotoView {
extension EngineeringReactiveCompatible {
    //: func createSubViews() {
    func fromPending() {
        //: addSubview(leftExampleImageView)
        addSubview(leftExampleImageView)
        //: addSubview(rightPhotoImageView)
        addSubview(rightPhotoImageView)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(firstDesLab)
        addSubview(firstDesLab)
        //: addSubview(secondDesLab)
        addSubview(secondDesLab)
        //: addSubview(submitBtn)
        addSubview(submitBtn)
        //: addSubview(retakeBtn)
        addSubview(retakeBtn)
        //: addSubview(bottomTipLab)
        addSubview(bottomTipLab)
    }

    //: func layoutSubViewsConstraints() {
    func takeAHop() {
        //: let itemWidth = (ScreenWidth - actualWidth(w: 40)) / 2.0
        let itemWidth = (main_logStr - actualWidth(w: 40)) / 2.0
        //: leftExampleImageView.snp.makeConstraints { make in
        leftExampleImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 18))
            make.top.equalTo(actualHeight(h: 18))
            //: make.width.height.equalTo(itemWidth)
            make.width.height.equalTo(itemWidth)
        }
        //: rightPhotoImageView.snp.makeConstraints { make in
        rightPhotoImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(leftExampleImageView.snp.trailing).offset(actualWidth(w: 10))
            make.leading.equalTo(leftExampleImageView.snp.trailing).offset(actualWidth(w: 10))
            //: make.top.equalTo(leftExampleImageView.snp.top)
            make.top.equalTo(leftExampleImageView.snp.top)
            //: make.width.height.equalTo(itemWidth)
            make.width.height.equalTo(itemWidth)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(leftExampleImageView.snp.bottom).offset(actualHeight(h: 17))
            make.top.equalTo(leftExampleImageView.snp.bottom).offset(actualHeight(h: 17))
        }
        //: firstDesLab.snp.makeConstraints { make in
        firstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 10))
        }
        //: secondDesLab.snp.makeConstraints { make in
        secondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.leading)
            make.leading.equalTo(titleLab.snp.leading)
            //: make.trailing.equalTo(titleLab.snp.trailing)
            make.trailing.equalTo(titleLab.snp.trailing)
            //: make.top.equalTo(firstDesLab.snp.bottom).offset(actualHeight(h: 5))
            make.top.equalTo(firstDesLab.snp.bottom).offset(actualHeight(h: 5))
        }

        //: bottomTipLab.snp.makeConstraints { make in
        bottomTipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.leading)
            make.leading.equalTo(titleLab.snp.leading)
            //: make.trailing.equalTo(titleLab.snp.trailing)
            make.trailing.equalTo(titleLab.snp.trailing)
            //: make.bottom.equalTo(-24-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-24 - appInviteValue)
        }
        //: retakeBtn.snp.makeConstraints { make in
        retakeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(bottomTipLab.snp.top).offset(-5)
            make.bottom.equalTo(bottomTipLab.snp.top).offset(-5)
            //: make.leading.equalTo(actualWidth(w: 54))
            make.leading.equalTo(actualWidth(w: 54))
            //: make.trailing.equalTo(actualWidth(w: -54))
            make.trailing.equalTo(actualWidth(w: -54))
            //: make.height.equalTo(actualHeight(h: 42))
            make.height.equalTo(actualHeight(h: 42))
        }
        //: submitBtn.snp.makeConstraints { make in
        submitBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(retakeBtn.snp.top)
            make.bottom.equalTo(retakeBtn.snp.top)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
