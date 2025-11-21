
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_orbitPath:[UInt8] = [0x7b,0x80,0x7b,0x86,0x3a,0x75,0x81,0x76,0x77,0x84,0x4c,0x3b,0x32,0x7a,0x73,0x85,0x32,0x80,0x81,0x86,0x32,0x74,0x77,0x77,0x80,0x32,0x7b,0x7f,0x82,0x7e,0x77,0x7f,0x77,0x80,0x86,0x77,0x76]

fileprivate func whiteOutSuccessfully(administrative num: UInt8) -> UInt8 {
    let value = Int(num) - 18
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "All" :*/
fileprivate let userAllowPath:String = "Allref carrier confirm rem"

/*: "Intimate" :*/
fileprivate let kClearlyName:[Character] = ["I","n","t","i","m"]
fileprivate let userSeedPlantText:[Character] = ["a","t","e"]

/*: "#777777" :*/
fileprivate let showCoordinatorValue:String = "#motionmotionmotionmotion"
fileprivate let userYourStr:String = "authority"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SolarView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/2.
//

//: import UIKit
import UIKit

//: @objc enum ChatListTopItemType: Int {
@objc enum SampleTopValueConvertible: Int {
    //: case All = 0
    case All = 0
    //: case intimate
    case intimate
}

//: @objc protocol TalkingChatListTopItemViewDelegate: NSObjectProtocol {
@objc protocol MotivationViewDelegate: NSObjectProtocol {
    ///
    //: @objc func changeTopItem(type: ChatListTopItemType)
    @objc func topSortComponentPartVariationFail(type: SampleTopValueConvertible)
}

//: class TalkingChatListTopItemView: UIView {
class SolarView: UIView {
    //: var selectButton = UIButton()
    var selectButton = UIButton()
    //: var resetButton = UIButton()
    var resetButton = UIButton()
    //: weak var delegate: TalkingChatListTopItemViewDelegate?
    weak var delegate: MotivationViewDelegate?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_orbitPath.map{whiteOutSuccessfully(administrative: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        stepSubviews()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var sliderView: UIView = {
    private lazy var sliderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.frame = CGRect(x: 0, y: 37, width: 12, height: 4)
        view.frame = CGRect(x: 0, y: 37, width: 12, height: 4)
        //: view.backgroundColor = .black
        view.backgroundColor = .black
        //: view.layer.cornerRadius = 2
        view.layer.cornerRadius = 2
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatListTopItemView {
extension SolarView {
    //: func resetToSeleteAll() {
    func resetLeave() {
        //: buttonItemChange(sender: resetButton)
        physicalBodySender(sender: resetButton)
    }

    //: @objc private func buttonItemChange(sender: UIButton) {
    @objc private func physicalBodySender(sender: UIButton) {
        //: if sender.isSelected {
        if sender.isSelected {
            //: return
            return
        }
        //: selectButton.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        selectButton.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: selectButton.isSelected = false
        selectButton.isSelected = false
        //: sender.isSelected = true
        sender.isSelected = true
        //: sender.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        sender.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 15)
        //: selectButton = sender
        selectButton = sender
        //: updateSliderViewFrame(btn: sender)
        crushBtn(btn: sender)
        //: delegate?.changeTopItem(type: ChatListTopItemType(rawValue: sender.tag)!)
        delegate?.topSortComponentPartVariationFail(type: SampleTopValueConvertible(rawValue: sender.tag)!)
    }
}

// MARK: - Layout

//: extension TalkingChatListTopItemView {
extension SolarView {
    /// 创建视图
    //: private func setupSubviews() {
    private func stepSubviews() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: let items = ["All".localized, "Intimate".localized]
        let items = [(String(userAllowPath.prefix(3))).localized, (String(kClearlyName) + String(userSeedPlantText)).localized]
        //: var tag = ChatListTopItemType.All.rawValue
        var tag = SampleTopValueConvertible.All.rawValue
        //: let buttonW = 70.0
        let buttonW = 70.0
        //: var buttonX: CGFloat = LanguageManager.shared.direction == .leftToRight ? -5:20
        var buttonX: CGFloat = RatingReactiveCompatible.shared.direction == .leftToRight ? -5 : 20
        //: for (i, item) in items.enumerated() {
        for (i, item) in items.enumerated() {
            //: let itemButton = creatButton(item: item, type: tag)
            let itemButton = fastenerDevice(item: item, type: tag)
            //: addSubview(itemButton)
            addSubview(itemButton)
            //: let x = LanguageManager.shared.direction == .leftToRight ? buttonX:(DepictionThen.getScreenWidth()-buttonX-buttonW)
            let x = RatingReactiveCompatible.shared.direction == .leftToRight ? buttonX : (DepictionThen.manualChin() - buttonX - buttonW)
            //: itemButton.frame = CGRect(x: x, y: 10, width: buttonW, height: 24)
            itemButton.frame = CGRect(x: x, y: 10, width: buttonW, height: 24)
            //: buttonX = buttonW + buttonX
            buttonX = buttonW + buttonX
            //: tag += 1
            tag += 1
            //: if i == 0 {
            if i == 0 {
                //: resetButton = itemButton
                resetButton = itemButton
                //: buttonItemChange(sender: itemButton)
                physicalBodySender(sender: itemButton)
            }
        }
        //: addSubview(sliderView)
        addSubview(sliderView)
        //: updateSliderViewFrame(btn: resetButton)
        crushBtn(btn: resetButton)
    }

    //: private func creatButton(item: String, type: Int) -> UIButton {
    private func fastenerDevice(item: String, type: Int) -> UIButton {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle(item, for: .normal)
        btn.setTitle(item, for: .normal)
        //: btn.setTitleColor(UIColor(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: (showCoordinatorValue.replacingOccurrences(of: "motion", with: "7") + userYourStr.replacingOccurrences(of: "authority", with: "77"))), for: .normal)
        //: btn.setTitleColor(UIColor.appTitleColor(), for: .selected)
        btn.setTitleColor(UIColor.dialog(), for: .selected)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: btn.tag = type
        btn.tag = type
        //: btn.addTarget(self, action: #selector(buttonItemChange(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(physicalBodySender(sender:)), for: .touchUpInside)
        //: return btn
        return btn
    }

    //: private func updateSliderViewFrame(btn: UIButton) {
    private func crushBtn(btn: UIButton) {
        //: if sliderView.superview != nil {
        if sliderView.superview != nil {
            //: let transFormX = btn.frame.origin.x + (btn.frame.width-sliderView.frame.width) / 2
            let transFormX = btn.frame.origin.x + (btn.frame.width - sliderView.frame.width) / 2
            //: UIView.animate(withDuration: 0.25) {
            UIView.animate(withDuration: 0.25) {
                //: self.sliderView.transform = CGAffineTransformMakeTranslation(CGFloat(transFormX), 0)
                self.sliderView.transform = CGAffineTransformMakeTranslation(CGFloat(transFormX), 0)
            }
        }
    }
}
