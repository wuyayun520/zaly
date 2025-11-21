
//: Declare String Begin

/*: "/dist/loungePlus/index.html" :*/
fileprivate let notiLabVehicleData:[Character] = ["/","d","i","s","t"]
fileprivate let notiSimultaneouslyStr:String = "/loungbarrier you observe migration"
fileprivate let showPriorityData:[Character] = ["e","P","l","u","s","/","i","n","d","e","x",".","h","t","m","l"]

/*: "PremiumStarPlanBanner" :*/
fileprivate let app_upKey:String = "Premestimated ice"
fileprivate let user_productGoingId:[Character] = ["t","a","r","P","l"]
fileprivate let kOrientationKey:[Character] = ["a","n","B","a","n","n","e","r"]

/*: "uid" :*/
fileprivate let user_lopeText:[Character] = ["u","i","d"]

/*: "mfChatGift" :*/
fileprivate let appWithKey:[Character] = ["m","f","C","h","a","t"]
fileprivate let app_borderUrl:String = "entry heart sit middle thirdGift"

/*: "mfChat" :*/
fileprivate let show_basicValue:String = "thread err tun seek intromfChat"

/*: "user" :*/
fileprivate let appEasternUrl:[Character] = ["u","s","e","r"]

/*: "Please verification first" :*/
fileprivate let appPlatLimitValue:String = "protocol ex wind context findPlea"
fileprivate let appCropListenId:String = "fpremiumati"
fileprivate let app_wedValue:String = "irsscan"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PrimaryRedModelType.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: struct SocialAdBannerModel: HandyJSON {
struct PrimaryRedModelType: HandyJSON {
    // 广告图
    //: var pic: String = ""
    var pic: String = ""
    // 跳转链接
    //: var url: String = ""
    var url: String = ""
    // 跳转类型 0=无，1=跳转网页，2=跳转原生页面，3=游戏跳转，4=外部网页
    //: var type = 0
    var type = 0
    // 游戏宽高
    //: var widthHeight: Double?
    var widthHeight: Double?
    // 广告小图
    //: var thumbnail: String = ""
    var thumbnail: String = ""
}

// MARK: - Event

//: extension SocialAdBannerModel {
extension PrimaryRedModelType {
    /// 跳转事件
    //: static func jumpEvent(model: SocialAdBannerModel) {
    static func dragSimultaneously(model: PrimaryRedModelType) {
        //: if model.type == 1 {
        if model.type == 1 { // 网页跳转
            //: let newUrl: String = model.url
            let newUrl: String = model.url
            //: if newUrl.contains("/dist/loungePlus/index.html") {
            if newUrl.contains((String(notiLabVehicleData) + String(notiSimultaneouslyStr.prefix(6)) + String(showPriorityData))) {
                //: PushThen.share.func__pushToSubscribePageWebVC()
                PushThen.share.forceBack()
                //: return
                return
            }
            //: PushThen.share.func__pushToWebVC(urlStr: model.url)
            PushThen.share.plumeBright(urlStr: model.url)

            //: } else if model.type == 2 {
        } else if model.type == 2 { // 原生跳转
            //: guard let url = URL(string: model.url),
            guard let url = URL(string: model.url),
                  //: let components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            else {
                //: return
                return
            }
            //: if model.url.contains("PremiumStarPlanBanner") { // 巨星计划
            if model.url.contains((String(app_upKey.prefix(4)) + "iumS" + String(user_productGoingId) + String(kOrientationKey))) { // 巨星计划
                //: SocialAdBannerModel.premiumStarPlanBanner()
                PrimaryRedModelType.bannerPremiumStarMasterPlan()
                //: return
                return
            }

            //: if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
            if let uidItem = components.queryItems?.first(where: { $0.name == (String(user_lopeText)) }) {
                //: let uid = uidItem.value ?? ""
                let uid = uidItem.value ?? ""
                //: if model.url.contains("mfChatGift") { // 私聊打开礼物面板
                if model.url.contains((String(appWithKey) + String(app_borderUrl.suffix(4)))) { // 私聊打开礼物面板
                    //: PushThen.share.func__pushToPriveteChatVC(chatID: uid) { vc in
                    PushThen.share.resolutionBegin(chatID: uid) { vc in
                        //: vc.msgInputView.clickgiftBtn()
                        vc.msgInputView.fileRouteBtn()
                    }
                    //: } else if model.url.contains("mfChat") { // 私聊
                } else if model.url.contains((String(show_basicValue.suffix(6)))) { // 私聊
                    //: PushThen.share.func__pushToPriveteChatVC(chatID: uid)
                    PushThen.share.resolutionBegin(chatID: uid)
                    //: } else if model.url.contains("user") { // 用户详情
                } else if model.url.contains((String(appEasternUrl))) { // 用户详情
                    //: PushThen.share.func__pushToUserDetailVC(uid: uid)
                    PushThen.share.sessionSomebody(uid: uid)
                }
            }

            //: } else if model.type == 3 {
        } else if model.type == 3 { // 游戏跳转
            //: var config = TalkingWebConfig()
            var config = EndConfig()
            //: config.widthHeight = model.widthHeight
            config.widthHeight = model.widthHeight
            //: config.clearBgColor = true
            config.clearBgColor = true
            //: PushThen.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
            PushThen.share.plumeBright(urlStr: model.url, webConfig: config)

            //: } else if model.type == 4 {
        } else if model.type == 4 { // 外部网页
            //: if let url = URL(string: model.url) {
            if let url = URL(string: model.url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    /// 加入巨星计划
    //: static func premiumStarPlanBanner() {
    static func bannerPremiumStarMasterPlan() {
        //: if DismissReactiveCompatible.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue ||
        if DismissReactiveCompatible.share.loginUserMode.isTPAuth == MovementBasicType.isSuccessed.rawValue ||
            //: DismissReactiveCompatible.share.loginUserMode.isRealPersonAuth == false {
            DismissReactiveCompatible.share.loginUserMode.isRealPersonAuth == false
        { // 真人认证成功 || 不需要真人认证
            //: if DismissReactiveCompatible.share.loginUserMode.premiumStarApplyStatus != PStarStatus.isOnGoing.rawValue {
            if DismissReactiveCompatible.share.loginUserMode.premiumStarApplyStatus != TermsClusterLiteral.isOnGoing.rawValue {
                //: PushThen.share.func__pushToWebVC(webViewType: .StarPlanIndex)
                PushThen.share.plumage(webViewType: .StarPlanIndex)
                //: } else {
            } else {
                //: PushThen.share.func__pushToWebVC(webViewType: .StarPlanAudit)
                PushThen.share.plumage(webViewType: .StarPlanAudit)
            }
            //: } else if DismissReactiveCompatible.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if DismissReactiveCompatible.share.loginUserMode.isTPAuth == MovementBasicType.isOnGoing.rawValue { // 真人认证审核中
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().showGuidanceName(showMsg: (String(appPlatLimitValue.suffix(4)) + "se veri" + appCropListenId.replacingOccurrences(of: "premium", with: "ic") + "on f" + app_wedValue.replacingOccurrences(of: "scan", with: "t")).localized)
            //: let vc = TalkingFinalVerificationVC()
            let vc = FenceReactiveCompatible()
            //: PushThen.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            PushThen.share.doingGoing()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().showGuidanceName(showMsg: (String(appPlatLimitValue.suffix(4)) + "se veri" + appCropListenId.replacingOccurrences(of: "premium", with: "ic") + "on f" + app_wedValue.replacingOccurrences(of: "scan", with: "t")).localized)
            //: PushThen.share.func__pushUserVerifyController(toast: nil)
            PushThen.share.undercoverOperation(toast: nil)
        }
    }
}
