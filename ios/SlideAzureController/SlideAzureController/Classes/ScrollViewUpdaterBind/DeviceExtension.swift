
//: Declare String Begin

/*: "RSA加密失败，str:  :*/
fileprivate let const_communicationStr:String = "same pinRSA加密"
fileprivate let k_smoothOffingData:String = "s dry conditiontr: "

/*: "weixin://" :*/
fileprivate let show_oncePath:String = "wfloorixi"
fileprivate let mainRetMessage:[Character] = ["n",":","/","/"]

/*: "dingtalk://" :*/
fileprivate let show_crushEntityName:[Character] = ["d","i","n","g","t","a"]
fileprivate let show_attentionName:[Character] = ["l","k",":","/","/"]

/*: "lark://" :*/
fileprivate let app_createStr:String = "thumb"
fileprivate let app_courseStr:String = "wall before lose iceark://"

/*: "wxwork://" :*/
fileprivate let show_smoothMsg:[Character] = ["w"]
fileprivate let data_visitorDecreaseName:[Character] = ["x","w","o","r","k",":","/","/"]

/*: "deviceId" :*/
fileprivate let user_ehName:[UInt8] = [0x1,0x2,0x13,0x6,0x0,0x2,0xe6,0x1]

fileprivate func brightLifetime(up num: UInt8) -> UInt8 {
    let value = Int(num) - 157
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "weixin" :*/
fileprivate let user_tillKey:String = "WEIXIN"

/*: "wxwork" :*/
fileprivate let app_hereId:String = "WXWOR"
fileprivate let appSaltPrepareFormat:String = "vanish"

/*: "dingtalk" :*/
fileprivate let user_clickText:[Character] = ["d","i","n","g","t"]
fileprivate let kCordBoxKey:String = "athread"

/*: "lark" :*/
fileprivate let app_tipValue:[Character] = ["l","a","r","k"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/5.
//

//: import Adjust
import Adjust
//: import AdSupport
import AdSupport
//: import AppTrackingTransparency
import AppTrackingTransparency
//: import CoreTelephony
import CoreTelephony
//: import UIKit
import UIKit

//: extension UIDevice{
extension UIDevice {
    //: class func getDeviceDeviceIdentifier ( IdentifierBlock: @escaping (_ str: String) -> Void ) {
    class func groupSmall(IdentifierBlock: @escaping (_ str: String) -> Void) {
        //: if #available(iOS 14.0, *) {
        if #available(iOS 14.0, *) {
            //: ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
            ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
                //: if status == .authorized {
                if status == .authorized {
                    //: IdentifierBlock(UIDevice.getDeviceRawAdvertisingId())
                    IdentifierBlock(UIDevice.mainOpposite())
                    //: } else {
                } else {
                    //: IdentifierBlock("")
                    IdentifierBlock("")
                }
                //: })
            })
            //: } else {
        } else {
            //: if ASIdentifierManager.shared().isAdvertisingTrackingEnabled {
            if ASIdentifierManager.shared().isAdvertisingTrackingEnabled {
                //: IdentifierBlock(UIDevice.getDeviceRawAdvertisingId())
                IdentifierBlock(UIDevice.mainOpposite())
                //: } else {
            } else {
                //: IdentifierBlock("")
                IdentifierBlock("")
            }
        }
    }

    //: class func getDeviceRawAdvertisingId() -> String {
    class func mainOpposite() -> String {
        //: var deviceIdentifier = ""
        var deviceIdentifier = ""
        //: let adIdentifier =  ASIdentifierManager.shared().advertisingIdentifier
        let adIdentifier = ASIdentifierManager.shared().advertisingIdentifier
        //: if !adIdentifier.uuidString.isEmptyString {
        if !adIdentifier.uuidString.isEmptyString {
            //: deviceIdentifier = adIdentifier.uuidString
            deviceIdentifier = adIdentifier.uuidString
        }
        //: return deviceIdentifier
        return deviceIdentifier
    }

    //: class func getDeviceSimInfo() -> (Array<String>) {
    class func maxChild() -> ([String]) {
        //: let info = CTTelephonyNetworkInfo.init()
        let info = CTTelephonyNetworkInfo()

        //: var tempArr = Array<String>()
        var tempArr = [String]()
        //: if #available(iOS 12.0, *) {
        if #available(iOS 12.0, *) {
            //: let carrierDic = info.serviceSubscriberCellularProviders
            let carrierDic = info.serviceSubscriberCellularProviders
            //: if !carrierDic!.isEmpty {
            if !carrierDic!.isEmpty {
                //: for carrier in carrierDic!.values {
                for carrier in carrierDic!.values { // 双卡命中处理
                    //: let iso = carrier.isoCountryCode ?? ""    // ISO国家代码
                    let iso = carrier.isoCountryCode ?? "" // ISO国家代码
                    //: tempArr.append(iso)
                    tempArr.append(iso)
                }
            }
            //: } else {
        } else {
            //: let carrier = info.subscriberCellularProvider
            let carrier = info.subscriberCellularProvider
//            let use = carrier?.allowsVOIP
//            let name = carrier?.carrierName     //运营商名字
//            let mobile = carrier?.mobileCountryCode  //移动国家代码
//            let mnc = carrier?.mobileNetworkCode  //移动网络代码
            //: let iso = carrier?.isoCountryCode ?? ""  //ISO国家代码
            let iso = carrier?.isoCountryCode ?? "" // ISO国家代码
            //: tempArr.append(iso)
            tempArr.append(iso)
        }

        //: return tempArr
        return tempArr
    }

    /// RSA加密字符串
    /// - Parameter str: 字符串
    /// - Returns: 加密结果
    //: static func rsa_encrypted(str: String) -> String {
    static func numberoOfStr(str: String) -> String {
        //: var encryptedStr = ""
        var encryptedStr = ""
        //: do {
        do {
            //: let rsa_publicKey = try PublicKey(pemEncoded: LoginRsaPublicKey)
            let rsa_publicKey = try PublicKey(pemEncoded: main_saveName)
            //: let newStr = str.count > 0 ? str : "-"
            let newStr = str.count > 0 ? str : "-"
            //: encryptedStr = try ClearMessage(string: newStr, using: .utf8).encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            encryptedStr = try ClearMessage(string: newStr, using: .utf8).encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            //: } catch {
        } catch {
            //: printLog(message: "RSA加密失败，str: \(str).")
            printLog(message: (String(const_communicationStr.suffix(5)) + "失败，s" + String(k_smoothOffingData.suffix(4))) + "\(str).")
        }
        //: return encryptedStr
        return encryptedStr
    }
}

//: public extension UIDevice {
public extension UIDevice {
    //: static var modelName: String {
    static var modelName: String {
        //: var systemInfo = utsname()
        var systemInfo = utsname()
        //: uname(&systemInfo)
        uname(&systemInfo)
        //: let machineMirror = Mirror(reflecting: systemInfo.machine)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        //: let identifier = machineMirror.children.reduce("") { identifier, element in
        let identifier = machineMirror.children.reduce("") { identifier, element in
            //: guard let value = element.value as? Int8, value != 0 else { return identifier }
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            //: return identifier + String(UnicodeScalar(UInt8(value)))
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        //: return identifier
        return identifier
    }

    /// 获取当前系统时区
    //: static var timeZone: String {
    static var timeZone: String {
        //: let currentTimeZone = NSTimeZone.system
        let currentTimeZone = NSTimeZone.system
        //: print("当前时区：\(currentTimeZone.identifier)")
        //: return currentTimeZone.identifier
        return currentTimeZone.identifier
    }

    /// 获取当前系统语言
    //: static var langCode: String {
    static var langCode: String {
        //: let language = Locale.preferredLanguages.first
        let language = Locale.preferredLanguages.first
        //: return language ?? ""
        return language ?? ""
    }

    /// 获取当前系统地区
    //: static var countryCode: String {
    static var countryCode: String {
        //: let locale = Locale.current
        let locale = Locale.current
        //: let countryCode = locale.regionCode
        let countryCode = locale.regionCode
        //: print("当前地区：\(String(describing: countryCode))")
        //: return countryCode ?? ""
        return countryCode ?? ""
    }

    /// 是否安装微信
    //: static var isOpenWX: Bool {
    static var isOpenWX: Bool {
        //: let appSchema = "weixin://"
        let appSchema = (show_oncePath.replacingOccurrences(of: "floor", with: "e") + String(mainRetMessage))
        //: let appUrl = URL(string: appSchema)!
        let appUrl = URL(string: appSchema)!
        //: if UIApplication.shared.canOpenURL(appUrl) {
        if UIApplication.shared.canOpenURL(appUrl) {
            // 对应的 app 已经安装
            //: print("\(appSchema)已安装")
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否安装钉钉
    //: static var isOpenDD: Bool {
    static var isOpenDD: Bool {
        //: let appSchema = "dingtalk://"
        let appSchema = (String(show_crushEntityName) + String(show_attentionName))
        //: let appUrl = URL(string: appSchema)!
        let appUrl = URL(string: appSchema)!
        //: if UIApplication.shared.canOpenURL(appUrl) {
        if UIApplication.shared.canOpenURL(appUrl) {
            // 对应的 app 已经安装
            //: print("\(appSchema)已安装")
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否安装飞书
    //: static var isOpenFS: Bool {
    static var isOpenFS: Bool {
        //: let appSchema = "lark://"
        let appSchema = (app_createStr.replacingOccurrences(of: "thumb", with: "l") + String(app_courseStr.suffix(6)))
        //: let appUrl = URL(string: appSchema)!
        let appUrl = URL(string: appSchema)!
        //: if UIApplication.shared.canOpenURL(appUrl) {
        if UIApplication.shared.canOpenURL(appUrl) {
            // 对应的 app 已经安装
            //: print("\(appSchema)已安装")
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否安装企微
    //: static var isOpenWXWork: Bool {
    static var isOpenWXWork: Bool {
        //: let appSchema = "wxwork://"
        let appSchema = (String(show_smoothMsg) + String(data_visitorDecreaseName))
        //: let appUrl = URL(string: appSchema)!
        let appUrl = URL(string: appSchema)!
        //: if UIApplication.shared.canOpenURL(appUrl) {
        if UIApplication.shared.canOpenURL(appUrl) {
            // 对应的 app 已经安装
            //: print("\(appSchema)已安装")
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: static var customDeviceNum: String {
    static var customDeviceNum: String {
        //: let key = KeychainSwift()
        let key = KeychainSwift()
        //: if let value = key.get(PodspecName) {
        if let value = key.get(notiWarningCleanContent) {
            //: return value
            return value
            //: }else{
        } else {
            //: let value = NSUUID().uuidString
            let value = NSUUID().uuidString
            //: key.set(value, forKey: PodspecName)
            key.set(value, forKey: notiWarningCleanContent)
            //: return value
            return value
        }
    }

    //: static var deviceInfoDic: [String: Any] {
    static var deviceInfoDic: [String: Any] {
        //: let usedVpn = TalkingRequestAddrTool.isUsedProxy() || TalkingRequestAddrTool.isUsedVPN()
        let usedVpn = ManufacturerThen.outIndicatorWeekly() || ManufacturerThen.signSub()
        //: let params: [String: Any] = ["p1": UIDevice.langCode,
        let params: [String: Any] = ["p1": UIDevice.langCode,
                                     //: "p2": UIDevice.timeZone,
                                     "p2": UIDevice.timeZone,
                                     //: "p3": (UIDevice.getApps ?? ""),
                                     "p3": UIDevice.getApps ?? "",
                                     //: "p4": UIDevice.customDeviceNum,
                                     "p4": UIDevice.customDeviceNum,
                                     //: "p5": UIDevice.countryCode,
                                     "p5": UIDevice.countryCode,
                                     //: "p7": (usedVpn == true ? "1":"0")]
                                     "p7": usedVpn == true ? "1" : "0"]
        //: let data = try? JSONSerialization.data(withJSONObject: params, options: [])
        let data = try? JSONSerialization.data(withJSONObject: params, options: [])
        //: if let paramsStr = String(data: data!, encoding: String.Encoding.utf8) {
        if let paramsStr = String(data: data!, encoding: String.Encoding.utf8) {
            //: let adid = Adjust.adid() ?? ""
            let adid = Adjust.adid() ?? ""
            //: let deviceIdStr = rsa_encrypted(str: adid)
            let deviceIdStr = numberoOfStr(str: adid)
            //: return ["deviceId": deviceIdStr,
            return [String(bytes: user_ehName.map{brightLifetime(up: $0)}, encoding: .utf8)!: deviceIdStr,
                    //: "p0": paramsStr]
                    "p0": paramsStr]
        }
        //: return [:]
        return [:]
    }

    //: static var getApps: String? {
    static var getApps: String? {
        //: var appsArr: [String] = []
        var appsArr: [String] = []
        //: if UIDevice.isOpenWX {
        if UIDevice.isOpenWX {
            //: appsArr.append("weixin")
            appsArr.append((user_tillKey.lowercased()))
        }
        //: if UIDevice.isOpenWXWork {
        if UIDevice.isOpenWXWork {
            //: appsArr.append("wxwork")
            appsArr.append((app_hereId.lowercased() + appSaltPrepareFormat.replacingOccurrences(of: "vanish", with: "k")))
        }
        //: if UIDevice.isOpenDD {
        if UIDevice.isOpenDD {
            //: appsArr.append("dingtalk")
            appsArr.append((String(user_clickText) + kCordBoxKey.replacingOccurrences(of: "thread", with: "lk")))
        }
        //: if UIDevice.isOpenFS {
        if UIDevice.isOpenFS {
            //: appsArr.append("lark")
            appsArr.append((String(app_tipValue)))
        }
        //: if appsArr.count > 0 {
        if appsArr.count > 0 {
            //: return appsArr.joined(separator: ",")
            return appsArr.joined(separator: ",")
        }

        //: return nil
        return nil
    }
}
