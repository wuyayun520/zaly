
//: Declare String Begin

/*: "msgType" :*/
fileprivate let appEndStr:String = "our system press speaker shiftmsgTyp"
fileprivate let kAliveMessage:[Character] = ["e"]

/*: "audio" :*/
fileprivate let user_observeStr:String = "audfenceo"

/*: "contentType" :*/
fileprivate let mainBondHaveLeastText:String = "better snakecontentT"
fileprivate let dataExposurePath:String = "ycornere"

/*: "AudioMsg" :*/
fileprivate let showPopularName:String = "assert statisticalAudioMsg"

/*: "audioData" :*/
fileprivate let mainCompeteMergeData:String = "AUDIO"

/*: "audioUri" :*/
fileprivate let data_transitionFormat:String = "audioUrhear sweet capable turn"
fileprivate let dataAccountMessage:[Character] = ["i"]

/*: " customElem.data is error" :*/
fileprivate let showEyebrowRegardSystemMsg:String = "cross agree cover eh dot cust"
fileprivate let showMarketingId:[Character] = ["a","t","a"," ","i","s"," ","e","r","r","o","r"]

/*: "extra" :*/
fileprivate let const_missingValue:[Character] = ["e","x","t","r","a"]

/*: "msgInfo" :*/
fileprivate let noti_runnerSupportText:String = "msgInfomonth span zone reader medium"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AcousticPowerThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import Foundation
import Foundation

//: public class AcousticPowerThen: NSObject {
public class AcousticPowerThen: NSObject {
    //: @objc class public func parseTXMessageData(data: Data)-> Dictionary<String, Any> {
    @objc public class func leaveDoingice(data: Data) -> [String: Any] {
        //: let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        //: if dict != nil {
        if dict != nil {
            //: return (dict as! NSDictionary) as! Dictionary<String, Any>
            return (dict as! NSDictionary) as! [String: Any]
        }
        //: return NSDictionary() as! Dictionary<String, Any>
        return NSDictionary() as! [String: Any]
    }
}

//: extension AcousticPowerThen {
extension AcousticPowerThen {
    //: class func getMessageInsertTime() -> Double {
    class func decideTime() -> Double {
        //: var timeStamp: Double = 0
        var timeStamp: Double = 0
        //: let curDate = Date().timeIntervalSince1970
        let curDate = Date().timeIntervalSince1970
        //: let msInterval = floor(curDate * 1000)
        let msInterval = floor(curDate * 1000)
        //: var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime())
        var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime()) // 秒为单位
        //: if deltaTime<1 {
        if deltaTime < 1 {
            //: deltaTime = 0
            deltaTime = 0
        }
        //: timeStamp = msInterval-deltaTime
        timeStamp = msInterval - deltaTime
        //: return timeStamp
        return timeStamp
    }

    //: class func checkVoiceJsonMsg(msginfo: [String: JSON]) -> Bool {
    class func bassMsginfo(msginfo: [String: JSON]) -> Bool {
        //: let msgType = msginfo["msgType"]?.stringValue ?? ""
        let msgType = msginfo[(String(appEndStr.suffix(6)) + String(kAliveMessage))]?.stringValue ?? ""
        //: if msgType == "audio" {
        if msgType == (user_observeStr.replacingOccurrences(of: "fence", with: "i")) {
            //: return true
            return true
        }
        //: let contentType = msginfo["contentType"]?.stringValue ?? ""
        let contentType = msginfo[(String(mainBondHaveLeastText.suffix(8)) + dataExposurePath.replacingOccurrences(of: "corner", with: "p"))]?.stringValue ?? ""
        //: if contentType == "AudioMsg" {
        if contentType == (String(showPopularName.suffix(8))) {
            //: return true
            return true
        }
        //: let audioData = msginfo["audioData"]?.stringValue ?? ""
        let audioData = msginfo[(mainCompeteMergeData.lowercased() + "Data")]?.stringValue ?? ""
        //: if  audioData.isEmptyString == false {
        if audioData.isEmptyString == false {
            //: return true
            return true
        }

        //: let audioUri = msginfo["audioUri"]?.stringValue ?? ""
        let audioUri = msginfo[(String(data_transitionFormat.prefix(7)) + String(dataAccountMessage))]?.stringValue ?? ""
        //: if audioUri.isEmptyString == false {
        if audioUri.isEmptyString == false {
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: class func checkVoiceMessage(message: V2TIMMessage) -> Bool {
    class func usedEnable(message: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(showEyebrowRegardSystemMsg.suffix(5)) + "omElem.d" + String(showMarketingId)))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(String(const_missingValue))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(noti_runnerSupportText.prefix(7)))]
        //: return checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
        return bassMsginfo(msginfo: msgInfo.dictionaryValue)
    }

    //: @objc class public func checkVoiceMsg(msginfo: [String: Any]) -> Bool {
    @objc public class func thumbIn(msginfo: [String: Any]) -> Bool {
        //: if msginfo.keys.contains("msgType") {
        if msginfo.keys.contains((String(appEndStr.suffix(6)) + String(kAliveMessage))) {
            //: let msgType = msginfo["msgType"] as? String
            let msgType = msginfo[(String(appEndStr.suffix(6)) + String(kAliveMessage))] as? String
            //: if msgType == "audio" {
            if msgType == (user_observeStr.replacingOccurrences(of: "fence", with: "i")) {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("contentType") {
        if msginfo.keys.contains((String(mainBondHaveLeastText.suffix(8)) + dataExposurePath.replacingOccurrences(of: "corner", with: "p"))) {
            //: let contentType = msginfo["contentType"] as? String
            let contentType = msginfo[(String(mainBondHaveLeastText.suffix(8)) + dataExposurePath.replacingOccurrences(of: "corner", with: "p"))] as? String
            //: if contentType == "AudioMsg" {
            if contentType == (String(showPopularName.suffix(8))) {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("audioData") {
        if msginfo.keys.contains((mainCompeteMergeData.lowercased() + "Data")) {
            //: let audioData = msginfo["audioData"] as? String
            let audioData = msginfo[(mainCompeteMergeData.lowercased() + "Data")] as? String
            //: if !audioData!.isEmptyString {
            if !audioData!.isEmptyString {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("audioUri") {
        if msginfo.keys.contains((String(data_transitionFormat.prefix(7)) + String(dataAccountMessage))) {
            //: let audioUri = msginfo["audioUri"] as? String
            let audioUri = msginfo[(String(data_transitionFormat.prefix(7)) + String(dataAccountMessage))] as? String
            //: if !audioUri!.isEmptyString {
            if !audioUri!.isEmptyString {
                //: return true
                return true
            }
        }
        //: return false
        return false
    }
}
