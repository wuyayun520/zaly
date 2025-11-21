
//: Declare String Begin

/*: "allowList" :*/
fileprivate let mainTransmissionText:[Character] = ["a","l","l","o","w","L"]
fileprivate let noti_plainBringValue:String = "liet"

/*: "denyList" :*/
fileprivate let user_limitedStr:String = "behavior"
fileprivate let dataMainMessage:String = "out recommendation file shirt betweenenyList"

/*: "America" :*/
fileprivate let user_hideId:String = "satisfy female pairAmeri"
fileprivate let user_scheduleKey:String = "CA"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SmallishThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: typealias ReqSuccessBlock = () ->()
typealias ReqSuccessBlock = () -> Void

//: class TalkingLocationTool: NSObject {
class SmallishThen: NSObject {
    //: var reqSuccessBlock: ReqSuccessBlock!
    var reqSuccessBlock: ReqSuccessBlock!

    //: var areaArr = [TalkingAreaModel]()
    var areaArr = [ImpressionAreaModel]() /// 注册允许国家列表（白名单）
    //: var blackListAreaArr = [TalkingAreaModel]()
    var blackListAreaArr = [ImpressionAreaModel]() /// 注册不允许国家列表（黑名单）

    //: static let share = TalkingLocationTool()
    static let share = SmallishThen()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: func__loadAreaCodeData()
        stateToAssemblageMedium()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingLocationTool {
extension SmallishThen {
    //: private func func__loadAreaCodeData() {
    private func stateToAssemblageMedium() {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingLoginRequestTool.req_countryList {succeed, result, errorModel in
        FirRequestTool.effect { succeed, result, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: let allowArray: Array =  dict["allowList"] as! Array<Any>
                let allowArray: Array = dict[(String(mainTransmissionText) + noti_plainBringValue.replacingOccurrences(of: "lie", with: "is"))] as! [Any]
                //: let denyListArray: Array =  dict["denyList"] as! Array<Any>
                let denyListArray: Array = dict[(user_limitedStr.replacingOccurrences(of: "behavior", with: "d") + String(dataMainMessage.suffix(7)))] as! [Any]

                //: if let datas = Array<TalkingAreaModel>.deserialize(from: allowArray as? Array) {
                if let datas = Array<ImpressionAreaModel>.deserialize(from: allowArray as? Array) {
                    //: self.areaArr.append(contentsOf: (datas as? [TalkingAreaModel])!)
                    self.areaArr.append(contentsOf: (datas as? [ImpressionAreaModel])!)
                }
                //: if let blackdatas = Array<TalkingAreaModel>.deserialize(from: denyListArray as? Array) {
                if let blackdatas = Array<ImpressionAreaModel>.deserialize(from: denyListArray as? Array) {
                    //: self.blackListAreaArr.append(contentsOf: (blackdatas as? [TalkingAreaModel])!)
                    self.blackListAreaArr.append(contentsOf: (blackdatas as? [ImpressionAreaModel])!)
                }
                //: self.reqSuccessBlock?()
                self.reqSuccessBlock?()
            }
        }
    }

    /// （注册风控使用）是否包含当前国家，包含则禁止注册
    /// - Returns: false: 不包含，true: 包含
    //: static func isIncludeBlackListCountry() -> Bool {
    static func pointCountry() -> Bool {
        //: var include = false
        var include = false
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.maxChild()
        //: let arr = TalkingLocationTool.share.blackListAreaArr
        let arr = SmallishThen.share.blackListAreaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: include = true
                include = true
                //: break
                break
            }
        }

        //: return include
        return include
    }

    /// （注册流程选择）选择国家编号使用，白名单
    //: func getDefaltCountry() -> TalkingAreaModel {
    func haveMinimumCountry() -> ImpressionAreaModel {
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.maxChild()
        //: let arr = TalkingLocationTool.share.areaArr
        let arr = SmallishThen.share.areaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: return model
                return model
            }
        }
        //: return TalkingAreaModel.init(areaCode: "1", areaName: "America", countryCode: "US", url: "")
        return ImpressionAreaModel(areaCode: "1", areaName: (String(user_hideId.suffix(5)) + user_scheduleKey.lowercased()), countryCode: "US", url: "")
    }
}

//: class TalkingAreaModel: HandyJSON {
class ImpressionAreaModel: HandyJSON {
    //: var areaCode = ""
    var areaCode = ""
    //: var countryCode = ""
    var countryCode = ""
    //: @objc var areaName = ""
    @objc var areaName = ""
    //: var url = ""
    var url = ""
    //: required init() {}
    required init() {}
    //: init(areaCode: String, areaName: String, countryCode: String, url:String) {
    init(areaCode: String, areaName: String, countryCode: String, url: String) {
        //: self.areaCode = areaCode
        self.areaCode = areaCode
        //: self.areaName = areaName
        self.areaName = areaName
        //: self.countryCode = countryCode
        self.countryCode = countryCode
        //: self.url = url
        self.url = url
    }
}
