
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataRushStr:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_live_nor" :*/
fileprivate let showInjuryRecordFormat:String = "btn_guide passage guidance i business"
fileprivate let constAnyoneCellMessage:String = "R"

/*: "Live" :*/
fileprivate let showFlagMessage:String = "category frame sweet deadlineLive"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EndLiveView.swift
//  SlideAzureController
//
//  Created by DouXiu on 2024/9/20.
//

//: import UIKit
import UIKit

//: class TalkingTabLiveView: UIView {
class EndLiveView: UIView {
    //: private var popView: TalkingPopView?
    private var popView: TransferPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        gestureSubviews()
        //: setupSubViewsConstraint()
        dailyPopular()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataRushStr.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.layer.cornerRadius = 24
        view.layer.cornerRadius = 24
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "btn_live_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(showInjuryRecordFormat.prefix(4)) + "live_no" + constAnyoneCellMessage.lowercased())), for: .normal)
        //: btn.addTarget(self, action: #selector(liveButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(access), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appTitleColor()
        lab.textColor = UIColor.dialog()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.pingfang(fontSize: 17)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Live".localized
        lab.text = (String(showFlagMessage.suffix(4))).localized
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTabLiveView {
extension EndLiveView {
    /// 展示视图
    //: func show() {
    func scrivened() {
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData)
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = TransferPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.streetSmart(view: self)
        //: popView?.showInView(view: DepictionThen.getWindow())
        popView?.withoutView(view: DepictionThen.fossilization())
    }

    /// 隐藏视图
    //: func dismiss() {
    func anyOrigin() {
        //: popView?.dismissView()
        popView?.locationCan()
        //: popView = nil
        popView = nil
    }

    /// 直播按钮事件
    //: @objc private func liveButtonAction() {
    @objc private func access() {
        //: dismiss()
        anyOrigin()
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: showLimitPath, object: nil)
    }
}

// MARK: - Layout

//: extension TalkingTabLiveView {
extension EndLiveView {
    /// 添加视图
    //: private func setupSubviews() {
    private func gestureSubviews() {
        //: addSubview(backView)
        addSubview(backView)
        //: backView.addSubview(liveBtn)
        backView.addSubview(liveBtn)
        //: backView.addSubview(liveLab)
        backView.addSubview(liveLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func dailyPopular() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(163 + kDeviceSafeBottomHeight)
            make.height.equalTo(163 + appInviteValue)
        }

        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 32))
            make.top.equalTo(actualWidth(w: 32))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(liveBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalTo(liveBtn)
            make.centerX.equalTo(liveBtn)
            //: make.width.equalTo(ScreenWidth/2)
            make.width.equalTo(main_logStr / 2)
        }
    }
}
