
//: Declare String Begin

/*: "AA43FF" :*/
fileprivate let appRelatedFormat:[Character] = ["A","A","4","3","F"]
fileprivate let notiConvertData:[Character] = ["F"]

/*: "F4D7FF" :*/
fileprivate let k_bothId:String = "FclothingD7F"
fileprivate let noti_preparePath:[Character] = ["F"]

/*: "Submit" :*/
fileprivate let const_minData:String = "ad trail select prettySubmi"
fileprivate let notiBoldDiscussionMessage:String = "T"

/*: "Submit Your Application" :*/
fileprivate let k_bindTitle:[Character] = ["S","u","b","m","i","t"," ","Y","o","u","r"," ","A","p"]
fileprivate let userMobileCurveValue:String = "plifirsttion"

/*: "Please enter the Agency invite code" :*/
fileprivate let mainLeaguePath:[UInt8] = [0xcb,0xf7,0xfe,0xfa,0xe8,0xfe,0xbb,0xfe,0xf5,0xef,0xfe,0xe9,0xbb,0xef,0xf3,0xfe,0xbb,0xda,0xfc,0xfe,0xf5,0xf8,0xe2,0x59,0x3b,0xf2,0xf5,0xed,0xf2,0xef,0xfe,0x59,0x3b,0xf8,0xf4,0xff,0xfe]

private func threeBass(world num: UInt8) -> UInt8 {
    return num ^ 155
}

/*: "btn_field_delete_icon" :*/
fileprivate let app_lastId:String = "again renderbtn_fie"
fileprivate let dataRiverNatureKey:String = "ld_dbond hair column accommodate mutual"
fileprivate let mainFadeContent:String = "ICON"

/*: "BBBBBB" :*/
fileprivate let app_satisfyMessage:[Character] = ["B","B","B","B","B","B"]

/*: "nav_back_black_nor" :*/
fileprivate let userHistoryMessage:[Character] = ["n","a","v","_","b","a","c","k","_"]
fileprivate let notiPresentFormat:String = "word tail need handleblack_nor"

/*: "NO Agency?Become Personal Host >" :*/
fileprivate let show_qualifyData:[UInt8] = [0x47,0x46,0x29,0x48,0x6e,0x6c,0x67,0x6a,0x70,0x36,0x4b,0x6c,0x6a,0x66,0x64,0x6c,0x29,0x59,0x6c,0x7b,0x7a,0x66,0x67,0x68,0x65,0x29,0x41,0x66,0x7a,0x7d,0x29,0x37]

private func capStill(communicate num: UInt8) -> UInt8 {
    return num ^ 9
}

/*: "code" :*/
fileprivate let show_failTitle:[UInt8] = [0xbe,0xb2,0xb9,0xb8]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DarkFieldDelegate.swift
//  SlideAzureController
//
//  Created by Charlotte on 2025/8/21.
//

//: import UIKit
import UIKit

/// 真人认证-填写邀请码页面
//: class TalkingVerifyCodeVC: TalkingBaseViewController {
class DarkFieldDelegate: WeddingLovelyRecognizerDelegate {
    //: private var inputAttr = [NSAttributedString.Key: Any]()
    private var inputAttr = [NSAttributedString.Key: Any]()

    //: let lengthLimit = 20
    let lengthLimit = 20
    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.createUI()
        self.withUi()
        //: self.createUIConstraint()
        self.swaddlingClothesMemory()
    }

    // MARK: - Lazy load

    //: lazy var bgView: UIImageView = {
    lazy var bgView: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "AA43FF")!.cgColor, UIColor.init(hex: "F4D7FF")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        imag.image = UIImage.aboveDraft(colors: [UIColor(hex: (String(appRelatedFormat) + String(notiConvertData)))!.cgColor, UIColor(hex: (k_bothId.replacingOccurrences(of: "clothing", with: "4") + String(noti_preparePath)))!.cgColor], size: CGSize(width: main_logStr, height: main_nameData))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var nextBtn: UIButton = {
    private lazy var nextBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Submit".localized, for: .normal)
        btn.setTitle((String(const_minData.suffix(5)) + notiBoldDiscussionMessage.lowercased()).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-32, height: 54)), for: .normal)
        btn.setBackgroundImage(UIImage.beforeCan(colors: UIColor.minimizeOn(), size: CGSize(width: main_logStr - 32, height: 54)), for: .normal)
        //: btn.addTarget(self, action: #selector(nextBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(insideBottom), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submit Your Application".localized
        lb.text = (String(k_bindTitle) + userMobileCurveValue.replacingOccurrences(of: "first", with: "ca")).localized
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = .pingfangFont(type: .Semibold, fontSize: 18)
        lb.font = .bigGallery(type: .Semibold, fontSize: 18)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var topLab: UILabel = {
    lazy var topLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Please enter the Agency invite code".localized
        lb.text = String(bytes: mainLeaguePath.map{threeBass(world: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = .pingfangFont(type: .Regular, fontSize: 16)
        lb.font = .bigGallery(type: .Regular, fontSize: 16)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var inviteCodeCleanBtn: UIButton = {
    private lazy var inviteCodeCleanBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_field_delete_icon"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(app_lastId.suffix(7)) + String(dataRiverNatureKey.prefix(4)) + "elete_" + mainFadeContent.lowercased())), for: .normal)
        //: btn.addTarget(self, action: #selector(inviteCodeCleanButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(staminateEvent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var inviteCodeInputView: UITextField = {
    lazy var inviteCodeInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4D7FF")
        textField.backgroundColor = UIColor(hex: (k_bothId.replacingOccurrences(of: "clothing", with: "4") + String(noti_preparePath)))
        //: textField.font = .pingfangFont(type: .Regular, fontSize: 15)
        textField.font = .bigGallery(type: .Regular, fontSize: 15)
        //: textField.textColor = .appTitleColor()
        textField.textColor = .dialog()
        //: textField.layer.cornerRadius = 27
        textField.layer.cornerRadius = 27
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.delegate = self
        textField.delegate = self
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.pingfangFont(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.bigGallery(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: (String(app_satisfyMessage)))!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .always
        textField.rightViewMode = .always
        //: rightView.addSubview(inviteCodeCleanBtn)
        rightView.addSubview(inviteCodeCleanBtn)
        //: textField.addTarget(self, action: #selector(inviteCodeTextChage(_:)), for: .editingChanged)
        textField.addTarget(self, action: #selector(broadWillErr(_:)), for: .editingChanged)
        //: return textField
        return textField
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.BundleImageNamed(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.locationName(name: (String(userHistoryMessage) + String(notiPresentFormat.suffix(9)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(backBtnClicked), for: .touchUpInside)
        btn.addTarget(self, action: #selector(lumbarVertebra), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skiyBtn: UIButton = {
    lazy var skiyBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(.appValueDetailColor(), for: .normal)
        btn.setTitleColor(.saveInColor(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Regular, fontSize: 14)
        //: btn.setTitle("NO Agency?Become Personal Host >".localized, for: .normal)
        btn.setTitle(String(bytes: show_qualifyData.map{capStill(communicate: $0)}, encoding: .utf8)!.localized, for: .normal)
        //: btn.addTarget(self, action: #selector(skiyBtnClicked), for: .touchUpInside)
        btn.addTarget(self, action: #selector(awakeClicked), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerifyCodeVC {
extension DarkFieldDelegate {
    //: @objc private func nextBtnClick() {
    @objc private func insideBottom() {
        //: if inviteCodeInputView.text?.count ?? 0 > 0 {
        if inviteCodeInputView.text?.count ?? 0 > 0 {
            //: ProgressHUD.show()
            InsertProgressHUD.momentShow()
            //: TalkingLoginRequestTool.req_inviteBindInviter(params: ["code":inviteCodeInputView.text ?? ""]) { succeed, result, errorModel in
            FirRequestTool.sum(params: [String(bytes: show_failTitle.map{$0^221}, encoding: .utf8)!: inviteCodeInputView.text ?? ""]) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                InsertProgressHUD.detectDismiss()
                //: if succeed {
                if succeed {
                    //: let vc = TalkingVerificationExampleVC.init()
                    let vc = DisenableExampleVc()
                    //: self.navigationController?.pushViewController(vc, animated: true)
                    self.navigationController?.pushViewController(vc, animated: true)
                }
            }
        }
    }

    //: @objc func skiyBtnClicked() {
    @objc func awakeClicked() {
        //: let vc = TalkingVerificationExampleVC.init()
        let vc = DisenableExampleVc()
        //: vc.isNoCodePush = true
        vc.isNoCodePush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    //: @objc func backBtnClicked() {
    @objc func lumbarVertebra() {
        //: self.naviPopback()
        self.popbackResult()
    }

    //: @objc private func inviteCodeCleanButtonEvent() {
    @objc private func staminateEvent() {
        //: inviteCodeInputView.text = ""
        inviteCodeInputView.text = ""
    }
}

//: extension TalkingVerifyCodeVC: UITextFieldDelegate {
extension DarkFieldDelegate: UITextFieldDelegate {
    //: @objc private func inviteCodeTextChage(_ textField: UITextField) {
    @objc private func broadWillErr(_: UITextField) {
        //: let verStr: String = inviteCodeInputView.text ?? ""
        let verStr: String = inviteCodeInputView.text ?? ""
        //: if verStr.count > lengthLimit {
        if verStr.count > lengthLimit {
            //: let substring = inviteCodeInputView.text?.prefix(lengthLimit)
            let substring = inviteCodeInputView.text?.prefix(lengthLimit)
            //: inviteCodeInputView.text = String(substring ?? "")
            inviteCodeInputView.text = String(substring ?? "")
        }
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()
    }
}

// MARK: - UI

//: extension TalkingVerifyCodeVC {
extension DarkFieldDelegate {
    //: func createUI() {
    func withUi() {
        //: view.addSubview(bgView)
        view.addSubview(bgView)
        //: bgView.addSubview(titleLab)
        bgView.addSubview(titleLab)
        //: bgView.addSubview(backBtn)
        bgView.addSubview(backBtn)
        //: bgView.addSubview(topLab)
        bgView.addSubview(topLab)
        //: bgView.addSubview(inviteCodeInputView)
        bgView.addSubview(inviteCodeInputView)
        //: bgView.addSubview(nextBtn)
        bgView.addSubview(nextBtn)
        //: bgView.addSubview(skiyBtn)
        bgView.addSubview(skiyBtn)
    }

    //: func createUIConstraint() {
    func swaddlingClothesMemory() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 12)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 12) + dataPointTitle)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(backBtn)
            make.top.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: topLab.snp.makeConstraints { make in
        topLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(34)
            make.top.equalTo(titleLab.snp.bottom).offset(34)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
        }
        //: inviteCodeInputView.snp.makeConstraints { make in
        inviteCodeInputView.snp.makeConstraints { make in
            //: make.top.equalTo(topLab.snp.bottom).offset(30)
            make.top.equalTo(topLab.snp.bottom).offset(30)
            //: make.leading.equalTo(16)
            make.leading.equalTo(16)
            //: make.trailing.equalTo(-16)
            make.trailing.equalTo(-16)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: nextBtn.snp.makeConstraints { make in
        nextBtn.snp.makeConstraints { make in
            //: make.top.equalTo(inviteCodeInputView.snp.bottom).offset(336)
            make.top.equalTo(inviteCodeInputView.snp.bottom).offset(336)
            //: make.leading.equalTo(16)
            make.leading.equalTo(16)
            //: make.trailing.equalTo(-16)
            make.trailing.equalTo(-16)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: skiyBtn.snp.makeConstraints { make in
        skiyBtn.snp.makeConstraints { make in
            //: make.top.equalTo(nextBtn.snp.bottom).offset(8)
            make.top.equalTo(nextBtn.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
