
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataBanName:[UInt8] = [0xdd,0xe2,0xdd,0xe8,0x9c,0xd7,0xe3,0xd8,0xd9,0xe6,0xae,0x9d,0x94,0xdc,0xd5,0xe7,0x94,0xe2,0xe3,0xe8,0x94,0xd6,0xd9,0xd9,0xe2,0x94,0xdd,0xe1,0xe4,0xe0,0xd9,0xe1,0xd9,0xe2,0xe8,0xd9,0xd8]

fileprivate func merelyCoordinator(photo num: UInt8) -> UInt8 {
    let value = Int(num) - 116
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_live_more_beauty_nor" :*/
fileprivate let main_remindStr:String = "shall available hi something hisbtn_l"
fileprivate let const_clearlyPath:String = "purere"
fileprivate let kObserverUrl:String = "beard askuty_nor"

/*: "Beautify" :*/
fileprivate let showSourceData:[Character] = ["B","e","a","u","t","i","f","y"]

/*: "btn_live_more_switch_nor" :*/
fileprivate let mainScopeText:[Character] = ["b","t","n","_","l","i","v","e","_","m","o","r","e","_","s","w","i","t","c","h","_"]
fileprivate let mainCharmStr:String = "NOR"

/*: "Switch" :*/
fileprivate let noti_cloudName:String = "Switchnail object sibling coat"

/*: "btn_live_more_stop_nor" :*/
fileprivate let data_pastMsg:[Character] = ["b","t","n","_","l","i","v","e","_","m","o","r","e","_","s","t","o","p","_","n","o","r"]

/*: "Stop Live" :*/
fileprivate let main_forceKey:[Character] = ["S","t","o","p"]
fileprivate let const_shirtStr:String = "check hang deep hang Live"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UndersizedThen.swift
//  AbroadTalking
//
//  Created by young on 2023/7/11.
//

//: import UIKit
import UIKit

//: class TalkingLiveRoomMoreView: UIView {
class UndersizedThen: UIView {
    //: private let contentV_H = (104+kDeviceSafeBottomHeight)
    private let contentV_H = (104 + appInviteValue)
    //: private let beautifySettingView_H = (258+kDeviceSafeBottomHeight+50)
    private let beautifySettingView_H = (258 + appInviteValue + 50)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        outsideSystem()
        //: setupSubViewsConstraint()
        harvest()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataBanName.map{merelyCoordinator(photo: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var dismissBtn: UIButton = {
    private lazy var dismissBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(bgDismissButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(messageFresh), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: return v
        return v
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 0
        v.spacing = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var beautifyBtn: TalkingButton = {
    private lazy var beautifyBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = RangeReactiveCompatible()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_more_beauty_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(main_remindStr.suffix(5)) + "ive_" + const_clearlyPath.replacingOccurrences(of: "pure", with: "mo") + "_bea" + String(kObserverUrl.suffix(7)))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .bigGallery(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.ownLight(), for: .normal)
        //: btn.setTitle("Beautify".localized, for: .normal)
        btn.setTitle((String(showSourceData)).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(beautifyButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(still), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var switchBtn: TalkingButton = {
    private lazy var switchBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = RangeReactiveCompatible()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_more_switch_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(mainScopeText) + mainCharmStr.lowercased())), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .bigGallery(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.ownLight(), for: .normal)
        //: btn.setTitle("Switch".localized, for: .normal)
        btn.setTitle((String(noti_cloudName.prefix(6))).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(switchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(beforeAdjustTable), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stopBtn: TalkingButton = {
    private lazy var stopBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton()
        let btn = RangeReactiveCompatible()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_more_stop_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(data_pastMsg))), for: .normal)
        //: btn.titleLabel?.font = .pingfangFont(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .bigGallery(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.ownLight(), for: .normal)
        //: btn.setTitle("Stop Live".localized, for: .normal)
        btn.setTitle((String(main_forceKey) + String(const_shirtStr.suffix(5))).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(stopLiveButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(banHead), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 美颜视图
    //: private lazy var beautifyView: STBeautyAdjustView = {
    private lazy var beautifyView: BeauteousnessSmallAdjustView = {
        //: let view = STBeautyAdjustView.init(frame: CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: beautifySettingView_H))
        let view = BeauteousnessSmallAdjustView(frame: CGRect(x: 0, y: main_nameData, width: main_logStr, height: beautifySettingView_H))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingLiveRoomMoreView {
extension UndersizedThen {
    /// 停止直播
    //: private func req_stopLive() {
    private func deciding() {
        //: TalkingLiveManager.req_liveStop(type: 1) { succeed, result, errorModel in
        ManagerPushListener.tabCollection(type: 1) { succeed, _, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            // 关播成功
            //: TalkingLiveManager.shared().live_releaseAllResource()
            ManagerPushListener.nowPanel().translation()
        }
    }
}

// MARK: - Event

//: extension TalkingLiveRoomMoreView {
extension UndersizedThen {
    /// 消除视图按钮
    //: @objc private func bgDismissButtonClick() {
    @objc private func messageFresh() {
        //: dismiss()
        entrancing()
    }

    /// 美颜按钮
    //: @objc private func beautifyButtonClick() {
    @objc private func still() {
        //: self.contentView.isHidden = true
        self.contentView.isHidden = true
        //: self.beautifyView.isHidden = false
        self.beautifyView.isHidden = false
        //: self.beautifyView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: beautifySettingView_H)
        self.beautifyView.frame = CGRect(x: 0, y: main_nameData, width: main_logStr, height: beautifySettingView_H)
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.beautifyView.frame.origin.y -= self.beautifyView.height
            self.beautifyView.frame.origin.y -= self.beautifyView.height
        }
    }

    /// 切换摄像头按钮
    //: @objc private func switchButtonClick() {
    @objc private func beforeAdjustTable() {
        //: dismiss()
        entrancing()
        //: self.contentView.isHidden = true
        self.contentView.isHidden = true
        //: TalkingLiveManager.shared().switchTRTCCamer(front: switchBtn.isSelected)
        ManagerPushListener.nowPanel().whenAdvertising(front: switchBtn.isSelected)
        //: switchBtn.isSelected = !switchBtn.isSelected
        switchBtn.isSelected = !switchBtn.isSelected
    }

    /// 停止直播按钮
    //: @objc private func stopLiveButtonClick() {
    @objc private func banHead() {
        //: dismiss()
        entrancing()
        //: req_stopLive()
        deciding()
    }
}

// MARK: - 展示/隐藏视图

//: extension TalkingLiveRoomMoreView {
extension UndersizedThen {
    /// 展示视图
    //: func showView() {
    func theNose() {
        //: currentViewController()?.view.addSubview(self)
        exitSchedule()?.view.addSubview(self)
        //: self.contentView.isHidden = false
        self.contentView.isHidden = false
        //: self.contentView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: contentV_H)
        self.contentView.frame = CGRect(x: 0, y: main_nameData, width: main_logStr, height: contentV_H)
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y -= self.contentView.height
            self.contentView.frame.origin.y -= self.contentView.height
        }
    }

    /// 隐藏视图
    //: func dismiss() {
    func entrancing() {
        //: if self.beautifyView.isHidden == false {
        if self.beautifyView.isHidden == false {
            // 保存美颜设置
            //: ProviderCacheCost.share.store()
            ProviderCacheCost.share.tarBuild()

            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.beautifyView.frame.origin.y += self.beautifyView.height
                self.beautifyView.frame.origin.y += self.beautifyView.height
                //: } completion: { finish in
            } completion: { _ in
                //: self.beautifyView.isHidden = true
                self.beautifyView.isHidden = true
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }

            //: } else {
        } else {
            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.contentView.frame.origin.y += self.contentView.height
                self.contentView.frame.origin.y += self.contentView.height
                //: } completion: { finish in
            } completion: { _ in
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomMoreView {
extension UndersizedThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func outsideSystem() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(dismissBtn)
        addSubview(dismissBtn)
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(beautifyBtn)
        stackView.addArrangedSubview(beautifyBtn)
        //: stackView.addArrangedSubview(switchBtn)
        stackView.addArrangedSubview(switchBtn)
        //: stackView.addArrangedSubview(stopBtn)
        stackView.addArrangedSubview(stopBtn)
        //: addSubview(beautifyView)
        addSubview(beautifyView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func harvest() {
        //: dismissBtn.snp.makeConstraints { make in
        dismissBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
        }
        //: let width = ScreenWidth/4
        let width = main_logStr / 4
        //: beautifyBtn.snp.makeConstraints { make in
        beautifyBtn.snp.makeConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
            //: make.height.equalTo(contentV_H-kDeviceSafeBottomHeight)
            make.height.equalTo(contentV_H - appInviteValue)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(beautifyBtn)
            make.width.height.equalTo(beautifyBtn)
        }
        //: stopBtn.snp.makeConstraints { make in
        stopBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(beautifyBtn)
            make.width.height.equalTo(beautifyBtn)
        }
    }
}
