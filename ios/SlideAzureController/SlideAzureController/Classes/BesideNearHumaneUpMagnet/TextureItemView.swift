
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_needData:[UInt8] = [0x9c,0x9b,0x9c,0x81,0xdd,0x96,0x9a,0x91,0x90,0x87,0xcf,0xdc,0xd5,0x9d,0x94,0x86,0xd5,0x9b,0x9a,0x81,0xd5,0x97,0x90,0x90,0x9b,0xd5,0x9c,0x98,0x85,0x99,0x90,0x98,0x90,0x9b,0x81,0x90,0x91]

/*: "icon_cz_nor" :*/
fileprivate let dataVisualJusticeStr:String = "icon_finish loop disk slim compete"
fileprivate let show_attractiveUrl:[Character] = ["c","z","_","n","o","r"]

/*: "Face" :*/
fileprivate let constPullPath:[Character] = ["F","a","c","e"]

/*: "Eyes" :*/
fileprivate let noti_systemUrl:String = "Eyespitch warning except"

/*: "Nose" :*/
fileprivate let const_quitRootMsg:String = "Noseheat only constraint ting will"

/*: "Lip" :*/
fileprivate let mainRocketFormat:[Character] = ["L","i","p"]

/*: "Filter" :*/
fileprivate let kCourseData:String = "king our vertical overwhelm tradeFilter"

/*: "#C3BDB9" :*/
fileprivate let show_supplyFormat:[Character] = ["#","C","3","B","D","B","9"]

/*: "Restore to default Beautify Settings" :*/
fileprivate let kActionName:[UInt8] = [0x73,0x67,0x6e,0x69,0x74,0x74,0x65,0x53,0x20,0x79,0x66,0x69,0x74,0x75,0x61,0x65,0x42,0x20,0x74,0x6c,0x75,0x61,0x66,0x65,0x64,0x20,0x6f,0x74,0x20,0x65,0x72,0x6f,0x74,0x73,0x65,0x52]

/*: "Cancel" :*/
fileprivate let kBusyPath:String = "orientation after nutCancel"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextureItemView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: @objc public enum BeautyItemType: Int {
@objc public enum PsychicEnergySignedCount: Int {
    //: case Face = 100
    case Face = 100 /// 脸部
    //: case Eyes = 101
    case Eyes = 101 /// 眼部
    //: case Nose = 102
    case Nose = 102 /// 鼻部
    //: case Lip = 103
    case Lip = 103 /// 嘴部

    //: case Filter = 104
    case Filter = 104 /// 滤镜
}

//: @objc protocol STBeautyTopItemViewDelegate: NSObjectProtocol {
@objc protocol SumensityObjectProtocol: NSObjectProtocol {
    ///
    //: @objc func changeTopItem(senderTag: Int)
    @objc func designFor(senderTag: Int)
    //: @objc func ResetBeauty()
    @objc func wisecrack()
}

//: class STBeautyTopItemView: UIView {
class TextureItemView: UIView {
    //: var selectButton = UIButton.init()
    var selectButton = UIButton()

    //: var delegate: STBeautyTopItemViewDelegate?
    var delegate: SumensityObjectProtocol?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_needData.map{$0^245}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        thread()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var sliderView: UIView = {
    private lazy var sliderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var resetBtn: UIButton = {
    private lazy var resetBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_cz_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(dataVisualJusticeStr.prefix(5)) + String(show_attractiveUrl))), for: .normal)
        //: btn.addTarget(self, action: #selector(resetBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(theTask), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension STBeautyTopItemView {
extension TextureItemView {
    //: func setupSubviews() {
    func thread() {
        //: self.addSubview(sliderView)
        self.addSubview(sliderView)
        //: sliderView.bounds = CGRect(x: 0, y: 0, width: 10, height: 2)
        sliderView.bounds = CGRect(x: 0, y: 0, width: 10, height: 2)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: let items = ["Face", "Eyes", "Nose", "Lip", "Filter"]
        let items = [(String(constPullPath)), (String(noti_systemUrl.prefix(4))), (String(const_quitRootMsg.prefix(4))), (String(mainRocketFormat)), (String(kCourseData.suffix(6)))]
        //: var tag = BeautyItemType.Face.rawValue
        var tag = PsychicEnergySignedCount.Face.rawValue
        //: let buttonW = 56
        let buttonW = 56
        //: var buttonX = 6
        var buttonX = 6
        //: for (i, item) in items.enumerated() {
        for (i, item) in items.enumerated() {
            //: let itemButton = creatButton(item: item.localized, type: tag)
            let itemButton = librarySlideEdit(item: item.localized, type: tag)
            //: self.addSubview(itemButton)
            self.addSubview(itemButton)
            //: itemButton.snp.makeConstraints { make in
            itemButton.snp.makeConstraints { make in
                //: make.leading.equalTo(buttonX)
                make.leading.equalTo(buttonX)
                //: make.top.equalToSuperview()
                make.top.equalToSuperview()
                //: make.width.equalTo(buttonW)
                make.width.equalTo(buttonW)
                //: make.height.equalTo(50)
                make.height.equalTo(50)
            }
            //: itemButton.layoutIfNeeded()
            itemButton.layoutIfNeeded()
            //: buttonX = buttonW + buttonX
            buttonX = buttonW + buttonX
            //: tag += 1
            tag += 1
            //: if i == 0 {
            if i == 0 {
                //: buttonItemChange(sender: itemButton)
                incidental(sender: itemButton)
                //: let startX = LanguageManager.shared.direction == .rightToLeft ? (Int(ScreenWidth)-6-buttonW/2):6+buttonW/2
                let startX = RatingReactiveCompatible.shared.direction == .rightToLeft ? (Int(main_logStr) - 6 - buttonW / 2) : 6 + buttonW / 2
                //: sliderView.center = CGPoint(x: startX, y: 40)
                sliderView.center = CGPoint(x: startX, y: 40)
            }
        }

        //: self.addSubview(resetBtn)
        self.addSubview(resetBtn)
        //: resetBtn.snp.makeConstraints { make in
        resetBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(ScreenWidth-10-30)
            make.leading.equalTo(main_logStr - 10 - 30)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
    }

    //: func creatButton(item: String, type: Int) -> UIButton {
    func librarySlideEdit(item: String, type: Int) -> UIButton {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle(item, for: .normal)
        btn.setTitle(item, for: .normal)
        //: btn.setTitleColor(UIColor.init(hex: "#C3BDB9"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(show_supplyFormat))), for: .normal)
        //: btn.setTitleColor(UIColor.white, for: .selected)
        btn.setTitleColor(UIColor.white, for: .selected)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Regular, fontSize: 14)
        //: btn.tag = type
        btn.tag = type
        //: btn.addTarget(self, action: #selector(buttonItemChange(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(incidental(sender:)), for: .touchUpInside)
        //: return btn
        return btn
    }

    //: @objc func buttonItemChange(sender: UIButton) {
    @objc func incidental(sender: UIButton) {
        //: setButtonStatus(sender: sender)
        thinkSender(sender: sender)
        //: self.delegate?.changeTopItem(senderTag: sender.tag)
        self.delegate?.designFor(senderTag: sender.tag)
    }

    //: func setButtonStatus(sender: UIButton) {
    func thinkSender(sender: UIButton) {
        //: if sender.isSelected {
        if sender.isSelected {
            //: return
            return
        }
        //: self.selectButton.titleLabel?.font = UIFont.pingfangFont(type: .Semibold, fontSize: 14)
        self.selectButton.titleLabel?.font = UIFont.bigGallery(type: .Semibold, fontSize: 14)
        //: self.selectButton.isSelected = false
        self.selectButton.isSelected = false
        //: sender.isSelected = true
        sender.isSelected = true
        //: self.selectButton = sender
        self.selectButton = sender
        //: if (self.sliderView.superview != nil) {
        if self.sliderView.superview != nil {
            //: UIView.animate(withDuration: 0.25) {
            UIView.animate(withDuration: 0.25) {
                //: self.sliderView.center = CGPoint(x: sender.centerX, y: 40)
                self.sliderView.center = CGPoint(x: sender.centerX, y: 40)
            }
        }
    }

    //: @objc func resetBtnClick() {
    @objc func theTask() {
        //: let config = ShowAlertConfig()
        let config = PortraitAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: config.textFont = UIFont.pingfangFont(type: .Medium, fontSize: 18)
        config.textFont = UIFont.bigGallery(type: .Medium, fontSize: 18)
        //: TalkingAlertShow.customAlert(message: "Restore to default Beautify Settings".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        AllowanceReactiveCompatible.dateConfig(message: String(bytes: kActionName.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(kBusyPath.suffix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: let btn: UIButton =  self.viewWithTag(BeautyItemType.Face.rawValue) as! UIButton
            let btn: UIButton = self.viewWithTag(PsychicEnergySignedCount.Face.rawValue) as! UIButton
            //: self.buttonItemChange(sender: btn)
            self.incidental(sender: btn)
            //: self.delegate?.ResetBeauty()
            self.delegate?.wisecrack()
            //: }, config: config)
        }, config: config)
    }
}
