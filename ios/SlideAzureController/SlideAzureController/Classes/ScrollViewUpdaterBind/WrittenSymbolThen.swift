
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showWillName:[UInt8] = [0x47,0x40,0x47,0x5a,0x6,0x4d,0x41,0x4a,0x4b,0x5c,0x14,0x7,0xe,0x46,0x4f,0x5d,0xe,0x40,0x41,0x5a,0xe,0x4c,0x4b,0x4b,0x40,0xe,0x47,0x43,0x5e,0x42,0x4b,0x43,0x4b,0x40,0x5a,0x4b,0x4a]

private func refreshLateExhibit(secure num: UInt8) -> UInt8 {
    return num ^ 46
}

/*: "copywriting" :*/
fileprivate let data_commitValue:String = "coyesterdayy"
fileprivate let constWhatFitTryText:String = "iact"

/*: "showBullet" :*/
fileprivate let k_meanValue:[Character] = ["s","h","o","w","B","u"]
fileprivate let kPortContent:String = "communicationcommunicationet"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WrittenSymbolThen.swift
//  AbroadTalking
//
//  Created by young on 2023/9/11.
//

//: import UIKit
import UIKit

//: class TalkingVideoFloatScreenView: UIView {
class WrittenSymbolThen: UIView {
    // 数据
    //: private let data = JSON(DismissReactiveCompatible.share.appConfigMode.videoReport)
    private let data = JSON(DismissReactiveCompatible.share.appConfigMode.videoReport)

    // MARK: - 属性声明

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: setupSubviews()
        pauseTo()
        //: setupSubViewsConstraint()
        pastPull()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showWillName.map{refreshLateExhibit(secure: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var textLab: UILabel = {
    private lazy var textLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 12)
        lab.font = UIFont.bonePlace(fontSize: 12)
        //: lab.text = data["copywriting"].stringValue
        lab.text = data[(data_commitValue.replacingOccurrences(of: "yesterday", with: "p") + "writ" + constWhatFitTryText.replacingOccurrences(of: "act", with: "ng"))].stringValue
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoFloatScreenView {
extension WrittenSymbolThen {
    /// 展示飘屏动画
    //: @objc func show_animation() {
    @objc func controlFactor() {
        //: guard self.textLab.text?.count ?? 0 > 0 else { return }
        guard self.textLab.text?.count ?? 0 > 0 else { return }
        //: guard data["showBullet"].boolValue == true else { return }
        guard data[(String(k_meanValue) + kPortContent.replacingOccurrences(of: "communication", with: "l"))].boolValue == true else { return }
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: var startX = ScreenWidth
        var startX = main_logStr
        //: var endX = -self.frame.width
        var endX = -self.frame.width
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: startX = -self.frame.width
            startX = -self.frame.width
            //: endX = ScreenWidth
            endX = main_logStr
        }
        //: self.isHidden = false
        self.isHidden = false
        //: self.frame.origin.x = startX
        self.frame.origin.x = startX
        //: let duration = (ScreenWidth+self.frame.width)*5.0/ScreenWidth
        let duration = (main_logStr + self.frame.width) * 5.0 / main_logStr
        //: UIView.animate(withDuration: duration, delay: 0, options: .curveLinear) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveLinear) {
            //: self.frame.origin.x = endX
            self.frame.origin.x = endX

            //: } completion: { finish in
        } completion: { _ in
            //: DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
                //: self?.show_animation()
                self?.controlFactor()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoFloatScreenView {
extension WrittenSymbolThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func pauseTo() {
        //: self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        //: self.layer.cornerRadius = 11
        self.layer.cornerRadius = 11
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: self.isHidden = true
        self.isHidden = true
        //: addSubview(textLab)
        addSubview(textLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func pastPull() {
        //: let text_width = self.textLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 22)).width
        let text_width = self.textLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 22)).width
        //: self.frame = CGRect(x: ScreenWidth,
        self.frame = CGRect(x: main_logStr,
                            //: y: StatusBarHeight+45,
                            y: dataPointTitle + 45,
                            //: width: text_width+16.0,
                            width: text_width + 16.0,
                            //: height: 22)
                            height: 22)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: self.frame.origin.x = -self.frame.width
            self.frame.origin.x = -self.frame.width
        }
        //: textLab.snp.makeConstraints { make in
        textLab.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
    }
}
