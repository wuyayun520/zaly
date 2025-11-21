
//: Declare String Begin

/*: "unarchive failure in init" :*/
fileprivate let mainRatingUrl:[Character] = ["u","n","a","r","c","h","i","v","e"," ","f","a","i","l","u","r","e"," ","i","n"," ","i","n"]
fileprivate let user_stagePath:[Character] = ["i","t"]

/*: "App" :*/
fileprivate let userBirdId:String = "install transfer usedApp"

/*: "privateChatEffect%@" :*/
fileprivate let const_doorMessage:[Character] = ["p","r","i","v","a","t","e"]
fileprivate let userProgressName:[Character] = ["C","h"]
fileprivate let mainLatPath:String = "execute sibling particle keep automaticatEff"

/*: "extra" :*/
fileprivate let appInputUrl:[Character] = ["e","x","t","r","a"]

/*: "user" :*/
fileprivate let data_successfulMsg:[Character] = ["u","s","e","r"]

/*: "gift" :*/
fileprivate let show_allowCountryPath:[Character] = ["g","i","f","t"]

/*: "fromUid" :*/
fileprivate let userAlbumUrl:[Character] = ["f","r","o","m","U"]
fileprivate let showPrivacyKey:[Character] = ["i","d"]

/*: "fromNickname" :*/
fileprivate let kYourName:[Character] = ["f","r","o","m","N","i","c","k","n","a","m","e"]

/*: "name" :*/
fileprivate let constWorldVersionUrl:String = "naminform"

/*: "fromHeadPic" :*/
fileprivate let data_minTitle:String = "frowhen"
fileprivate let app_markStopUrl:String = "HeadPicdoor mp refer"

/*: "icon" :*/
fileprivate let show_capturePath:String = "icocombine"

/*: "pid" :*/
fileprivate let mainMistStr:String = "PID"

/*: "num" :*/
fileprivate let kUpperMustText:[Character] = ["n","u","m"]

/*: "pname" :*/
fileprivate let k_priceContent:String = "birthdayame"

/*: "giftPic" :*/
fileprivate let const_betterName:[Character] = ["g","i","f","t","P"]
fileprivate let appShManagerStr:String = "IC"

/*: "comboNum" :*/
fileprivate let mainAfterValue:[Character] = ["c","o","m","b","o","N"]
fileprivate let user_steepLensData:String = "ubottom"

/*: "iosEffect" :*/
fileprivate let k_occurStr:String = "suite"
fileprivate let user_conversionBillId:[Character] = ["o","s","E","f","f","e","c","t"]

/*: "showType" :*/
fileprivate let notiAnotherPath:[Character] = ["s","h","o","w","T","y","p","e"]

/*: "animationTimes" :*/
fileprivate let k_birthMessage:[Character] = ["a","n","i","m","a","t","i"]
fileprivate let mainRipText:String = "obackground"
fileprivate let mainListenerId:String = "Timesyes sort"

/*: "iosVapEffect" :*/
fileprivate let kUsedText:String = "iosVbirth world"
fileprivate let appUponName:[Character] = ["e","c","t"]

/*: "msgInfo" :*/
fileprivate let constLinkTitle:String = "can dialog today sale greatestmsgInfo"

/*: "mfBean" :*/
fileprivate let noti_indexFormat:[UInt8] = [0x6c,0x65,0x41,0x64,0x60,0x6d]

fileprivate func pressUntil(robot num: UInt8) -> UInt8 {
    let value = Int(num) - 255
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "toUser" :*/
fileprivate let constAnalyzeName:String = "public fiscal at bugtoUser"

/*: "uid" :*/
fileprivate let user_cuteName:[Character] = ["u","i","d"]

/*: "giftNum" :*/
fileprivate let data_textureName:[Character] = ["g","i","f","t","N","u"]
fileprivate let const_deliveryValue:[Character] = ["m"]

/*: "nickname" :*/
fileprivate let main_rewardPath:[Character] = ["n","i","c","k","n","a","m","e"]

/*: "Send to %@" :*/
fileprivate let dataZoneRecordValue:[Character] = ["S","e","n","d"]
fileprivate let main_exactlyMsg:String = "remote minute to %@"

/*: "Send to All Numbers" :*/
fileprivate let noti_serveData:[Character] = ["S","e","n","d"," ","t","o"," ","A","l","l"," ","N"]
fileprivate let user_successfulName:[Character] = ["u"]
fileprivate let mainSeeData:String = "mbeeachs"

/*: "headPic" :*/
fileprivate let userQuantityStr:[Character] = ["h","e","a","d","P","i"]
fileprivate let dataHimConnectMessage:String = "cling"

/*: "LiveGift_%@" :*/
fileprivate let const_providerUrl:String = "before toleranceLiv"
fileprivate let showFinancialStr:String = "eGift_%@again unless violation false"

/*: "toUid" :*/
fileprivate let notiForeValue:[Character] = ["t","o","U","i","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WeddingReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

/// 私聊 动效管理  会话id->礼物动效数组  本地存起来

//: import UIKit
import UIKit

//: @objc class AbTalkingPrivateChatAnimatTool: NSObject {
@objc class WeddingReactiveCompatible: NSObject {
    //: var cachDict = NSMutableDictionary(capacity: 0)
    var cachDict = NSMutableDictionary(capacity: 0)

    //: @objc static let shared = AbTalkingPrivateChatAnimatTool()
    @objc static let shared = WeddingReactiveCompatible()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: readAnimatData()
        nagData()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: @objc extension AbTalkingPrivateChatAnimatTool {
@objc extension WeddingReactiveCompatible {
    /// 初始化,读取缓存归档的文件
    //: func readAnimatData() {
    func nagData() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try Data(contentsOf: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                let data = try Data(contentsOf: URL(fileURLWithPath: animto()))
                //: if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                    //: self.cachDict = NSMutableDictionary(dictionary: dict)
                    self.cachDict = NSMutableDictionary(dictionary: dict)
                }
                //: } catch {
            } catch {
                //: printLog(message: "unarchive failure in init")
                printLog(message: (String(mainRatingUrl) + String(user_stagePath)))
            }
            //: } else {
        } else {
            //: let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.getPrivateChatAnimtoFile()) as? NSDictionary
            let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.animto()) as? NSDictionary
            //: if dict != nil {
            if dict != nil {
                //: self.cachDict = NSMutableDictionary(dictionary: dict!)
                self.cachDict = NSMutableDictionary(dictionary: dict!)
            }
        }
    }

    /// 存储缓存
    //: func saveAnimatDataToFile() {
    func outMode() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                //: try data.write(to: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                try data.write(to: URL(fileURLWithPath: animto()))
                //: } catch {
            } catch {
                //: printLog(message: error)
                printLog(message: error)
            }

            //: } else {
        } else {
            //: NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.getPrivateChatAnimtoFile())
            NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.animto())
        }
    }

    //: func getPrivateChatAnimtoFile() -> String {
    func animto() -> String {
        //: let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appPath = (documentFilePath as NSString).appendingPathComponent("App")
        let appPath = (documentFilePath as NSString).appendingPathComponent((String(userBirdId.suffix(3))))

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appPath) == false {
        if fm.fileExists(atPath: appPath) == false {
            //: try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
        }

        //: let name = String(format: "privateChatEffect%@", DismissReactiveCompatible.share.loginUserMode.userID)
        let name = String(format: (String(const_doorMessage) + String(userProgressName) + String(mainLatPath.suffix(5)) + "ect%@"), DismissReactiveCompatible.share.loginUserMode.userID)
        //: let filePath = (appPath as NSString).appendingPathComponent(name)
        let filePath = (appPath as NSString).appendingPathComponent(name)
        //: return filePath
        return filePath
    }

    /// 根据会话获取需要播放的礼物动效数组,同时会删除
    //: func getConverCacheGiftAnimat(tagetId: String) -> NSMutableArray {
    func the(tagetId: String) -> NSMutableArray {
        //: let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        //: let modelArray = NSMutableArray(capacity: 0)
        let modelArray = NSMutableArray(capacity: 0)
        //: if data != nil {
        if data != nil {
            //: for dict in data! {
            for dict in data! {
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<RoughnessMeasurable>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                    //: modelArray.add(giftModel)
                    modelArray.add(giftModel)
                }
            }
            //: self.cachDict.removeObject(forKey: tagetId)
            self.cachDict.removeObject(forKey: tagetId)
        }
        //: self.saveAnimatDataToFile()
        self.outMode()
        //: return modelArray
        return modelArray
    }

    /// 删除会话,同步删除缓存
    //: func removeConversionAnimat(targetID: String) {
    func availableId(targetID: String) {
        //: if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
        if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
            //: self.cachDict.removeObject(forKey: targetID)
            self.cachDict.removeObject(forKey: targetID)
            //: self.saveAnimatDataToFile()
            self.outMode()
        }
    }

    /// 收到礼物消息处理
    //: func disposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func execute(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(String(appInputUrl))] as? [String: Any]
            //: let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            let user: NSDictionary? = giftMessageDic[(String(data_successfulMsg))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["id"] as! CVarArg)
            let targetId = String(format: "%@", user?["id"] as! CVarArg)

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(show_allowCountryPath))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<RevenueTransformable>.deserializeFrom(dict: extraDict![(String(show_allowCountryPath))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(userAlbumUrl) + String(showPrivacyKey))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(kYourName))] = user?[(constWorldVersionUrl.replacingOccurrences(of: "inform", with: "e"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(data_minTitle.replacingOccurrences(of: "when", with: "m") + String(app_markStopUrl.prefix(7)))] = user?[(show_capturePath.replacingOccurrences(of: "combine", with: "n"))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(mainMistStr.lowercased())] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(String(kUpperMustText))] = (roomGiftModel.giftNum)
                        //: dictM["pname"] = roomGiftModel.name
                        dictM[(k_priceContent.replacingOccurrences(of: "birthday", with: "pn"))] = roomGiftModel.name
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(const_betterName) + appShManagerStr.lowercased())] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(mainAfterValue) + user_steepLensData.replacingOccurrences(of: "bottom", with: "m"))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(k_occurStr.replacingOccurrences(of: "suite", with: "i") + String(user_conversionBillId))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(notiAnotherPath))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(k_birthMessage) + mainRipText.replacingOccurrences(of: "background", with: "n") + String(mainListenerId.prefix(5)))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<RoughnessMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
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
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(userAlbumUrl) + String(showPrivacyKey))] = targetId
                    //: dictM["fromNickname"] = user?["name"]
                    dictM[(String(kYourName))] = user?[(constWorldVersionUrl.replacingOccurrences(of: "inform", with: "e"))]
                    //: dictM["fromHeadPic"] = user?["icon"]
                    dictM[(data_minTitle.replacingOccurrences(of: "when", with: "m") + String(app_markStopUrl.prefix(7)))] = user?[(show_capturePath.replacingOccurrences(of: "combine", with: "n"))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(mainMistStr.lowercased())] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(String(kUpperMustText))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = roomGiftModel.name
                    dictM[(k_priceContent.replacingOccurrences(of: "birthday", with: "pn"))] = roomGiftModel.name
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(const_betterName) + appShManagerStr.lowercased())] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(mainAfterValue) + user_steepLensData.replacingOccurrences(of: "bottom", with: "m"))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(k_occurStr.replacingOccurrences(of: "suite", with: "i") + String(user_conversionBillId))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(kUsedText.prefix(4)) + "apEff" + String(appUponName))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(notiAnotherPath))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(k_birthMessage) + mainRipText.replacingOccurrences(of: "background", with: "n") + String(mainListenerId.prefix(5)))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(k_birthMessage) + mainRipText.replacingOccurrences(of: "background", with: "n") + String(mainListenerId.prefix(5)))] = dictM[(String(kUpperMustText))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<RoughnessMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                //: guard let currentVC = self.currentViewController() else { return }
                guard let currentVC = self.exitSchedule() else { return }

                // 直播收到礼物，积分更改
                //: if TalkingLiveManager.shared().isLive {
                if ManagerPushListener.nowPanel().isLive {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(constLinkTitle.suffix(7)))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: noti_indexFormat.map{pressUntil(robot: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: k_succeedUrl, object: nil, userInfo: [String(bytes: noti_indexFormat.map{pressUntil(robot: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }
                // 当前处于该对话页 添加到当前动画队列里
                //: if let videoVC = currentVC as? TalkingVideoChatViewController {
                if let videoVC = currentVC as? VisualCommunicationViewDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if DismissReactiveCompatible.share.loginUserMode.userID != targetId,
                    if DismissReactiveCompatible.share.loginUserMode.userID != targetId,
                       //: videoVC.chatModel?.pairUid == targetId
                       videoVC.chatModel?.pairUid == targetId
                    {
                        //: videoVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        videoVC.shArr(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let voiceVC = currentVC as? TalkingVoiceChatViewController {
                } else if let voiceVC = currentVC as? TrailerRecognizerDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if DismissReactiveCompatible.share.loginUserMode.userID != targetId,
                    if DismissReactiveCompatible.share.loginUserMode.userID != targetId,
                       //: voiceVC.chatModel?.pairUid == targetId
                       voiceVC.chatModel?.pairUid == targetId
                    {
                        //: voiceVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        voiceVC.rangeResolution(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let chatVC = currentVC as? TalkingPrivateChatController {
                } else if let chatVC = currentVC as? SmallControllerDelegate {
                    //: if chatVC.getChatVCTargetId() == targetId {
                    if chatVC.inmateGetTarget() == targetId {
                        //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                        chatVC.diskArr(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    /// 直播中 半屏私聊收到个人私聊礼物
                    //: } else if currentVC.isKind(of: TalkingLiveBeautifyViewController.self) {
                } else if currentVC.isKind(of: WritingViewDelegate.self) {
                    //: for vc in currentVC.children {
                    for vc in currentVC.children {
                        //: if vc.isKind(of: TalkingPrivateChatController.self) {
                        if vc.isKind(of: SmallControllerDelegate.self) {
                            //: let chatVC = vc as! TalkingPrivateChatController
                            let chatVC = vc as! SmallControllerDelegate
                            //: if chatVC.getChatVCTargetId() == targetId {
                            if chatVC.inmateGetTarget() == targetId {
                                //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                                chatVC.diskArr(giftArr: tempGiftModel as! [Any])
                                //: return
                                return
                            }
                        }
                    }
                }

                // 不是该会话 或者 不处于会话页  即使通话也是处于最小化, 则若是礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[targetId] = giftArray
                self.cachDict[targetId] = giftArray
                //: self.saveAnimatDataToFile()
                self.outMode()
            }
        }
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func performName(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(String(appInputUrl))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(String(data_successfulMsg))] as? NSDictionary
            //: let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            let touser: NSDictionary? = extraDict?[(String(constAnalyzeName.suffix(6)))] as? NSDictionary
            //: let targetId = user?["uid"] as? String
            let targetId = user?[(String(user_cuteName))] as? String

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(show_allowCountryPath))) == false {
                //: return
                return
            }
            //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if var roomGiftModel = JSONDeserializer<RevenueTransformable>.deserializeFrom(dict: extraDict![(String(show_allowCountryPath))] as? [String: Any], designatedPath: nil) {
                //: let dic = extraDict?["gift"] as? [String: Any]
                let dic = extraDict?[(String(show_allowCountryPath))] as? [String: Any]
                //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                roomGiftModel.giftNum = dic?[(String(data_textureName) + String(const_deliveryValue))] as? Int ?? 0
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(userAlbumUrl) + String(showPrivacyKey))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(kYourName))] = user?[(constWorldVersionUrl.replacingOccurrences(of: "inform", with: "e"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(data_minTitle.replacingOccurrences(of: "when", with: "m") + String(app_markStopUrl.prefix(7)))] = user?[(show_capturePath.replacingOccurrences(of: "combine", with: "n"))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(mainMistStr.lowercased())] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(String(kUpperMustText))] = (roomGiftModel.giftNum)
                        //: let str = touser?["nickname"] as? String ?? ""
                        let str = touser?[(String(main_rewardPath))] as? String ?? ""
                        //: dictM["pname"] = "Send to %@".localizedArguments(str)
                        dictM[(k_priceContent.replacingOccurrences(of: "birthday", with: "pn"))] = (String(dataZoneRecordValue) + String(main_exactlyMsg.suffix(6))).unitedStates(str)
                        //: if touser == nil {
                        if touser == nil {
                            //: dictM["pname"] = "Send to All Numbers".localized
                            dictM[(k_priceContent.replacingOccurrences(of: "birthday", with: "pn"))] = (String(noti_serveData) + String(user_successfulName) + mainSeeData.replacingOccurrences(of: "each", with: "r")).localized
                        }
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(const_betterName) + appShManagerStr.lowercased())] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(mainAfterValue) + user_steepLensData.replacingOccurrences(of: "bottom", with: "m"))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(k_occurStr.replacingOccurrences(of: "suite", with: "i") + String(user_conversionBillId))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(notiAnotherPath))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(k_birthMessage) + mainRipText.replacingOccurrences(of: "background", with: "n") + String(mainListenerId.prefix(5)))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<RoughnessMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
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
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(userAlbumUrl) + String(showPrivacyKey))] = targetId
                    //: dictM["fromNickname"] = user?["nickname"]
                    dictM[(String(kYourName))] = user?[(String(main_rewardPath))]
                    //: dictM["fromHeadPic"] = user?["headPic"]
                    dictM[(data_minTitle.replacingOccurrences(of: "when", with: "m") + String(app_markStopUrl.prefix(7)))] = user?[(String(userQuantityStr) + dataHimConnectMessage.replacingOccurrences(of: "cling", with: "c"))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(mainMistStr.lowercased())] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(String(kUpperMustText))] = (roomGiftModel.giftNum)
                    // 显示送给谁
                    //: let str = touser?["nickname"] as? String ?? ""
                    let str = touser?[(String(main_rewardPath))] as? String ?? ""
                    //: dictM["pname"] = "Send to %@".localizedArguments(str)
                    dictM[(k_priceContent.replacingOccurrences(of: "birthday", with: "pn"))] = (String(dataZoneRecordValue) + String(main_exactlyMsg.suffix(6))).unitedStates(str)
                    //: if touser == nil {
                    if touser == nil {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(k_priceContent.replacingOccurrences(of: "birthday", with: "pn"))] = (String(noti_serveData) + String(user_successfulName) + mainSeeData.replacingOccurrences(of: "each", with: "r")).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(const_betterName) + appShManagerStr.lowercased())] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(mainAfterValue) + user_steepLensData.replacingOccurrences(of: "bottom", with: "m"))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(k_occurStr.replacingOccurrences(of: "suite", with: "i") + String(user_conversionBillId))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(kUsedText.prefix(4)) + "apEff" + String(appUponName))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(notiAnotherPath))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(k_birthMessage) + mainRipText.replacingOccurrences(of: "background", with: "n") + String(mainListenerId.prefix(5)))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(k_birthMessage) + mainRipText.replacingOccurrences(of: "background", with: "n") + String(mainListenerId.prefix(5)))] = dictM[(String(kUpperMustText))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<RoughnessMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                // 直播在聊天室收到礼物，积分更改
                //: let touid = touser?["uid"] as? Int
                let touid = touser?[(String(user_cuteName))] as? Int
                //: if TalkingLiveManager.shared().isLive, DismissReactiveCompatible.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                if ManagerPushListener.nowPanel().isLive, DismissReactiveCompatible.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(constLinkTitle.suffix(7)))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: noti_indexFormat.map{pressUntil(robot: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: k_succeedUrl, object: nil, userInfo: [String(bytes: noti_indexFormat.map{pressUntil(robot: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }

                // 当前处于该对话页 添加到当前动画队列里
                //: if PushThen.share.func__getCurrentActivityVC()!.isKind(of: TalkingGroupChatController.self) {
                if PushThen.share.doingGoing()!.isKind(of: SmallChatController.self) {
                    //: let chatVC = PushThen.share.func__getCurrentActivityVC() as! TalkingGroupChatController
                    let chatVC = PushThen.share.doingGoing() as! SmallChatController
                    //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                    chatVC.dowry(giftArr: tempGiftModel as! [Any])
                }
            }
        }
    }

    /// 收到 直播/语音房 礼物消息处理
    //: func disposeReceiveLiveRoomGiftMsg(giftMessageDic: NSDictionary) {
    func wantOf(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(String(appInputUrl))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(String(data_successfulMsg))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            let targetId = String(format: "%@", user?[(String(user_cuteName))] as! CVarArg)
            //: var toUid = ""
            var toUid = ""
            //: if TalkingLiveManager.shared().isLive {
            if ManagerPushListener.nowPanel().isLive {
                //: toUid = String(format: "LiveGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(const_providerUrl.suffix(3)) + String(showFinancialStr.prefix(8))), extraDict?[(String(notiForeValue))] as? CVarArg ?? "")
            }
            //: let gift = extraDict?["gift"] as? NSDictionary
            let gift = extraDict?[(String(show_allowCountryPath))] as? NSDictionary

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(show_allowCountryPath))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<RevenueTransformable>.deserializeFrom(dict: extraDict![(String(show_allowCountryPath))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                //: let dictM = NSMutableDictionary(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = targetId
                dictM[(String(userAlbumUrl) + String(showPrivacyKey))] = targetId
                //: dictM["fromNickname"] = user?["nickname"]
                dictM[(String(kYourName))] = user?[(String(main_rewardPath))]
                //: dictM["fromHeadPic"] = user?["headPic"]
                dictM[(data_minTitle.replacingOccurrences(of: "when", with: "m") + String(app_markStopUrl.prefix(7)))] = user?[(String(userQuantityStr) + dataHimConnectMessage.replacingOccurrences(of: "cling", with: "c"))]

                //: dictM["pid"] = gift?["id"] as? String
                dictM[(mainMistStr.lowercased())] = gift?["id"] as? String
                //: dictM["num"] = gift?["num"] as? String
                dictM[(String(kUpperMustText))] = gift?[(String(kUpperMustText))] as? String
                //: dictM["pname"] = roomGiftModel.name
                dictM[(k_priceContent.replacingOccurrences(of: "birthday", with: "pn"))] = roomGiftModel.name
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(const_betterName) + appShManagerStr.lowercased())] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(mainAfterValue) + user_steepLensData.replacingOccurrences(of: "bottom", with: "m"))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(k_occurStr.replacingOccurrences(of: "suite", with: "i") + String(user_conversionBillId))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(kUsedText.prefix(4)) + "apEff" + String(appUponName))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(notiAnotherPath))] = (roomGiftModel.showType)
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(k_birthMessage) + mainRipText.replacingOccurrences(of: "background", with: "n") + String(mainListenerId.prefix(5)))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(k_birthMessage) + mainRipText.replacingOccurrences(of: "background", with: "n") + String(mainListenerId.prefix(5)))] = dictM[(String(kUpperMustText))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<RoughnessMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempGiftModel.add(giftModel)
                    tempGiftModel.add(giftModel)
                    //: tempDictM.add(dictM)
                    tempDictM.add(dictM)
                }

                // 礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: if giftArray?.count ?? 0 >= 10 {
                if giftArray?.count ?? 0 >= 10 {
                    //: giftArray?.removeFirstObject()
                    giftArray?.removeFirstObject()
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[toUid] = giftArray
                self.cachDict[toUid] = giftArray
                //: self.saveAnimatDataToFile()
                self.outMode()
            }
        }
    }
}
