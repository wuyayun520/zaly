
//: Declare String Begin

/*: "className" :*/
fileprivate let showStrikeSupplyPath:[Character] = ["c","l","a","s","s","N","a","m"]
fileprivate let constFormationEnablePath:String = "can"

/*: "nativeClassName" :*/
fileprivate let dataBoxId:String = "narestrictionve"
fileprivate let const_springValue:[Character] = ["C","l","a","s","s","N","a","m","e"]

/*: "effectType" :*/
fileprivate let mainBirdPath:String = "earrowect"
fileprivate let appHappyComputeFormat:String = "price launch stillType"

/*: "gifFile" :*/
fileprivate let mainEffStr:[Character] = ["g"]
fileprivate let userStatUrl:String = "stem of broadcastifFile"

/*: "versions" :*/
fileprivate let userPerceiveContent:[Character] = ["v","e","r","s","i","o","n","s"]

/*: "config" :*/
fileprivate let main_supplyMortalKey:[Character] = ["c","o","n","f","i","g"]

/*: "mainFile" :*/
fileprivate let userInsertExclusiveMsg:String = "mainFisituation access"
fileprivate let main_tickPauseValue:[Character] = ["l","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverMeasurable.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: enum TalkingGiftAnimatType: String {
enum NightContentConvertible: String {
    //: case Gif  = "gif"
    case Gif = "gif"
    //: case Chat = "chatGift"
    case Chat = "chatGift"
}

//: enum GiftAnimatUpdateError: Int {
enum LiberateMirrorPath: Int {
    //: case UnzipFailed  = -1001
    case UnzipFailed = -1001 // 资源 解压失败
    //: case VerifyFailed = -1002
    case VerifyFailed = -1002 // 资源 校验失败
    //: case DownLoadFailed = -1003
    case DownLoadFailed = -1003 // 资源 下载失败
}

//: enum TalkingAnimatType: Int {
enum FirMirrorPath: Int {
    //: case Unknown  = 0
    case Unknown = 0
    //: case Gift = 1
    case Gift = 1 // 礼物动效
}

/// 动效资源的信息封装，对应一个zip资源的config.json

//: struct TalkingGiftAnimatModel: HandyJSON {
struct CoverMeasurable: HandyJSON {
    //: init() {
    init() {}

    //: var className = ""
    var className = ""
    //: var nativeClassName = ""
    var nativeClassName = ""
    //: var effectType = TalkingGiftAnimatType.Gif
    var effectType = NightContentConvertible.Gif /// 加载动效指定的类型
    //: var mainFile = ""
    var mainFile = ""
    //: var effectConfig = Dictionary<String, Any>()
    var effectConfig = [String: Any]()
}

//: extension TalkingGiftAnimatModel {
extension CoverMeasurable {
    //: func setAnimatModek(dic: NSDictionary) -> TalkingGiftAnimatModel {
    func emplace(dic: NSDictionary) -> CoverMeasurable {
        //: var model =  TalkingGiftAnimatModel.init()
        var model = CoverMeasurable()
        //: model.className = dic["className"] as? String ?? ""
        model.className = dic[(String(showStrikeSupplyPath) + constFormationEnablePath.replacingOccurrences(of: "can", with: "e"))] as? String ?? ""
        //: model.nativeClassName = dic["nativeClassName"] as? String ?? ""
        model.nativeClassName = dic[(dataBoxId.replacingOccurrences(of: "restriction", with: "ti") + String(const_springValue))] as? String ?? ""
        //: model.effectType = dic["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
        model.effectType = dic[(mainBirdPath.replacingOccurrences(of: "arrow", with: "ff") + String(appHappyComputeFormat.suffix(4)))] as? NightContentConvertible ?? NightContentConvertible.Gif

        //: if model.effectType == .Gif {
        if model.effectType == .Gif {
            //: model.mainFile = dic["gifFile"] as? String ?? ""
            model.mainFile = dic[(String(mainEffStr) + String(userStatUrl.suffix(6)))] as? String ?? ""
            //: } else {
        } else {
            //: model.mainFile = dic[TalkingGiftAnimatType.Chat.rawValue] as? String ?? ""
            model.mainFile = dic[NightContentConvertible.Chat.rawValue] as? String ?? ""
        }
        //: let versions: Array = dic["versions"] as! Array<Dictionary<String, Any>>
        let versions: Array = dic[(String(userPerceiveContent))] as! [[String: Any]]
        //: if versions.count <= 0 {
        if versions.count <= 0 {
            //: return model
            return model
        }
        //: let match = true
        let match = true
        /*!
         * 遍历versions数组，匹配应用版本，匹配到则使用config数据
         */
        //: for item in versions {
        for item in versions {
            //: model.effectConfig = item["config"] as! [String: Any]
            model.effectConfig = item[(String(main_supplyMortalKey))] as! [String: Any]
        }
        //: if (match) {
        if match {
            //: model.className       = model.effectConfig["className"] as? String ?? ""
            model.className = model.effectConfig[(String(showStrikeSupplyPath) + constFormationEnablePath.replacingOccurrences(of: "can", with: "e"))] as? String ?? ""
            //: model.nativeClassName = model.effectConfig["nativeClassName"] as? String ?? ""
            model.nativeClassName = model.effectConfig[(dataBoxId.replacingOccurrences(of: "restriction", with: "ti") + String(const_springValue))] as? String ?? ""
            //: model.effectType      = model.effectConfig["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
            model.effectType = model.effectConfig[(mainBirdPath.replacingOccurrences(of: "arrow", with: "ff") + String(appHappyComputeFormat.suffix(4)))] as? NightContentConvertible ?? NightContentConvertible.Gif
            //: model.mainFile        = model.effectConfig["mainFile"] as? String ?? ""
            model.mainFile = model.effectConfig[(String(userInsertExclusiveMsg.prefix(6)) + String(main_tickPauseValue))] as? String ?? ""
        }
        //: return model
        return model
    }
}
