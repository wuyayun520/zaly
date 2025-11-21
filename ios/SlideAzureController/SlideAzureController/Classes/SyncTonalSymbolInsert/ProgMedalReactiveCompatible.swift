
//: Declare String Begin

/*: "In app purchase" :*/
fileprivate let userFlagValue:[Character] = ["I","n"," ","a","p","p"," ","p","u","r","c","h"]
fileprivate let app_weddingPleaseUrl:String = "awell"

/*: "qf3x3n" :*/
fileprivate let const_ownerRemarkName:String = "qf3x3than"

/*: "Install" :*/
fileprivate let mainMineMessage:[UInt8] = [0xc4,0xe3,0xfe,0xf9,0xec,0xe1,0xe1]

private func strikeDecrease(join num: UInt8) -> UInt8 {
    return num ^ 141
}

/*: "rcg4ka" :*/
fileprivate let userSequenceName:String = "RCG4KA"

/*: "RegisterSuccess" :*/
fileprivate let constRecentSameWhetherFormat:[UInt8] = [0x73,0x73,0x65,0x63,0x63,0x75,0x53,0x72,0x65,0x74,0x73,0x69,0x67,0x65,0x52]

/*: "7t5e6d" :*/
fileprivate let const_clickData:[Character] = ["7","t","5","e","6","d"]

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let show_itemTitle:[UInt8] = [0x17,0x20,0x1d,0x17,0x1f,0x7,0x28,0x15,0x26,0x4,0x26,0x23,0x1e,0x19,0x17,0x28,0x24,0x23,0x24,0xe1,0x29,0x24,0x27,0xfa,0x1d,0x22,0x18,0x23,0x29,0x28,0x21,0x23,0x26,0x19]

fileprivate func femaleDeadline(rank num: UInt8) -> UInt8 {
    let value = Int(num) + 76
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "wkb470" :*/
fileprivate let dataDefinitionValue:[Character] = ["w","k","b","4","7","0"]

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let noti_fieldMsg:[UInt8] = [0xf8,0xf7,0xf2,0xf8,0xf0,0xc8,0xef,0xfa,0xe9,0xcb,0xe9,0xf4,0xf1,0xfe,0xf8,0xef,0xeb,0xf4,0xeb,0xb6,0xee,0xeb,0xe8,0xd8,0xfa,0xf5,0xf8,0xfe,0xf7]

private func occupierApply(north num: UInt8) -> UInt8 {
    return num ^ 155
}

/*: "z2pgo0" :*/
fileprivate let constPeopleId:[Character] = ["z","2","p","g","o"]
fileprivate let k_drawingTitle:[Character] = ["0"]

/*: "subscribe_sus" :*/
fileprivate let const_violationMsg:String = "pow"
fileprivate let showWithoutName:String = "usocialc"

/*: "vw2jdo" :*/
fileprivate let app_loadData:[Character] = ["v","w","2","j","d","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProgMedalReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/10/17.
//

//: import Adjust
import Adjust
//: import UIKit
import UIKit

//: class TalkingAdjustManager: NSObject {
class ProgMedalReactiveCompatible: NSObject {
    //: static let share = TalkingAdjustManager()
    static let share = ProgMedalReactiveCompatible()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    // MARK: - Lazy load

    //: private lazy var adjustDict: [String: String] = {
    private lazy var adjustDict: [String: String] = //: return ["In app purchase": "qf3x3n",
        [(String(userFlagValue) + app_weddingPleaseUrl.replacingOccurrences(of: "well", with: "se")): (const_ownerRemarkName.replacingOccurrences(of: "than", with: "n")),
         //: "Install": "rcg4ka",
         String(bytes: mainMineMessage.map{strikeDecrease(join: $0)}, encoding: .utf8)!: (userSequenceName.lowercased()),
         //: "RegisterSuccess": "7t5e6d",
         String(bytes: constRecentSameWhetherFormat.reversed(), encoding: .utf8)!: (String(const_clickData)),
         //: "clickStarProjectpop-upsFindoutmore":"wkb470",
         String(bytes: show_itemTitle.map{femaleDeadline(rank: $0)}, encoding: .utf8)!: (String(dataDefinitionValue)),
         //: "clickStarProjectpop-upsCancel":"z2pgo0",
         String(bytes: noti_fieldMsg.map{occupierApply(north: $0)}, encoding: .utf8)!: (String(constPeopleId) + String(k_drawingTitle)),
         //: "subscribe_sus": "vw2jdo"]
         (const_violationMsg.replacingOccurrences(of: "pow", with: "s") + showWithoutName.replacingOccurrences(of: "social", with: "bs") + "ribe_sus"): (String(app_loadData))]
    //: }()
}

//: extension TalkingAdjustManager {
extension ProgMedalReactiveCompatible {
    /// 添加内购埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addPurchasedEvent(price: Double, currency: String) {
    func narrowFresh(price: Double, currency: String) {
        //: guard let token = adjustDict["In app purchase"] else {
        guard let token = adjustDict[(String(userFlagValue) + app_weddingPleaseUrl.replacingOccurrences(of: "well", with: "se"))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加订阅埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addSubscribeEvent(price: Double, currency: String) {
    func con(price: Double, currency: String) {
        //: guard let token = adjustDict["subscribe_sus"] else {
        guard let token = adjustDict[(const_violationMsg.replacingOccurrences(of: "pow", with: "s") + showWithoutName.replacingOccurrences(of: "social", with: "bs") + "ribe_sus")] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加埋点事件
    /// - Parameter key: 事件名
    //: func addEvent(key: String) {
    func stem(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加去重事件【只记录一次】
    /// - Parameter key: 事件名
    //: func addOnceEvent(key: String) {
    func beak(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setTransactionId(token)
        event?.setTransactionId(token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }
}
