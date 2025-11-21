
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let appCalendarId:[Character] = ["b","g","_","s","h","o","u","y","e","_","m","i","s","a","n","g","u","a","n","g","_","d","e","f"]
fileprivate let constFirmMatterData:[Character] = ["a","u","l","t"]

/*: "Popular" :*/
fileprivate let mainSeekMsg:String = "transit tool lite wavePopula"
fileprivate let noti_securityContent:String = "script"

/*: "777777" :*/
fileprivate let main_agentResignPath:String = "777777"

/*: "icon_moment_news_nor" :*/
fileprivate let userHundredExistValue:[Character] = ["i","c","o","n","_","m","o","m","e","n","t","_","n","e","w","s","_","n","o","r"]

/*: "icon_free_pre" :*/
fileprivate let app_serverKey:[Character] = ["i","c","o","n","_","f","r","e","e","_","p"]
fileprivate let notiDialogMessage:String = "rbetween"

/*: "num" :*/
fileprivate let appShouldMessage:String = "nupending"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegularityViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentViewController: TalkingBaseViewController {
class RegularityViewController: WeddingLovelyRecognizerDelegate {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        roundness()
        //: setupSubViewsConstraint()
        justThe()
        //: NotificationCenter.default.addObserver(self, selector: #selector(freeNotif), name: FREEBTN_UPLOAD_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(moment), name: mainEnvironmentMessage, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: load_remindNum()
        surchargeListener()
    }

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.BundleImageNamed(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.locationName(name: (String(appCalendarId) + String(constFirmMatterData))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: ImpressionNavigationViewController = {
        //: let vc = QYSlideNavigationViewController()
        let vc = ImpressionNavigationViewController()
        //: vc.topDistance = NavigationBarHeight
        vc.topDistance = userCellCurrencyPath
        //: vc.controllerItems = [TalkingPopularMomentVC()]
        vc.controllerItems = [ContentUpDataSource()]
        //: vc.titleItems = ["Popular".localized]
        vc.titleItems = [(String(mainSeekMsg.suffix(6)) + noti_securityContent.replacingOccurrences(of: "script", with: "r")).localized]
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .pingfangFont(type: .Medium, fontSize: 16)
        vc.titleFont = .bigGallery(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .pingfangFont(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .bigGallery(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (main_agentResignPath.capitalized))!
        //: vc.selectedColor = UIColor.appTitleColor()
        vc.selectedColor = UIColor.dialog()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var newsBtn: UIButton = {
    private lazy var newsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_moment_news_nor"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(userHundredExistValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(newsBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(story), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var newsBadgeLab: BadgeLab = {
    private lazy var newsBadgeLab: TapBadgeLab = {
        //: let label = BadgeLab()
        let label = TapBadgeLab()
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var freeBtn: UIButton = {
    private lazy var freeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "icon_free_pre"), for: .normal)
        btn.setBackgroundImage(UIImage.locationName(name: (String(app_serverKey) + notiDialogMessage.replacingOccurrences(of: "between", with: "e"))), for: .normal)
        //: btn.addTarget(self, action: #selector(freeBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(regimen), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentViewController {
extension RegularityViewController {
    /// 获取用户当前未读动态数量
    //: private func load_remindNum() {
    private func surchargeListener() {
        //: TalkingMomentRequestTool.req_getRemindNum { succeed, result, errorModel in
        BlendThen.go { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [])
            let json = JSON(result ?? [])
            //: self.refreshNewsbadge(num: json["num"].intValue)
            self.attribute(num: json[(appShouldMessage.replacingOccurrences(of: "pending", with: "m"))].intValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMomentViewController {
extension RegularityViewController {
    /// 跳转到动态通知列表
    //: @objc private func newsBtnClickEvent() {
    @objc private func story() {
        //: refreshNewsbadge(num: 0)
        attribute(num: 0)
        //: let vc = TalkingMomentNewsFeedViewController()
        let vc = OfViewController()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /// 发布通知
    //: @objc func freeNotif() {
    @objc func moment() {
        //: freeBtnClickEvent()
        regimen()
    }

    /// 发布
    //: @objc func freeBtnClickEvent() {
    @objc func regimen() {
        //: if DismissReactiveCompatible.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue, DismissReactiveCompatible.share.loginUserMode.sex == Gender.female.rawValue, DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue {
        if DismissReactiveCompatible.share.loginUserMode.isTPAuth != MovementBasicType.isSuccessed.rawValue, DismissReactiveCompatible.share.loginUserMode.sex == FenceSequence.female.rawValue, DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue {
            //: AppManagerRequest.func__requestUserInfo { _, _, _ in
            RevenueMovementManagerRequest.account { _, _, _ in
                //: if !DismissReactiveCompatible.share.loginUserMode.isNaUser,
                if !DismissReactiveCompatible.share.loginUserMode.isNaUser,
                   //: DismissReactiveCompatible.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue
                   DismissReactiveCompatible.share.loginUserMode.isTPAuth != MovementBasicType.isSuccessed.rawValue
                {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    OutletWindowManager.shared.totaleraction()
                    //: return
                    return
                        //: } else {
                } else {
                    //: self.pushFreeVC()
                    self.kingdom()
                }
            }
            //: } else {
        } else {
            //: pushFreeVC()
            kingdom()
        }
    }

    //: private func pushFreeVC() {
    private func kingdom() {
        //: let isShow = Defaults.bool(forKey: TalkingFreeTipsViewIsShow)
        let isShow = data_partyText.bool(forKey: constSinceKey)
        //: let freeVC = TalkingFreeViewController()
        let freeVC = EndLooseViewController()
        //: freeVC.delegate = slideVC.controllerItems.first as? any TalkingFreeViewControllerDelegate
        freeVC.delegate = slideVC.controllerItems.first as? any DoingceObjectProtocol
        //: guard isShow == false else {
        guard isShow == false else { // 已展示过
            //: navigationController?.pushViewController(freeVC, animated: true)
            navigationController?.pushViewController(freeVC, animated: true)
            //: return
            return
        }
        //: TalkingFreeTipsView().showView {
        FinerReactiveCompatible().takeHome {
            //: self.navigationController?.pushViewController(freeVC, animated: true)
            self.navigationController?.pushViewController(freeVC, animated: true)
        }
    }
}

// MARK: - WeddingNavigationDelegate

//: extension TalkingMomentViewController: QYSlideNavigationDelegate {
extension RegularityViewController: WeddingNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {}
    func remind(_: UIViewController, index _: Int) {}
}

// MARK: - Layout

//: extension TalkingMomentViewController {
extension RegularityViewController {
    /// 刷新动态通知角标
    //: func refreshNewsbadge(num: Int) {
    func attribute(num: Int) {
        //: newsBadgeLab.isHidden = num > 0 ? false:true
        newsBadgeLab.isHidden = num > 0 ? false : true
        //: newsBadgeLab.text = num > 99 ? "99+":String(num)
        newsBadgeLab.text = num > 99 ? "99+" : String(num)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func roundness() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        // 导航底部渐变背景
        //: view.addSubview(bottomImgView)
        view.addSubview(bottomImgView)
        //: addChild(slideVC)
        addChild(slideVC)
        //: view.addSubview(slideVC.view)
        view.addSubview(slideVC.view)
        //: view.addSubview(newsBtn)
        view.addSubview(newsBtn)
        //: view.addSubview(newsBadgeLab)
        view.addSubview(newsBadgeLab)
        //: view.addSubview(freeBtn)
        view.addSubview(freeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func justThe() {
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + dataPointTitle)
        }
        //: newsBtn.snp.makeConstraints { make in
        newsBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(dataPointTitle)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: newsBadgeLab.snp.makeConstraints { make in
        newsBadgeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            //: make.top.equalTo(newsBtn).offset(2)
            make.top.equalTo(newsBtn).offset(2)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.greaterThanOrEqualTo(16)
            make.width.greaterThanOrEqualTo(16)
        }
        //: freeBtn.snp.makeConstraints { make in
        freeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.bottom.equalTo(-115)
            make.bottom.equalTo(-115)
            //: make.size.equalTo(CGSize(width: 55, height: 55))
            make.size.equalTo(CGSize(width: 55, height: 55))
        }
    }
}
