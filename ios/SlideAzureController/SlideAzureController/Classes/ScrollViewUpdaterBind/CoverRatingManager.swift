
//: Declare String Begin

/*: "TodayIsShowRatingViewKey" :*/
fileprivate let appNeverFormat:String = "hair out beauty premium propertyToda"
fileprivate let const_enablePath:String = "clothes anima returnowRat"
fileprivate let userProcessKey:String = "iewKeyreminder mic supposed band world"

/*: "IsShowAppStoreRatingGuideViewKey" :*/
fileprivate let appAttentionKey:[UInt8] = [0x90,0xaa,0x8a,0xb1,0xb6,0xae,0x98,0xa9,0xa9,0x8a,0xad,0xb6,0xab,0xbc,0x8b,0xb8,0xad,0xb0,0xb7,0xbe,0x9e,0xac,0xb0,0xbd,0xbc,0x8f,0xb0,0xbc,0xae,0x92,0xbc,0xa0]

private func schemaReply(index num: UInt8) -> UInt8 {
    return num ^ 217
}

/*: "yyyy-MM-dd" :*/
fileprivate let const_transmissionValue:[Character] = ["y"]
fileprivate let notiOperateInstallationValue:[Character] = ["y","y","y","-","M","M","-","d","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//: import Foundation
import Foundation
//: import StoreKit
import StoreKit
//: import UIKit
import UIKit

//: class AppStoreRatingManager {
class CoverRatingManager {
    /// 今日是否展示评分的Key
    //: private let TodayIsShowRatingViewKey = "TodayIsShowRatingViewKey"
    private let TodayIsShowRatingViewKey = (String(appNeverFormat.suffix(4)) + "yIsSh" + String(const_enablePath.suffix(5)) + "ingV" + String(userProcessKey.prefix(6)))
    /// 是否已经展示评分引导弹窗的Key
    //: private let IsShowAppStoreRatingGuideViewKey = "IsShowAppStoreRatingGuideViewKey"
    private let IsShowAppStoreRatingGuideViewKey = String(bytes: appAttentionKey.map{schemaReply(index: $0)}, encoding: .utf8)!
    /// 单例类
    //: static let shared = AppStoreRatingManager()
    static let shared = CoverRatingManager()

    // MARK: - 公共方法

    /// 快速评分 - 应用内评分（仅评分，无评论）
    //: func requestQuickRating() {
    func duringResConversation() {
        // 每日只调用一次
        //: let date = Defaults.object(forKey: TodayIsShowRatingViewKey)
        let date = data_partyText.object(forKey: TodayIsShowRatingViewKey)
        //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
        let today = NSDate.switchly(date: Date(), dateFormat: (String(const_transmissionValue) + String(notiOperateInstallationValue)))
        //: guard date == nil || (date as? String) != today else { return }
        guard date == nil || (date as? String) != today else { return }
        //: Defaults.set(today, forKey: TodayIsShowRatingViewKey)
        data_partyText.set(today, forKey: TodayIsShowRatingViewKey)
        // 如果展示过引导弹窗，直接展示评分
        //: let isShowGuideView = Defaults.bool(forKey: IsShowAppStoreRatingGuideViewKey)
        let isShowGuideView = data_partyText.bool(forKey: IsShowAppStoreRatingGuideViewKey)
        //: if isShowGuideView || DismissReactiveCompatible.share.appUserConfigMode.ratingReward <= 0 {
        if isShowGuideView || DismissReactiveCompatible.share.appUserConfigMode.ratingReward <= 0 {
            //: requestInAppRating()
            cookieFresh()
            //: return
            return
        }
        // 展示引导弹窗
        //: Defaults.set(true, forKey: IsShowAppStoreRatingGuideViewKey)
        data_partyText.set(true, forKey: IsShowAppStoreRatingGuideViewKey)
        //: let guideView = AppStoreRatingGuideView()
        let guideView = LovelyThen()
        //: guideView.show()
        guideView.neck()
        //: guideView.rightBlcok = {
        guideView.rightBlcok = {
            //: AppStoreRatingManager.shared.requestInAppRating()
            CoverRatingManager.shared.cookieFresh()
        }
    }
}

// MARK: - 私有方法

//: private extension AppStoreRatingManager {
private extension CoverRatingManager {
    /// 请求应用内评分 - iOS 13+ 优化版本
    //: func requestInAppRating() {
    func cookieFresh() {
        //: if #available(iOS 14.0, *) {
        if #available(iOS 14.0, *) {
            // iOS 14+ 使用新的 WindowScene API（推荐）
            //: if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                //: SKStoreReviewController.requestReview(in: windowScene)
                SKStoreReviewController.requestReview(in: windowScene)
            }
            //: } else {
        } else {
            // iOS 13.x 使用传统 API
            //: SKStoreReviewController.requestReview()
            SKStoreReviewController.requestReview()
        }
    }
}
