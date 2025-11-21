
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainJusticeTitle:[UInt8] = [0x98,0x9f,0x98,0x85,0xd9,0x92,0x9e,0x95,0x94,0x83,0xcb,0xd8,0xd1,0x99,0x90,0x82,0xd1,0x9f,0x9e,0x85,0xd1,0x93,0x94,0x94,0x9f,0xd1,0x98,0x9c,0x81,0x9d,0x94,0x9c,0x94,0x9f,0x85,0x94,0x95]

/*: "img_freeMsgtime_hot" :*/
fileprivate let appIgnoreReliefName:String = "pure mechanical numberimg_f"
fileprivate let appUniformValue:[Character] = ["r","e","e","M","s"]
fileprivate let app_numbName:[Character] = ["g","t","i","m","e","_","h","o","t"]

/*: "#8566FF" :*/
fileprivate let data_keepName:[Character] = ["#","8","5","6","6","F","F"]

/*: "#BBA9FF" :*/
fileprivate let user_hideValue:String = "by property place false scene#BBA9FF"

/*: "Use it on someone you like" :*/
fileprivate let appDifferenceId:String = "root bulletUse "
fileprivate let notiStoneBoyPictureKey:String = "n someya express"
fileprivate let notiLabelMessage:String = " likearc swing clearly"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SmallTimesView.swift
//  SlideAzureController
//
//  Created by Charlotte on 2025/8/20.
//

//: import UIKit
import UIKit

//: let FreeMsgTimeView_H = 84.0
let kEnableMsg = 84.0

//: class TalkingFreeMsgTimesView: UIView {
class SmallTimesView: UIView {
    //: private var currModel = TalkingConversationModel()
    private var currModel = IceTapThen()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        commitAcross()
        //: setupSubViewsConstraint()
        pinConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainJusticeTitle.map{$0^241}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var shadowView: UIView = {
    private lazy var shadowView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        //: v.layer.shadowOffset = .zero
        v.layer.shadowOffset = .zero
        //: v.layer.shadowOpacity = 1
        v.layer.shadowOpacity = 1
        //: v.layer.shadowRadius = 6
        v.layer.shadowRadius = 6
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: return v
        return v
        //: }()
    }()

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.image = UIImage.BundleImageNamed(name: "img_freeMsgtime_hot")
        imageView.image = UIImage.locationName(name: (String(appIgnoreReliefName.suffix(5)) + String(appUniformValue) + String(app_numbName)))
        //: imageView.contentMode = .scaleAspectFill
        imageView.contentMode = .scaleAspectFill
        //: return imageView
        return imageView
        //: }()
    }()

    //: private lazy var titleLabel: UILabel = {
    private lazy var titleLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 18)
        label.font = .bigGallery(type: .Semibold, fontSize: 18)
        //: label.textColor = UIColor(hex: "#8566FF")
        label.textColor = UIColor(hex: (String(data_keepName)))
        //: return label
        return label
        //: }()
    }()

    //: private lazy var msgLabel: UILabel = {
    private lazy var msgLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 15)
        label.font = .bigGallery(type: .Regular, fontSize: 15)
        //: label.textColor = UIColor(hex: "#BBA9FF")
        label.textColor = UIColor(hex: (String(user_hideValue.suffix(7))))
        //: label.text = "Use it on someone you like".localized
        label.text = (String(appDifferenceId.suffix(4)) + "it o" + String(notiStoneBoyPictureKey.prefix(6)) + "one you" + String(notiLabelMessage.prefix(5))).localized
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFreeMsgTimesView {
extension SmallTimesView {
    /// 展示视图，5s后自动移除
    //: func show() {
    func previousShow() {
        //: titleLabel.text = DismissReactiveCompatible.share.loginUserMode.freeContentPop
        titleLabel.text = DismissReactiveCompatible.share.loginUserMode.freeContentPop

        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DepictionThen.getWindow().addSubview(self)
            DepictionThen.fossilization().addSubview(self)
            //: UIView.animate(withDuration: 0.5) {
            UIView.animate(withDuration: 0.5) {
                //: self.frame.origin.y = ScreenHeight-TabBarViewHeight-FreeMsgTimeView_H
                self.frame.origin.y = main_nameData - main_explainMessage - kEnableMsg
                //: } completion: { _ in
            } completion: { _ in
                //: DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    //: self.dismiss(needAlpha: false)
                    self.popAlpha(needAlpha: false)
                }
            }
        }
    }

    /// 移除视图
    //: func dismiss(needAlpha: Bool = true) {
    func popAlpha(needAlpha: Bool = true) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: UIView.animate(withDuration: 0.5) {
            UIView.animate(withDuration: 0.5) {
                //: if needAlpha {
                if needAlpha {
                    //: self.alpha = 0
                    self.alpha = 0
                    //: } else {
                } else {
                    //: self.frame.origin.y = ScreenHeight
                    self.frame.origin.y = main_nameData
                }
                //: } completion: { _ in
            } completion: { _ in

                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingFreeMsgTimesView {
extension SmallTimesView {
    /// 刷新视图

    /// 添加视图
    //: private func setupSubviews() {
    private func commitAcross() {
        //: self.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: FreeMsgTimeView_H)
        self.frame = CGRect(x: 0, y: main_nameData, width: main_logStr, height: kEnableMsg)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: self.addSubview(shadowView)
        self.addSubview(shadowView)
        //: shadowView.addSubview(bgImgView)
        shadowView.addSubview(bgImgView)
        //: bgImgView.addSubview(titleLabel)
        bgImgView.addSubview(titleLabel)
        //: bgImgView.addSubview(msgLabel)
        bgImgView.addSubview(msgLabel)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func pinConstraint() {
        //: shadowView.snp.makeConstraints { make in
        shadowView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(60)
            make.height.equalTo(60)
        }

        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(16)
            make.leading.equalTo(16)
            //: make.trailing.equalTo(-62)
            make.trailing.equalTo(-62)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: msgLabel.snp.makeConstraints { make in
        msgLabel.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(titleLabel)
            make.leading.trailing.equalTo(titleLabel)
            //: make.top.equalTo(titleLabel.snp.bottom).offset(4)
            make.top.equalTo(titleLabel.snp.bottom).offset(4)
        }
    }
}
