
//: Declare String Begin

/*: "position.x" :*/
fileprivate let constLicenseUrl:[Character] = ["p","o","s","i","t","i","o"]
fileprivate let notiSortName:[Character] = ["n",".","x"]

/*: "slideIn" :*/
fileprivate let data_joinName:[Character] = ["s","l","i","d","e","I","n"]

/*: "slideOut" :*/
fileprivate let constAdditionWealthyPath:String = "slideOutwoman don premium social"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  YaThen.swift
//  SlideAzureController
//
//  Created by DouXiu on 2024/11/25.
//

//: import UIKit
import UIKit

//: class GiftFloatViewManager: NSObject {
class YaThen: NSObject {
    //: static let shared = GiftFloatViewManager()
    static let shared = YaThen()
    //: private var giftArr = [SocialBroadcastModel]()
    private var giftArr = [SocialTransformable]()
    //: private var isShow = false
    private var isShow = false // 是否正在展示
    //: private var needStop = false
    private var needStop = false // 是否需要停止

    // MARK: - Lazy Load

    //: private lazy var giftView: GiftFloatView = {
    private lazy var giftView: WithholdReactiveCompatible = {
        //: let v = GiftFloatView()
        let v = WithholdReactiveCompatible()
        //: DepictionThen.getWindow().addSubview(v)
        DepictionThen.fossilization().addSubview(v)
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension GiftFloatViewManager {
extension YaThen {
    /// 添加礼物
    //: private func addGift(gift: SocialBroadcastModel) {
    private func spread(gift: SocialTransformable) {
        //: self.synchronized(self) {
        self.judgeSynchronized(self) {
            //: self.giftArr.append(gift)
            self.giftArr.append(gift)
            //: self.showNextGift(index: 0)
            self.marginOfSafety(index: 0)
        }
    }

    //: public func synchronized<T>(_ lock: AnyObject, _ body: () throws -> T) rethrows -> T {
    public func judgeSynchronized<T>(_ lock: AnyObject, _ body: () throws -> T) rethrows -> T {
        //: objc_sync_enter(lock)
        objc_sync_enter(lock)
        //: defer { objc_sync_exit(lock) }
        defer { objc_sync_exit(lock) }
        //: return try body()
        return try body()
    }

    /// 展示礼物
    //: private func showNextGift(index: Int) {
    private func marginOfSafety(index: Int) {
        //: if index >= self.giftArr.count { return }
        if index >= self.giftArr.count { return }
        // 在home_tab展示
        //: guard let vc = currentViewController(), vc is TalkingSocialViewController else { return }
        guard let vc = exitSchedule(), vc is LimbReactiveCompatible else { return }
        //: if self.isShow || self.needStop { return }
        if self.isShow || self.needStop { return }

        //: self.startAnimation(self.giftArr[index])
        self.recommence(self.giftArr[index])
    }

    /// 开始动效
    //: private func startAnimation(_ model: SocialBroadcastModel) {
    private func recommence(_ model: SocialTransformable) {
        //: self.isShow = true
        self.isShow = true
        //: self.giftView.refreshGift(model)
        self.giftView.explainGift(model)
        // 1. 计算视图的中心位置
        //: let viewWidth = self.giftView.frame.width
        let viewWidth = self.giftView.frame.width
        //: let centerX = viewWidth / 2
        let centerX = viewWidth / 2

        // 2. 根据语言方向设置起始和结束位置
        //: let isRTL = LanguageManager.shared.direction == .rightToLeft
        let isRTL = RatingReactiveCompatible.shared.direction == .rightToLeft
        // 起始位置：屏幕外
        //: let startCenterX = isRTL ? -centerX : ScreenWidth + centerX
        let startCenterX = isRTL ? -centerX : main_logStr + centerX
        // 目标位置：屏幕中间
        //: let targetCenterX = ScreenWidth / 2
        let targetCenterX = main_logStr / 2
        // 结束位置：屏幕另一侧
        //: let endCenterX = isRTL ? ScreenWidth + centerX : -centerX
        let endCenterX = isRTL ? main_logStr + centerX : -centerX

        // 3. 设置初始位置
        //: self.giftView.center.x = startCenterX
        self.giftView.center.x = startCenterX

        // 4. 进入动画
        //: let slideIn = CABasicAnimation(keyPath: "position.x")
        let slideIn = CABasicAnimation(keyPath: (String(constLicenseUrl) + String(notiSortName)))
        //: slideIn.fromValue = startCenterX
        slideIn.fromValue = startCenterX
        //: slideIn.toValue = targetCenterX
        slideIn.toValue = targetCenterX
        //: slideIn.duration = 0.5
        slideIn.duration = 0.5
        //: slideIn.timingFunction = CAMediaTimingFunction(name: .easeOut)
        slideIn.timingFunction = CAMediaTimingFunction(name: .easeOut)
        //: slideIn.fillMode = .forwards
        slideIn.fillMode = .forwards
        //: slideIn.isRemovedOnCompletion = false
        slideIn.isRemovedOnCompletion = false

        //: self.giftView.layer.add(slideIn, forKey: "slideIn")
        self.giftView.layer.add(slideIn, forKey: (String(data_joinName)))
        //: self.giftView.center.x = targetCenterX
        self.giftView.center.x = targetCenterX

        // 5. 延迟退出
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [weak self] in
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }

            // 6. 退出动画
            //: let slideOut = CABasicAnimation(keyPath: "position.x")
            let slideOut = CABasicAnimation(keyPath: (String(constLicenseUrl) + String(notiSortName)))
            //: slideOut.fromValue = targetCenterX
            slideOut.fromValue = targetCenterX
            //: slideOut.toValue = endCenterX
            slideOut.toValue = endCenterX
            //: slideOut.duration = 0.5
            slideOut.duration = 0.5
            //: slideOut.timingFunction = CAMediaTimingFunction(name: .easeIn)
            slideOut.timingFunction = CAMediaTimingFunction(name: .easeIn)
            //: slideOut.fillMode = .forwards
            slideOut.fillMode = .forwards
            //: slideOut.isRemovedOnCompletion = false
            slideOut.isRemovedOnCompletion = false

            //: self.giftView.layer.add(slideOut, forKey: "slideOut")
            self.giftView.layer.add(slideOut, forKey: (String(constAdditionWealthyPath.prefix(8))))
            //: self.giftView.center.x = endCenterX
            self.giftView.center.x = endCenterX

            // 7. 动画完成后清理
            //: DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShow = false
                self.isShow = false
                //: if self.giftArr.count > 0 {
                if self.giftArr.count > 0 {
                    //: self.giftArr.remove(at: 0)
                    self.giftArr.remove(at: 0)
                }
                //: self.showNextGift(index: 0)
                self.marginOfSafety(index: 0)
            }
        }
    }

    /// 停止动效
    //: func stopWhenDismiss() {
    func perIgnore() {
        //: self.needStop = true
        self.needStop = true
    }

    /// 展示动效
    //: func activeWhenShow() {
    func afloat() {
        //: self.needStop = false
        self.needStop = false
        //: self.showNextGift(index: 0)
        self.marginOfSafety(index: 0)
    }
}

// MARK: - Notifications

//: extension GiftFloatViewManager {
extension YaThen {
    /// 添加通知
    //: func addNotifications() {
    func addLive() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.recievedNewGift(noti:)),
                                               selector: #selector(self.towardStill(noti:)),
                                               //: name: USER_RECIEVED_GIFT_NOTIFICATION,
                                               name: userThirdFormat,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.enterBackground),
                                               selector: #selector(self.afterOp),
                                               //: name: UIApplication.didEnterBackgroundNotification,
                                               name: UIApplication.didEnterBackgroundNotification,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.enterForeground),
                                               selector: #selector(self.indexCap),
                                               //: name: UIApplication.willEnterForegroundNotification,
                                               name: UIApplication.willEnterForegroundNotification,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.loginout),
                                               selector: #selector(self.oldLoginout),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kOnValue,
                                               //: object: nil)
                                               object: nil)
    }

    /// 收到礼物通知
    //: @objc private func recievedNewGift(noti: Notification) {
    @objc private func towardStill(noti: Notification) {
        //: guard let data = noti.object,
        guard let data = noti.object,
              //: let gift = JSONDeserializer<SocialBroadcastModel>.deserializeFrom(dict: data as? [String: Any], designatedPath: nil),
              let gift = JSONDeserializer<SocialTransformable>.deserializeFrom(dict: data as? [String: Any], designatedPath: nil),
              //: gift.broadType != BroadcastType.Unknow.rawValue
              gift.broadType != ProgBroadcastTransformable.Unknow.rawValue
        //: else {
        else {
            //: return
            return
        }
        //: let currUserType = DismissReactiveCompatible.share.appUserConfigMode.userType
        let currUserType = DismissReactiveCompatible.share.appUserConfigMode.userType
        // 过滤接口异常
        //: if currUserType < 0 { return }
        if currUserType < 0 { return }
        // 特殊用户 不展示 S/A级用户礼物
        //: if currUserType == 0, gift.userType == 1 || gift.userType == 2 {
        if currUserType == 0, gift.userType == 1 || gift.userType == 2 {
            //: return
            return
        }
        // S/A级用户 不展示 特殊用户礼物
        //: if currUserType == 1 || currUserType == 2, gift.userType == 0 {
        if currUserType == 1 || currUserType == 2, gift.userType == 0 {
            //: return
            return
        }
        // 非特殊用户 不展示 不同地区用户礼物
        //: if currUserType != 0, gift.userCountryType != DismissReactiveCompatible.share.appUserConfigMode.userCountryType {
        if currUserType != 0, gift.userCountryType != DismissReactiveCompatible.share.appUserConfigMode.userCountryType {
            //: return
            return
        }

        //: self.addGift(gift: gift)
        self.spread(gift: gift)
    }

    /// 应用退到后台
    //: @objc private func enterBackground() {
    @objc private func afterOp() {
        //: self.stopWhenDismiss()
        self.perIgnore()
    }

    /// 应用进入前台
    //: @objc private func enterForeground() {
    @objc private func indexCap() {
        //: self.activeWhenShow()
        self.afloat()
    }

    /// 退出登录
    //: @objc private func loginout() {
    @objc private func oldLoginout() {
        //: self.giftArr.removeAll()
        self.giftArr.removeAll()
        //: self.stopWhenDismiss()
        self.perIgnore()
    }
}
