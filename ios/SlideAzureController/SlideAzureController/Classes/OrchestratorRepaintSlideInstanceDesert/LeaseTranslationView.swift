
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_targetText:[UInt8] = [0x2b,0x30,0x2b,0x36,0xea,0x25,0x31,0x26,0x27,0x34,0xfc,0xeb,0xe2,0x2a,0x23,0x35,0xe2,0x30,0x31,0x36,0xe2,0x24,0x27,0x27,0x30,0xe2,0x2b,0x2f,0x32,0x2e,0x27,0x2f,0x27,0x30,0x36,0x27,0x26]

fileprivate func switchceQuantity(theme num: UInt8) -> UInt8 {
    let value = Int(num) + 62
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_translation" :*/
fileprivate let kLateStr:String = "icon_tago ignore be regular pick"
fileprivate let dataDrawingSoundDayName:String = "ranminimizela"

/*: "English" :*/
fileprivate let showRecognizeValue:[Character] = ["E","n","g","l","i","s","h"]

/*: "icon_translation_go" :*/
fileprivate let k_ratingMessage:String = "toon"
fileprivate let main_riverData:String = "AT"
fileprivate let constResourceMessage:String = "profile manualion_go"

/*: "Trans" :*/
fileprivate let showBrushMsg:String = "state rangeTrans"

/*: "targetText" :*/
fileprivate let show_trapPlatValue:[Character] = ["t","a","r","g","e"]
fileprivate let main_bulletUrl:[Character] = ["t","T","e","x","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LeaseTranslationView.swift
//  AbroadTalking
//
//  Created by young on 2023/7/4.
//

//: import NaturalLanguage
import NaturalLanguage
//: import UIKit
import UIKit

//: class TalkingSelectTranslationView: UIView {
class LeaseTranslationView: UIView {
    //: var transBlock: ((_ succeed: Bool, _ text: String) -> Void)?
    var transBlock: ((_ succeed: Bool, _ text: String) -> Void)? // 翻译结果Block
    //: private var checkTransStr = ""                                // 需要翻译的文本
    private var checkTransStr = "" // 需要翻译的文本

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: setupSubviews()
        localAcross()
        //: setupSubViewsConstraint()
        meanSolarDay()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_targetText.map{switchceQuantity(theme: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var leftBtn: TalkingButton = {
    private lazy var leftBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = RangeReactiveCompatible()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_translation"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(kLateStr.prefix(6)) + dataDrawingSoundDayName.replacingOccurrences(of: "minimize", with: "s") + "tion")), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .bigGallery(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.ownLight(), for: .normal)
        //: btn.setTitle("English".localized, for: .normal)
        btn.setTitle((String(showRecognizeValue)).localized, for: .normal)
        //: btn.imageAlignment = .left
        btn.imageAlignment = .left
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: TalkingButton = {
    private lazy var rightBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = RangeReactiveCompatible()
        //: let image = UIImage.BundleImageNamed(name: "icon_translation_go").withTintColor(.appThemeColor())
        let image = UIImage.locationName(name: (k_ratingMessage.replacingOccurrences(of: "to", with: "ic") + "_transl" + main_riverData.lowercased() + String(constResourceMessage.suffix(6)))).withTintColor(.attractiveIn())
        //: btn.setImage(image, for: .normal)
        btn.setImage(image, for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Medium, fontSize: 14)
        btn.titleLabel?.font = .bigGallery(type: .Medium, fontSize: 14)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.attractiveIn(), for: .normal)
        //: btn.setTitle("Trans".localized, for: .normal)
        btn.setTitle((String(showBrushMsg.suffix(5))).localized, for: .normal)
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 3
        btn.spaceBetweenTitleAndImage = 3
        //: btn.addTarget(self, action: #selector(transButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(device), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 请求数据

//: extension TalkingSelectTranslationView {
extension LeaseTranslationView {
    /// 翻译文本内容
    //: private func req_translateText() {
    private func cookie() {
        //: TalkingChatRequestTool.req_translateText(text: checkTransStr) { succeed, result, errorModel in
        TamperRequestTool.littler(text: checkTransStr) { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.transBlock?(succeed, "")
                self.transBlock?(succeed, "")
                //: return
                return
            }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: let content = json["targetText"].stringValue
            let content = json[(String(show_trapPlatValue) + String(main_bulletUrl))].stringValue
            //: self.transBlock?(succeed, content)
            self.transBlock?(succeed, content)
        }
    }
}

// MARK: - Event

//: extension TalkingSelectTranslationView {
extension LeaseTranslationView {
    /// 检测输入内容是否为英文
    /// - Parameter inputText: 输入内容
    /// - Returns: 结果
    //: func checkInputLanguage(_ inputText: String) -> Bool {
    func expostulation(_ inputText: String) -> Bool {
        //: checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        //: guard checkTransStr.count > 0 else {
        guard checkTransStr.count > 0 else {
            //: return true
            return true
        }
        //: let languageRecognizer = NLLanguageRecognizer()
        let languageRecognizer = NLLanguageRecognizer()
        //: languageRecognizer.processString(inputText)
        languageRecognizer.processString(inputText)
        //: let language = languageRecognizer.dominantLanguage?.rawValue
        let language = languageRecognizer.dominantLanguage?.rawValue
        //: return language == "en"
        return language == "en"
    }

    /// 翻译按钮点击事件
    //: @objc private func transButtonClick() {
    @objc private func device() {
        //: self.req_translateText()
        self.cookie()
    }
}

// MARK: - Layout

//: extension TalkingSelectTranslationView {
extension LeaseTranslationView {
    /// 添加视图
    //: private func setupSubviews() {
    private func localAcross() {
        //: self.addSubview(leftBtn)
        self.addSubview(leftBtn)
        //: self.addSubview(rightBtn)
        self.addSubview(rightBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func meanSolarDay() {
        //: leftBtn.snp.makeConstraints { make in
        leftBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(9)
            make.top.equalTo(9)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.width.equalTo(70)
            make.width.equalTo(70)
        }
        //: rightBtn.snp.makeConstraints { make in
        rightBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.centerY.height.equalTo(leftBtn)
            make.centerY.height.equalTo(leftBtn)
        }
    }
}
