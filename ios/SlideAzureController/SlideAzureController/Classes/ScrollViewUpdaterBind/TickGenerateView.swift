
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_ripPanelCapableMsg:[UInt8] = [0x65,0x62,0x65,0x78,0x24,0x6f,0x63,0x68,0x69,0x7e,0x36,0x25,0x2c,0x64,0x6d,0x7f,0x2c,0x62,0x63,0x78,0x2c,0x6e,0x69,0x69,0x62,0x2c,0x65,0x61,0x7c,0x60,0x69,0x61,0x69,0x62,0x78,0x69,0x68]

private func cellMovement(shape num: UInt8) -> UInt8 {
    return num ^ 12
}

/*: "gift" :*/
fileprivate let user_recognizeTitle:String = "lengthft"

/*: "iosEffect" :*/
fileprivate let const_ionFormat:[Character] = ["i","o","s","E","f","f","e","c","t"]

/*: "iosEmperorEffect" :*/
fileprivate let const_safetyStr:[Character] = ["i","o","s","E","m","p","e","r","o"]
fileprivate let user_pageOuterFormat:String = "club flat yellow contactrEffect"

/*: "fromUid" :*/
fileprivate let showSmoothMsg:[Character] = ["f","r"]
fileprivate let noti_bringPromptPath:String = "trigger little unite family smartomUid"

/*: "fromNickname" :*/
fileprivate let showLiteralText:String = "instance telephone written inside signfromN"

/*: "fromHeadPic" :*/
fileprivate let user_visualName:String = "spot"
fileprivate let userWhenYetUrl:String = "romHestatistical art fire"

/*: "pid" :*/
fileprivate let constMayContent:[Character] = ["p","i","d"]

/*: "num" :*/
fileprivate let noti_animalMsg:[Character] = ["n","u","m"]

/*: "pname" :*/
fileprivate let userArrowUrl:[Character] = ["p","n","a","m","e"]

/*: "name" :*/
fileprivate let k_containStr:String = "effectme"

/*: "giftPic" :*/
fileprivate let appStretchId:String = "hand portrait least rewardgiftP"
fileprivate let noti_stateUrl:String = "stemc"

/*: "imgPreview" :*/
fileprivate let kExploreName:[Character] = ["i","m","g","P","r","e","v","i","e"]
fileprivate let constLookId:String = "research"

/*: "comboNum" :*/
fileprivate let user_propertyMessage:String = "con"
fileprivate let appDistrictVersionTransformMessage:[Character] = ["o","m","b","o","N","u","m"]

/*: "showType" :*/
fileprivate let app_anyoneLiteFormat:[Character] = ["s","h","o","w","T","y","p","e"]

/*: "animationTimes" :*/
fileprivate let app_ratingNutName:[Character] = ["a","n","i","m","a","t","i","o","n","T","i","m","e"]
fileprivate let const_restrictionName:String = "rush"

/*: "iosVapEffect" :*/
fileprivate let dataExploreFormat:String = "iosVaptwo bar rich constraint accompany"
fileprivate let constAccountingMessage:[Character] = ["t"]

/*: "giftNum" :*/
fileprivate let k_clipText:String = "giftNumcurrently lie"

/*: "Send to %@" :*/
fileprivate let constRemoveMessage:[Character] = ["S","e","n","d"," "]
fileprivate let notiAgainstText:String = "to %@guard builder"

/*: "all" :*/
fileprivate let noti_guidanceBeyondText:String = "ALL"

/*: "Send to All Numbers" :*/
fileprivate let const_sitStr:String = "Send tstyle product device have side"
fileprivate let data_libraryId:[Character] = ["o"," ","A","l","l"," ","N","u","m","b","e","r","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TickGenerateView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

/// 私聊 礼物动效层
//: class TalkingPrivateChatAnimatView: UIView {
class TickGenerateView: UIView {
    //: var animatArray: NSMutableArray =  NSMutableArray.init(capacity: 0)
    var animatArray: NSMutableArray = .init(capacity: 0)
    //: var isPlayAnimat = false
    var isPlayAnimat = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.scripted()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_ripPanelCapableMsg.map{cellMovement(shape: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: public lazy var giftAnimatView: TalkingGiftAnimatView = {
    public lazy var giftAnimatView: BrushDoingThen = {
        //: let view = TalkingGiftAnimatView.init()
        let view = BrushDoingThen()
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatAnimatView {
extension TickGenerateView {
    /// 自己私聊送礼,动效处理

    //: func dealGiftAnimatData(dict: Dictionary<String, Any>) {
    func addressReloadDict(dict: [String: Any]) {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return
            return
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(user_recognizeTitle.replacingOccurrences(of: "length", with: "gi"))] as? [String: Any]
        //: if giftInfo == nil || giftInfo?.keys.contains("iosEffect") == false {
        if giftInfo == nil || giftInfo?.keys.contains((String(const_ionFormat))) == false {
            //: return
            return
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(const_safetyStr) + String(user_pageOuterFormat.suffix(7)))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(const_safetyStr) + String(user_pageOuterFormat.suffix(7)))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(const_ionFormat))] ?? "", at: 0)
            //: let tempArr = NSMutableArray.init()
            let tempArr = NSMutableArray()

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = DismissReactiveCompatible.share.loginUserMode.userID
                dictM[(String(showSmoothMsg) + String(noti_bringPromptPath.suffix(5)))] = DismissReactiveCompatible.share.loginUserMode.userID
                //: dictM["fromNickname"] = DismissReactiveCompatible.share.loginUserMode.nickname
                dictM[(String(showLiteralText.suffix(5)) + "ickname")] = DismissReactiveCompatible.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = DismissReactiveCompatible.share.loginUserMode.headPic
                dictM[(user_visualName.replacingOccurrences(of: "spot", with: "f") + String(userWhenYetUrl.prefix(5)) + "adPic")] = DismissReactiveCompatible.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(String(constMayContent))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(String(noti_animalMsg))] = giftInfo?[(String(noti_animalMsg))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(String(userArrowUrl))] = giftInfo?[(k_containStr.replacingOccurrences(of: "effect", with: "na"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(appStretchId.suffix(5)) + noti_stateUrl.replacingOccurrences(of: "stem", with: "i"))] = giftInfo?[(String(kExploreName) + constLookId.replacingOccurrences(of: "research", with: "w"))]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(user_propertyMessage.replacingOccurrences(of: "con", with: "c") + String(appDistrictVersionTransformMessage))] = giftInfo?[(user_propertyMessage.replacingOccurrences(of: "con", with: "c") + String(appDistrictVersionTransformMessage))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(const_ionFormat))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(app_anyoneLiteFormat))] = giftInfo?[(String(app_anyoneLiteFormat))]
                //: dictM["animationTimes"] = "1"
                dictM[(String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<RoughnessMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempArr.add(giftModel)
                    tempArr.add(giftModel)
                }
            }
            // 循环播放次数
            //: var animationTimes = 1
            var animationTimes = 1
            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))) != false {
                //: animationTimes = giftInfo!["animationTimes"] as! Int
                animationTimes = giftInfo![(String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))] as! Int
                //: } else {
            } else {
                //: animationTimes = giftInfo!["num"] as! Int
                animationTimes = giftInfo![(String(noti_animalMsg))] as! Int
            }
            //: let tempGiftArr = tempArr
            let tempGiftArr = tempArr
            //: for _ in 0..<animationTimes {
            for _ in 0 ..< animationTimes {
                //: self.animatArray.addObjects(from: tempGiftArr as! [Any])
                self.animatArray.addObjects(from: tempGiftArr as! [Any])
            }

            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = DismissReactiveCompatible.share.loginUserMode.userID
            dictM[(String(showSmoothMsg) + String(noti_bringPromptPath.suffix(5)))] = DismissReactiveCompatible.share.loginUserMode.userID
            //: dictM["fromNickname"] = DismissReactiveCompatible.share.loginUserMode.nickname
            dictM[(String(showLiteralText.suffix(5)) + "ickname")] = DismissReactiveCompatible.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = DismissReactiveCompatible.share.loginUserMode.headPic
            dictM[(user_visualName.replacingOccurrences(of: "spot", with: "f") + String(userWhenYetUrl.prefix(5)) + "adPic")] = DismissReactiveCompatible.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(String(constMayContent))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(String(noti_animalMsg))] = giftInfo?[(String(noti_animalMsg))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(String(userArrowUrl))] = giftInfo?[(k_containStr.replacingOccurrences(of: "effect", with: "na"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(appStretchId.suffix(5)) + noti_stateUrl.replacingOccurrences(of: "stem", with: "i"))] = giftInfo?[(String(kExploreName) + constLookId.replacingOccurrences(of: "research", with: "w"))]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(user_propertyMessage.replacingOccurrences(of: "con", with: "c") + String(appDistrictVersionTransformMessage))] = giftInfo?[(user_propertyMessage.replacingOccurrences(of: "con", with: "c") + String(appDistrictVersionTransformMessage))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(const_ionFormat))] = giftInfo?[(String(const_ionFormat))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(app_anyoneLiteFormat))] = giftInfo?[(String(app_anyoneLiteFormat))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(dataExploreFormat.prefix(6)) + "Effec" + String(constAccountingMessage))] = giftInfo?[(String(dataExploreFormat.prefix(6)) + "Effec" + String(constAccountingMessage))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))] = giftInfo?[(String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))] = dictM[(String(noti_animalMsg))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<RoughnessMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: self.animatArray.add(giftModel)
                self.animatArray.add(giftModel)
            }
        }
        //: judgePlay()
        everyPhoto()
    }

    /// 视频通话送礼,模型转换
    //: func changeGiftToModel(dict: Dictionary<String, Any>) ->TalkingGiftMsgAnimatModel? {
    func variation(dict: [String: Any]) -> RoughnessMeasurable? {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return nil
            return nil
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(user_recognizeTitle.replacingOccurrences(of: "length", with: "gi"))] as? [String: Any]
        //: if giftInfo == nil {
        if giftInfo == nil {
            //: return nil
            return nil
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(const_safetyStr) + String(user_pageOuterFormat.suffix(7)))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(const_safetyStr) + String(user_pageOuterFormat.suffix(7)))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(const_ionFormat))] ?? "", at: 0)

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = DismissReactiveCompatible.share.loginUserMode.userID
                dictM[(String(showSmoothMsg) + String(noti_bringPromptPath.suffix(5)))] = DismissReactiveCompatible.share.loginUserMode.userID
                //: dictM["fromNickname"] = DismissReactiveCompatible.share.loginUserMode.nickname
                dictM[(String(showLiteralText.suffix(5)) + "ickname")] = DismissReactiveCompatible.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = DismissReactiveCompatible.share.loginUserMode.headPic
                dictM[(user_visualName.replacingOccurrences(of: "spot", with: "f") + String(userWhenYetUrl.prefix(5)) + "adPic")] = DismissReactiveCompatible.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(String(constMayContent))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(String(noti_animalMsg))] = giftInfo?[(String(noti_animalMsg))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(String(userArrowUrl))] = giftInfo?[(k_containStr.replacingOccurrences(of: "effect", with: "na"))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(appStretchId.suffix(5)) + noti_stateUrl.replacingOccurrences(of: "stem", with: "i"))] = giftInfo?[(String(kExploreName) + constLookId.replacingOccurrences(of: "research", with: "w"))]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(user_propertyMessage.replacingOccurrences(of: "con", with: "c") + String(appDistrictVersionTransformMessage))] = giftInfo?[(user_propertyMessage.replacingOccurrences(of: "con", with: "c") + String(appDistrictVersionTransformMessage))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(const_ionFormat))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(app_anyoneLiteFormat))] = giftInfo?[(String(app_anyoneLiteFormat))]
                //: dictM["animationTimes"] = "1"
                dictM[(String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<RoughnessMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = DismissReactiveCompatible.share.loginUserMode.userID
            dictM[(String(showSmoothMsg) + String(noti_bringPromptPath.suffix(5)))] = DismissReactiveCompatible.share.loginUserMode.userID
            //: dictM["fromNickname"] = DismissReactiveCompatible.share.loginUserMode.nickname
            dictM[(String(showLiteralText.suffix(5)) + "ickname")] = DismissReactiveCompatible.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = DismissReactiveCompatible.share.loginUserMode.headPic
            dictM[(user_visualName.replacingOccurrences(of: "spot", with: "f") + String(userWhenYetUrl.prefix(5)) + "adPic")] = DismissReactiveCompatible.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(String(constMayContent))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(String(noti_animalMsg))] = giftInfo?[(String(noti_animalMsg))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(String(userArrowUrl))] = giftInfo?[(k_containStr.replacingOccurrences(of: "effect", with: "na"))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(appStretchId.suffix(5)) + noti_stateUrl.replacingOccurrences(of: "stem", with: "i"))] = giftInfo?[(String(kExploreName) + constLookId.replacingOccurrences(of: "research", with: "w"))]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(user_propertyMessage.replacingOccurrences(of: "con", with: "c") + String(appDistrictVersionTransformMessage))] = giftInfo?[(user_propertyMessage.replacingOccurrences(of: "con", with: "c") + String(appDistrictVersionTransformMessage))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(const_ionFormat))] = giftInfo?[(String(const_ionFormat))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(app_anyoneLiteFormat))] = giftInfo?[(String(app_anyoneLiteFormat))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(dataExploreFormat.prefix(6)) + "Effec" + String(constAccountingMessage))] = giftInfo?[(String(dataExploreFormat.prefix(6)) + "Effec" + String(constAccountingMessage))]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))] = giftInfo?[(String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))] = dictM[(String(noti_animalMsg))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<RoughnessMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: return giftModel
                return giftModel
            }
        }
        //: return nil
        return nil
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel)->TalkingGiftMsgAnimatModel? {
    func dispose(giftMessageDic: [String: Any], model: SparkTransformable) -> RoughnessMeasurable? {
        //: if  giftMessageDic.keys.contains("gift") == false {
        if giftMessageDic.keys.contains((user_recognizeTitle.replacingOccurrences(of: "length", with: "gi"))) == false {
            //: return nil
            return nil
        }
        //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? Dictionary<String, Any>, designatedPath: nil) {
        if var roomGiftModel = JSONDeserializer<RevenueTransformable>.deserializeFrom(dict: giftMessageDic[(user_recognizeTitle.replacingOccurrences(of: "length", with: "gi"))] as? [String: Any], designatedPath: nil) {
            //: let dic =  giftMessageDic["gift"] as? Dictionary<String, Any>
            let dic = giftMessageDic[(user_recognizeTitle.replacingOccurrences(of: "length", with: "gi"))] as? [String: Any]
            //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            roomGiftModel.giftNum = dic?[(String(k_clipText.prefix(7)))] as? Int ?? 0
            //: var effect = roomGiftModel.iosEffect
            var effect = roomGiftModel.iosEffect
            //: if effect.count == 0 {
            if effect.count == 0 {
                //: effect = roomGiftModel.effect
                effect = roomGiftModel.effect
            }

            //: let tempGiftModel = NSMutableArray.init()
            let tempGiftModel = NSMutableArray()
            //: let tempDictM = NSMutableArray.init()
            let tempDictM = NSMutableArray()

            // 帝王礼物特效
            //: if  roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
            if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                // 开头动效
                //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                //: let tempArr = NSMutableArray.init()
                let tempArr = NSMutableArray()
                //: let tempDicArr = NSMutableArray.init()
                let tempDicArr = NSMutableArray()

                //: for giftStr in giftArr! {
                for giftStr in giftArr! {
                    //: let dictM = NSMutableDictionary.init(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)
                    //: dictM["fromUid"] = DismissReactiveCompatible.share.loginUserMode.userID
                    dictM[(String(showSmoothMsg) + String(noti_bringPromptPath.suffix(5)))] = DismissReactiveCompatible.share.loginUserMode.userID
                    //: dictM["fromNickname"] = DismissReactiveCompatible.share.loginUserMode.nickname
                    dictM[(String(showLiteralText.suffix(5)) + "ickname")] = DismissReactiveCompatible.share.loginUserMode.nickname
                    //: dictM["fromHeadPic"] = DismissReactiveCompatible.share.loginUserMode.headPic
                    dictM[(user_visualName.replacingOccurrences(of: "spot", with: "f") + String(userWhenYetUrl.prefix(5)) + "adPic")] = DismissReactiveCompatible.share.loginUserMode.headPic
                    //: dictM["pid"] = "0" // 缓存兼容
                    dictM[(String(constMayContent))] = "0" // 缓存兼容
                    //: dictM["num"] =  (roomGiftModel.giftNum)
                    dictM[(String(noti_animalMsg))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    dictM[(String(userArrowUrl))] = (String(constRemoveMessage) + String(notiAgainstText.prefix(5))).unitedStates(model.nickname)
                    //: if model.uid == "all" {
                    if model.uid == (noti_guidanceBeyondText.lowercased()) {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(String(userArrowUrl))] = (String(const_sitStr.prefix(6)) + String(data_libraryId)).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(appStretchId.suffix(5)) + noti_stateUrl.replacingOccurrences(of: "stem", with: "i"))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(user_propertyMessage.replacingOccurrences(of: "con", with: "c") + String(appDistrictVersionTransformMessage))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = giftStr
                    dictM[(String(const_ionFormat))] = giftStr
                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(app_anyoneLiteFormat))] = (roomGiftModel.showType)
                    //: dictM["animationTimes"] = "1"
                    dictM[(String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))] = "1"

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                    if let giftModel = JSONDeserializer<RoughnessMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: return giftModel
                        return giftModel
                    }
                }
                // 循环播放次数
                //: var animationTimes = 1
                var animationTimes = 1
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: animationTimes = roomGiftModel.animationTimes
                    animationTimes = roomGiftModel.animationTimes
                    //: } else {
                } else {
                    //: animationTimes = roomGiftModel.giftNum
                    animationTimes = roomGiftModel.giftNum
                }
                //: let tempGiftArr = tempArr
                let tempGiftArr = tempArr
                //: for _ in 0..<animationTimes {
                for _ in 0 ..< animationTimes {
                    //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                    tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                    //: tempDictM.addObjects(from: tempDicArr as! [Any])
                    tempDictM.addObjects(from: tempDicArr as! [Any])
                }
                //: } else {
            } else {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = DismissReactiveCompatible.share.loginUserMode.userID
                dictM[(String(showSmoothMsg) + String(noti_bringPromptPath.suffix(5)))] = DismissReactiveCompatible.share.loginUserMode.userID
                //: dictM["fromNickname"] = DismissReactiveCompatible.share.loginUserMode.nickname
                dictM[(String(showLiteralText.suffix(5)) + "ickname")] = DismissReactiveCompatible.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = DismissReactiveCompatible.share.loginUserMode.headPic
                dictM[(user_visualName.replacingOccurrences(of: "spot", with: "f") + String(userWhenYetUrl.prefix(5)) + "adPic")] = DismissReactiveCompatible.share.loginUserMode.headPic

                //: dictM["pid"] = roomGiftModel.giftId
                dictM[(String(constMayContent))] = roomGiftModel.giftId
                //: dictM["num"] =  (roomGiftModel.giftNum)
                dictM[(String(noti_animalMsg))] = (roomGiftModel.giftNum)
                // 显示送给谁
                //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                dictM[(String(userArrowUrl))] = (String(constRemoveMessage) + String(notiAgainstText.prefix(5))).unitedStates(model.nickname)
                //: if model.uid == "all" {
                if model.uid == (noti_guidanceBeyondText.lowercased()) {
                    //: dictM["pname"] = "Send to All Numbers".localized
                    dictM[(String(userArrowUrl))] = (String(const_sitStr.prefix(6)) + String(data_libraryId)).localized
                }
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(appStretchId.suffix(5)) + noti_stateUrl.replacingOccurrences(of: "stem", with: "i"))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(user_propertyMessage.replacingOccurrences(of: "con", with: "c") + String(appDistrictVersionTransformMessage))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(const_ionFormat))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(dataExploreFormat.prefix(6)) + "Effec" + String(constAccountingMessage))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(app_anyoneLiteFormat))] = (roomGiftModel.showType)
                //: if (roomGiftModel.animationTimes > 0) {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(app_ratingNutName) + const_restrictionName.replacingOccurrences(of: "rush", with: "s"))] = dictM[(String(noti_animalMsg))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<RoughnessMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
        }
        //: return nil
        return nil
    }

    /// 收到礼物消息的动效模型(私信收到)
    //: func addGiftAnimatModel(model: TalkingGiftMsgAnimatModel) {
    func structuralism(model: RoughnessMeasurable) {
        //: animatArray.add(model)
        animatArray.add(model)
        //: judgePlay()
        everyPhoto()
    }

    /// 收到礼物消息的动效组(私信收到)
    //: func addGiftAnimatModelArr(modelArr: Array<Any>) {
    func framework(modelArr: [Any]) {
        //: animatArray.addObjects(from: modelArr)
        animatArray.addObjects(from: modelArr)
        //: judgePlay()
        everyPhoto()
    }

    /// 获取剩余的动画队列
    //: func getLeftGiftAnimat() ->NSMutableArray {
    func switcher() -> NSMutableArray {
        //: let data = animatArray
        let data = animatArray
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: return data
        return data
    }

    /// 初始化动画资源(针对通话的显示 最小化 关闭的切换)
    //: func initAnimatData(data: NSMutableArray) {
    func handleVid(data: NSMutableArray) {
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        everyPhoto()
    }

    /// 根据会话id 将对应的缓存动画加进来

    //: func initCachAnimatData(tagetID: String) {
    func thenMakeupId(tagetID: String) {
        //: let data = AbTalkingPrivateChatAnimatTool.shared.getConverCacheGiftAnimat(tagetId: tagetID)
        let data = WeddingReactiveCompatible.shared.the(tagetId: tagetID)
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        everyPhoto()
    }

    /// 判断是否要取数组动效 开始播放
    //: func judgePlay() {
    func everyPhoto() {
        //: if animatArray.count>0 && isPlayAnimat == false {
        if animatArray.count > 0, isPlayAnimat == false {
            //: playNext()
            beautyStatus()
        }
    }

    /// 播放
    //: func playNext() {
    func beautyStatus() {
        //: if animatArray.count > 0 {
        if animatArray.count > 0 {
            //: var index = 0
            var index = 0
            //: animatArray.enumerateObjects { obj, idx, stop in
            animatArray.enumerateObjects { obj, idx, stop in
                // 盲盒礼物\帝王礼物 优先播放
                //: let model: TalkingGiftMsgAnimatModel = obj as! TalkingGiftMsgAnimatModel
                let model: RoughnessMeasurable = obj as! RoughnessMeasurable
                //: if (model.showType == ChatGiftAnimatType.myStery.rawValue || model.showType == ChatGiftAnimatType.king.rawValue) {
                if model.showType == GrantQuickLookable.myStery.rawValue || model.showType == GrantQuickLookable.king.rawValue {
                    //: index = idx
                    index = idx
                    //: stop.pointee = true
                    stop.pointee = true
                }
            }
            //: let giftModel = self.animatArray[index]
            let giftModel = self.animatArray[index]
            //: self.isPlayAnimat = true
            self.isPlayAnimat = true
            //: self.animatArray.removeObject(at: index)
            self.animatArray.removeObject(at: index)
            //: let iscanPlay = self.giftAnimatView.didReceiveMsgModel(msgModel: giftModel)
            let iscanPlay = self.giftAnimatView.discreditAnswer(msgModel: giftModel)
            //: if !iscanPlay {
            if !iscanPlay {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: judgePlay()
                everyPhoto()
            }
        }
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: self.giftAnimatView.contentMode = contentMode
            self.giftAnimatView.contentMode = contentMode
        }
    }
}

//: extension TalkingPrivateChatAnimatView {
extension TickGenerateView {
    // 添加视图
    //: private func setupSubviews() {
    private func scripted() {
        //: self.isUserInteractionEnabled = false
        self.isUserInteractionEnabled = false

        //: self.addSubview(giftAnimatView)
        self.addSubview(giftAnimatView)

        //: giftAnimatView.snp.makeConstraints { make in
        giftAnimatView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: giftAnimatView.animationFinishCallback = { [weak self] obj in
        giftAnimatView.animationFinishCallback = { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isPlayAnimat = false
            self.isPlayAnimat = false
            //: self.playNext()
            self.beautyStatus()
        }

        //: giftAnimatView.finishAnimBlock = { [weak self] success in
        giftAnimatView.finishAnimBlock = { [weak self] success in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !success {
            if !success {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: self.playNext()
                self.beautyStatus()
            }
        }
    }
}
