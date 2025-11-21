
//: Declare String Begin

/*: "APNS Token =  :*/
fileprivate let userOriginalUrl:String = "APNS tag take enjoy"
fileprivate let kEarSwingTitle:[Character] = ["T","o","k","e","n"," ","="," "]

/*: "APNS Token Error:  :*/
fileprivate let k_letterMessage:String = "merely addAPNS "
fileprivate let data_parentAgainstKey:String = " Error: span transaction"

/*: "token =  :*/
fileprivate let constChildKey:String = "bug vehicle strip relieftoken "
fileprivate let user_exitTitle:String = "occur "

/*: "extra" :*/
fileprivate let main_possiblePath:String = "supplyxtra"

/*: "Unable to register for remote notifications: :*/
fileprivate let userResourcePlayMsg:[UInt8] = [0x97,0xb0,0xa3,0xa4,0xae,0xa7,0x62,0xb6,0xb1,0x62,0xb4,0xa7,0xa9,0xab,0xb5,0xb6,0xa7,0xb4,0x62,0xa8,0xb1,0xb4,0x62,0xb4,0xa7,0xaf,0xb1,0xb6,0xa7,0x62,0xb0,0xb1,0xb6,0xab,0xa8,0xab,0xa5,0xa3,0xb6,0xab,0xb1,0xb0,0xb5,0x7c]

fileprivate func readingBurst(model num: UInt8) -> UInt8 {
    let value = Int(num) - 66
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "token" :*/
fileprivate let kLoadUrl:[UInt8] = [0xb4,0xaf,0xab,0xa5,0xae]

private func discCheck(outlet num: UInt8) -> UInt8 {
    return num ^ 192
}

/*: "FCMToken" :*/
fileprivate let main_rocketStackMaskStr:String = "FCfactor"

/*: _LocalPush" :*/
fileprivate let appByMsg:[Character] = ["_","L","o","c","a","l","P","u","s","h"]

/*: "identifier" :*/
fileprivate let data_backFormat:[Character] = ["i"]
fileprivate let user_intoName:[Character] = ["d","e","n","t","i","f","i","e","r"]

/*: "fcm_options" :*/
fileprivate let showChildTitle:String = "fcm_opupper region due harassment bug"

/*: "image" :*/
fileprivate let main_offId:[UInt8] = [0x9f,0xa3,0x97,0x9d,0x9b]

fileprivate func minOutlet(plain num: UInt8) -> UInt8 {
    let value = Int(num) - 54
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "本地推送通知 -- 用户未授权(.notDetermined)" :*/
fileprivate let constAdminPlusBaseballStr:[UInt8] = [0x20,0x5a,0x6a,0x23,0x5a,0x76,0x20,0x48,0x6e,0x2f,0x46,0x47,0x2f,0x46,0x5c,0x21,0x59,0x63,0xe6,0xeb,0xeb,0xe6,0x21,0x52,0x6e,0x20,0x4e,0x71,0x20,0x5a,0x6c,0x20,0x48,0x4e,0x20,0x5b,0x45,0xee,0xe8,0xa8,0xa9,0xb2,0x82,0xa3,0xb2,0xa3,0xb4,0xab,0xaf,0xa8,0xa3,0xa2,0xef]

private func fastWay(parent num: UInt8) -> UInt8 {
    return num ^ 198
}

/*: "本地推送通知 -- 用户未授权(.denied)" :*/
fileprivate let constYaPlanFormat:String = "本\u{5730}推送\u{901a}知"
fileprivate let showHideId:String = "\u{6237}未授权(.de"
fileprivate let kEthicalWriteKey:String = "nied)injury need"

/*: "本地推送通知 -- 用户未授权(.ephemeral)" :*/
fileprivate let dataVersionMessage:String = "本地推送\u{901a}知"
fileprivate let appSpanMessage:String = "未授\u{6743}(.eph"
fileprivate let user_highlightFormat:[Character] = ["e","m","e","r","a","l",")"]

/*: "本地推送通知 -- 用户未授权" :*/
fileprivate let user_launchUrl:String = "本地\u{63a8}送通\u{77e5} "
fileprivate let notiBondContent:String = "--"
fileprivate let user_attractiveFormat:String = " 用户未\u{6388}权"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PortraitReactiveCompatible+APNS.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/23.
//

//: import FirebaseCore
import FirebaseCore
//: import FirebaseMessaging
import FirebaseMessaging
//: import Foundation
import Foundation
//: import UserNotifications
import UserNotifications

//: public extension AppDelegateHelper {
public extension PortraitReactiveCompatible {
    /// 成功的回调
    //: class func application(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    class func isometrical(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: printLog(message: "APNS Token = \(deviceStr)")
        printLog(message: (String(userOriginalUrl.prefix(5)) + String(kEarSwingTitle)) + "\(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: UploadLogTool.writeLog(msg: "APNS Token Error: \(error).")
                MateThen.trackBy(msg: (String(k_letterMessage.suffix(5)) + "Token" + String(data_parentAgainstKey.prefix(8))) + "\(error).")
                //: } else if let token = token {
            } else if let token = token {
                //: printLog(message: "token = \(token)")
                printLog(message: (String(constChildKey.suffix(6)) + user_exitTitle.replacingOccurrences(of: "occur", with: "=")) + "\(token)")
            }
        }
    }

    /// 收到远程推送（kill app）
    //: class func application(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
    class func doingceAfter(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: if UIApplication.shared.applicationState != .active {
        if UIApplication.shared.applicationState != .active {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: if userInfo.keys.contains("extra") {
                if userInfo.keys.contains((main_possiblePath.replacingOccurrences(of: "supply", with: "e"))) {
                    //: let extraStr = userInfo["extra"] as? String ?? ""
                    let extraStr = userInfo[(main_possiblePath.replacingOccurrences(of: "supply", with: "e"))] as? String ?? ""
                    //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                    CountensityTapManager.share.APNSUserInfoStr = extraStr
                    //: TalkingAPNSManager.share.launchFromApns = true
                    CountensityTapManager.share.launchFromApns = true
                }
            }
        }
    }

    /// 失败的回调
    //: class func application(didFailToRegisterForRemoteNotificationsWithError error: Error) {
    class func countroduce(didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: printLog(message: "Unable to register for remote notifications:\(error.localizedDescription)")
        printLog(message: String(bytes: userResourcePlayMsg.map{readingBurst(model: $0)}, encoding: .utf8)! + "\(error.localizedDescription)")
    }

    /// 点击消息（app运行中）
    //: class func userNotificationCenter(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    class func kindWindow(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: if UIApplication.shared.applicationState == .active {
        if UIApplication.shared.applicationState == .active {
            //: TalkingAPNSManager.share.APNSUserInfoStr = ""
            CountensityTapManager.share.APNSUserInfoStr = ""
            //: TalkingAPNSManager.share.launchFromApns = false
            CountensityTapManager.share.launchFromApns = false

            //: } else {
        } else {
            //: let userInfo = response.notification.request.content.userInfo
            let userInfo = response.notification.request.content.userInfo
            //: if userInfo.keys.contains("extra") {
            if userInfo.keys.contains((main_possiblePath.replacingOccurrences(of: "supply", with: "e"))) {
                //: let extraStr = userInfo["extra"] as? String ?? ""
                let extraStr = userInfo[(main_possiblePath.replacingOccurrences(of: "supply", with: "e"))] as? String ?? ""
                //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                CountensityTapManager.share.APNSUserInfoStr = extraStr
                //: TalkingAPNSManager.share.launchFromApns = true
                CountensityTapManager.share.launchFromApns = true
            }
        }

        //: completionHandler()
        completionHandler()
    }

    /// MessagingDelegate
    //: class func messaging(didReceiveRegistrationToken fcmToken: String?) {
    class func ting(didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = [String(bytes: kLoadUrl.map{discCheck(outlet: $0)}, encoding: .utf8)!: fcmToken ?? ""]
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((main_rocketStackMaskStr.replacingOccurrences(of: "factor", with: "MT") + "oken")),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict
            userInfo: dataDict
        )
    }
}

// MARK: - 本地推送

//: extension AppDelegateHelper {
extension PortraitReactiveCompatible {
    /// 构建通知内容，发送本地通知
    /// - Parameters:
    ///   - uid: 用户Id（用于identifier）
    ///   - title: 标题
    ///   - body: 内容
    ///   - imageUrl: 图片地址
    //: class func pushLocalNotification(uid: String? = nil,
    class func join(uid: String? = nil,
                    //: title: String? = nil,
                    title: String? = nil,
                    //: body: String,
                    body: String,
                    //: imageUrl: String? = nil) {
                    imageUrl: String? = nil)
    {
        //: UNUserNotificationCenter.current().getNotificationSettings { settings in
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            //: switch settings.authorizationStatus {
            switch settings.authorizationStatus {
            //: case .provisional, .authorized:
            case .provisional, .authorized: // 已授权，发送本地推送通知
                //: let content = UNMutableNotificationContent()
                let content = UNMutableNotificationContent()
                //: content.title = title ?? ""
                content.title = title ?? ""
                //: content.body = body
                content.body = body
                //: content.sound = UNNotificationSound.default
                content.sound = UNNotificationSound.default
                //: let identifier = (uid != nil) ? uid:"\(AppName)_LocalPush"
                let identifier = (uid != nil) ? uid : "\(showLengthControlUrl)" + (String(appByMsg))
                //: let userInfo = ["identifier": identifier!] as [String: Any]
                let userInfo = [(String(data_backFormat) + String(user_intoName)): identifier!] as [String: Any]
                //: content.userInfo = userInfo
                content.userInfo = userInfo
                //: guard let imgStr = imageUrl else {
                guard let imgStr = imageUrl else {
                    //: local_notificationPush(content)
                    askSearched(content)
                    //: return
                    return
                }
                /// 带图片的本地通知
                //: let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
                let newStr = imgStr.replacingOccurrences(of: userValueTitle.until6decrypt(), with: showReasonContent)
                //: content.userInfo["fcm_options"] = ["image": newStr]
                content.userInfo[(String(showChildTitle.prefix(6)) + "tions")] = [String(bytes: main_offId.map{minOutlet(plain: $0)}, encoding: .utf8)!: newStr]
                //: FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                    //: local_notificationPush(content)
                    askSearched(content)
                }

            //: case .notDetermined:
            case .notDetermined:
                //: printLog(message: "本地推送通知 -- 用户未授权(.notDetermined)")
                printLog(message: String(bytes: constAdminPlusBaseballStr.map{fastWay(parent: $0)}, encoding: .utf8)!)
            //: case .denied:
            case .denied:
                //: printLog(message: "本地推送通知 -- 用户未授权(.denied)")
                printLog(message: (constYaPlanFormat + " -- 用" + showHideId + String(kEthicalWriteKey.prefix(5))))
            //: case .ephemeral:
            case .ephemeral:
                //: printLog(message: "本地推送通知 -- 用户未授权(.ephemeral)")
                printLog(message: (dataVersionMessage + " -- 用户" + appSpanMessage + String(user_highlightFormat)))
            //: @unknown default:
            @unknown default:
                //: printLog(message: "本地推送通知 -- 用户未授权")
                printLog(message: (user_launchUrl + notiBondContent.capitalized + user_attractiveFormat))
            }
        }
    }

    /// 根据content发送本地通知
    /// - Parameter content: 通知内容
    //: private class func local_notificationPush(_ content: UNNotificationContent) {
    private class func askSearched(_ content: UNNotificationContent) {
        //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        //: if let identifier = content.userInfo["identifier"] as? String {
        if let identifier = content.userInfo[(String(data_backFormat) + String(user_intoName))] as? String {
            //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            //: UNUserNotificationCenter.current().add(request) { _ in
            UNUserNotificationCenter.current().add(request) { _ in
            }
        }
    }

    /// 移除已经展示的推送
    /// - Parameter identifier: 通知标识符（nil：移除所有）
    //: class func local_removeDeliveredNotification(identifier: String?) {
    class func animal(identifier: String?) {
        //: guard let idf = identifier else {
        guard let idf = identifier else {
            //: UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            //: return
            return
        }
        //: UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
    }
}
