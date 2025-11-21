
//: Declare String Begin

/*: "action" :*/
fileprivate let show_plantPath:[UInt8] = [0xf2,0xf0,0xe7,0xfa,0xfc,0xfd]

private func shoulderBecome(orbit num: UInt8) -> UInt8 {
    return num ^ 147
}

/*: "category" :*/
fileprivate let showTrunkKey:[UInt8] = [0xf4,0xf6,0xe3,0xf2,0xf0,0xf8,0xe5,0xee]

private func effectChild(appropriate num: UInt8) -> UInt8 {
    return num ^ 151
}

/*: "label" :*/
fileprivate let mainBagContent:String = "lasayel"

/*: "user_action" :*/
fileprivate let show_resignFormat:String = "video todayuser_ac"
fileprivate let dataFitName:String = "tiomain"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LeaseTrailerThen.swift
//  SlideAzureController
//
//  Created by DouXiu on 2025/4/1.
//

//: import FirebaseAnalytics
import FirebaseAnalytics
//: import UIKit
import UIKit

//: class FirebaseAnalyticsManager: NSObject {
class LeaseTrailerThen: NSObject {
    //: static let share = FirebaseAnalyticsManager()
    static let share = LeaseTrailerThen()
    //: private override init() {}
    override private init() {}

    // MARK: - 用户属性

    //: func setUserProperty(name: String, value: String) {
    func setRandomDistinctiveOysterPlantFullFoursquareLibrary(name: String, value: String) {
        //: Analytics.setUserProperty(value, forName: name)
        Analytics.setUserProperty(value, forName: name)
    }

    // MARK: - 用户行为追踪

    //: func trackUserAction(action: String, category: String, label: String? = nil) {
    func talkPlace(action: String, category: String, label: String? = nil) {
        //: var parameters: [String: Any] = [
        var parameters: [String: Any] = [
            //: "action": action,
            String(bytes: show_plantPath.map{shoulderBecome(orbit: $0)}, encoding: .utf8)!: action,
            //: "category": category,
            String(bytes: showTrunkKey.map{effectChild(appropriate: $0)}, encoding: .utf8)!: category,
        ]

        //: if let label = label {
        if let label = label {
            //: parameters["label"] = label
            parameters[(mainBagContent.replacingOccurrences(of: "say", with: "b"))] = label
        }

        //: logEvent(name: "user_action", parameters: parameters)
        tupeloShowPlay(name: (String(show_resignFormat.suffix(7)) + dataFitName.replacingOccurrences(of: "main", with: "n")), parameters: parameters)
    }

    // MARK: - 页面访问追踪

    //: func trackScreenView(screenName: String, screenClass: String) {
    func keyBy(screenName: String, screenClass: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventScreenView,
            AnalyticsEventScreenView,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterScreenName: screenName,
                AnalyticsParameterScreenName: screenName,
                //: AnalyticsParameterScreenClass: screenClass,
                AnalyticsParameterScreenClass: screenClass,
                //: ])
            ]
        )
    }

    // MARK: - 事件追踪

    //: func logEvent(name: String, parameters: [String: Any]? = nil) {
    func tupeloShowPlay(name: String, parameters: [String: Any]? = nil) {
        //: Analytics.logEvent(name, parameters: parameters)
        Analytics.logEvent(name, parameters: parameters)
    }

    // MARK: - 内购事件追踪

    //: func trackPurchase(payType: String, price: Double, currency: String) {
    func successCurrency(payType: String, price: Double, currency: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventPurchase,
            AnalyticsEventPurchase,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterPaymentType: payType,
                AnalyticsParameterPaymentType: payType,
                //: AnalyticsParameterPrice: price,
                AnalyticsParameterPrice: price,
                //: AnalyticsParameterCurrency: currency,
                AnalyticsParameterCurrency: currency,
                //: ])
            ]
        )
    }
}
