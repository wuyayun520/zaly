
//: Declare String Begin

/*: "V4ujGjsNUl6RvgjvgD6m91" :*/
fileprivate let show_thenPath:String = "V4ujthat safe mine successfully translate"
fileprivate let kMaximumId:[Character] = ["U","l"]
fileprivate let appAttentionFormat:String = "6Rvgjvpow scenario tell image tune"

/*: "data/index" :*/
fileprivate let main_pageId:String = "data/corrupt am visible enroll"

/*: "toUid" :*/
fileprivate let user_whatId:String = "focus cling positivetoUid"

/*: "uid" :*/
fileprivate let const_charmUrl:String = "sunid"

/*: "POST" :*/
fileprivate let k_temporaryData:String = "POSrecent"

/*: "Token" :*/
fileprivate let notiSequenceData:String = "mini alter oval rankToken"

/*: "无法解析出JSON字符串" :*/
fileprivate let showTransferBusyName:[Character] = ["\u{65e0}","法","解","\u{6790}","出","J","S"]
fileprivate let main_flagPadLaunchName:String = "ON字符\u{4e32}"

/*: "plat" :*/
fileprivate let mainSendOverMessage:String = "plamin"

/*: "ios" :*/
fileprivate let const_specialUrl:String = "lites"

/*: "packageId" :*/
fileprivate let constFatherFormat:[Character] = ["p","a","c","k","a"]
fileprivate let constTingData:[Character] = ["g","e","I","d"]

/*: "channel" :*/
fileprivate let appTwoTitle:[Character] = ["c","h","a","n","n"]
fileprivate let user_dateName:[Character] = ["e","l"]

/*: "type" :*/
fileprivate let show_outlineName:String = "typop"

/*: "stat" :*/
fileprivate let userDescriptionContent:String = "personalat"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InjuryThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/19.
//

//: import Alamofire
import Alamofire
//: import UIKit
import UIKit

//: let uploadRecord = UploadRecordManage()
let const_pathMsg = InjuryThen()
//: let TokenSaltStr = "V4ujGjsNUl6RvgjvgD6m91"
let appSkipName = (String(show_thenPath.prefix(4)) + "GjsN" + String(kMaximumId) + String(appAttentionFormat.prefix(6)) + "gD6m91")

//: class UploadRecordManage: NSObject {
class InjuryThen: NSObject {
    //: public func uploadRecordEvent(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
    public func tabKeep(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(main_pageId.prefix(5)) + "index")
        //: reqModel.requestServer = DismissReactiveCompatible.share.appConfigMode.reportDomain
        reqModel.requestServer = DismissReactiveCompatible.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.dict()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: if jsonStr?.count ?? 0 > 0 {
        if jsonStr?.count ?? 0 > 0 {
            //: dict["c"] = NSDictionary.dictionary(withJsonString: jsonStr)
            dict["c"] = NSDictionary.dictionaryToTitle(withJsonString: jsonStr)
            //: } else {
        } else {
            //: var messageDic = [String: Any]()
            var messageDic = [String: Any]()
            //: if toUid?.count ?? 0 > 0 {
            if toUid?.count ?? 0 > 0 {
                //: messageDic["toUid"] = toUid
                messageDic[(String(user_whatId.suffix(5)))] = toUid
            }
            //: messageDic["uid"] = DismissReactiveCompatible.share.loginUserMode.userID
            messageDic[(const_charmUrl.replacingOccurrences(of: "sun", with: "u"))] = DismissReactiveCompatible.share.loginUserMode.userID
            //: dict["c"] = messageDic /// 事件详细内容
            dict["c"] = messageDic /// 事件详细内容
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.searchUpload(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordEvent(eventID: String, parameterStr: [String: Any]) {
    public func launchStr(eventID: String, parameterStr: [String: Any]) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(main_pageId.prefix(5)) + "index")
        //: reqModel.requestServer = DismissReactiveCompatible.share.appConfigMode.reportDomain
        reqModel.requestServer = DismissReactiveCompatible.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.dict()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: let messageDic = NSMutableDictionary(dictionary: parameterStr)
        let messageDic = NSMutableDictionary(dictionary: parameterStr)
        //: messageDic["uid"] = DismissReactiveCompatible.share.loginUserMode.userID
        messageDic[(const_charmUrl.replacingOccurrences(of: "sun", with: "u"))] = DismissReactiveCompatible.share.loginUserMode.userID
        //: dict["c"] = messageDic /// 事件详细内容
        dict["c"] = messageDic /// 事件详细内容
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.searchUpload(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func searchUpload(model: ProcessingThen, completion _: @escaping FinishBlock) {
        //: let serverUrl = GJ.buildServerUrl(model: model)
        let serverUrl = const_backRateStr.chophouse(model: model)

        //: let token = NSDate.getCurrentTimeStamp()
        let token = NSDate.commonExpress()

        //: let request = NSMutableURLRequest()
        let request = NSMutableURLRequest()
        //: request.httpMethod = "POST"
        request.httpMethod = (k_temporaryData.replacingOccurrences(of: "recent", with: "T"))
        //: request.url = NSURL(string: serverUrl) as URL?
        request.url = NSURL(string: serverUrl) as URL?
        //: request.timeoutInterval = 30
        request.timeoutInterval = 30
//        request.setValue("keep-alive", forHTTPHeaderField: "Connection")
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //: request.setValue(token, forHTTPHeaderField: "Token")
        request.setValue(token, forHTTPHeaderField: (String(notiSequenceData.suffix(5))))

        //: let key = token.appendingFormat("%@", TokenSaltStr)
        let key = token.appendingFormat("%@", appSkipName)
        //: let bodyString = self.getJSONStringFromDictionary(model.params as NSDictionary)
        let bodyString = self.usedWeek(model.params as NSDictionary)
        //: let encryStr = bodyString.encrypt(withKey: key)
        let encryStr = bodyString.model(key)
        //: request.httpBody = encryStr?.data(using: .utf8)
        request.httpBody = encryStr?.data(using: .utf8)
        //: let session = URLSession.shared
        let session = URLSession.shared
        //: let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
        let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
            //: if error != nil {
            if error != nil {
                //: print(error ?? "")
                //: } else {
            } else {
                //: let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                if let responseModel = JSONDeserializer<GrantTransformable>.deserializeFrom(json: jsonStr as String?) {
                    //: print(responseModel)
                }
            }
        }
        //: datatask.resume()
        datatask.resume()
    }

    //: func getJSONStringFromDictionary(_ dictionary: NSDictionary) -> String {
    func usedWeek(_ dictionary: NSDictionary) -> String {
        //: if !JSONSerialization.isValidJSONObject(dictionary) {
        if !JSONSerialization.isValidJSONObject(dictionary) {
            //: printLog(message: "无法解析出JSON字符串")
            printLog(message: (String(showTransferBusyName) + main_flagPadLaunchName))
            //: return String()
            return String()
        }
        //: let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        //: let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        //: return JSONString! as String
        return JSONString! as String
    }
}

//: extension UploadRecordManage {
extension InjuryThen {
    /// 获取上报字典信息
    //: private func getUploadInfoDict() -> [String: Any] {
    private func dict() -> [String: Any] {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["plat"] = "ios" /// 客户端平台
        dict[(mainSendOverMessage.replacingOccurrences(of: "min", with: "t"))] = (const_specialUrl.replacingOccurrences(of: "lite", with: "io")) /// 客户端平台
        //: dict["packageId"] = PackageID /// 分包号
        dict[(String(constFatherFormat) + String(constTingData))] = userLengthValue /// 分包号
        //: dict["v"] = AppNetVersion /// 客户端版本
        dict["v"] = userCountData /// 客户端版本
        //: dict["t"] = NSDate.getCurrentTimeStamp() /// 事件发生的时间
        dict["t"] = NSDate.commonExpress() /// 事件发生的时间
        //: dict["channel"] = PackageID /// 渠道代号,ios默认和packageId 相同
        dict[(String(appTwoTitle) + String(user_dateName))] = userLengthValue /// 渠道代号,ios默认和packageId 相同
        //: dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        dict[(show_outlineName.replacingOccurrences(of: "op", with: "e"))] = (userDescriptionContent.replacingOccurrences(of: "personal", with: "st")) /// 上报类型(stat埋点上报、pfm性能指标)
        //: return dict
        return dict
    }
}
