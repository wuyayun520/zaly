
//: Declare String Begin

/*: " customElem.data is error" :*/
fileprivate let kRushKey:String = " cusblow background positive"
fileprivate let constFireUrl:String = "lem.dawell passage lower"
fileprivate let kWelcomeKey:String = "tapp"
fileprivate let dataPlantText:String = "area final ok instance is "

/*: "extra" :*/
fileprivate let k_shirtName:[Character] = ["e","x","t","r","a"]

/*: "opType" :*/
fileprivate let k_muscleEnjoyMessage:[Character] = ["o"]
fileprivate let constExplainMsg:[Character] = ["p","T","y","p","e"]

/*: "startLive" :*/
fileprivate let appBoneValue:String = "stalicense"
fileprivate let app_mentionTitle:String = "remaining"

/*: "floatingScreen" :*/
fileprivate let constConEffUrl:[UInt8] = [0xb3,0xb9,0xbc,0xae,0xc1,0xb6,0xbb,0xb4,0xa0,0xb0,0xbf,0xb2,0xb2,0xbb]

fileprivate func formationClearly(mp num: UInt8) -> UInt8 {
    let value = Int(num) + 179
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mute" :*/
fileprivate let kHoweverFormat:String = "MUTE"

/*: "uid" :*/
fileprivate let appStackId:String = "UID"

/*: "expireAt" :*/
fileprivate let kDynamicsFormat:[Character] = ["e","x","p","i","r","e","A","t"]

/*: "unmute" :*/
fileprivate let kDetailedKey:[Character] = ["u"]
fileprivate let mainAlongWritingUrl:String = "nmusalte"

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let app_strikeId:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","G","i"]
fileprivate let constFileId:String = "ftMsgfort progress ear"

/*: "gift" :*/
fileprivate let constAboutPath:String = "gifhere"

/*: "imgPreview" :*/
fileprivate let mainMentionConMmMsg:String = "imgPcontinue corrupt two"

/*: "name" :*/
fileprivate let noti_burstFormat:String = "naofficial"

/*: "num" :*/
fileprivate let appSignalData:[Character] = ["n","u","m"]

/*: "mfBean" :*/
fileprivate let const_replaceValue:[UInt8] = [0xe7,0xe0,0xbc,0xdf,0xdb,0xe8]

fileprivate func serverBring(gift num: UInt8) -> UInt8 {
    let value = Int(num) - 122
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let const_bucketStr:String = "MF:Livticket district"
fileprivate let kRegularMessage:String = "eChatPsay both he feature name"
fileprivate let dataMasterMessage:String = "rizeMsgeven cycle head supposed"

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let notiEnterValue:[Character] = ["<","a","t",">","@","[","\\","S","\\","s","]","+","?","<","/","a","t",">"]

/*: "加入弹幕房间" :*/
fileprivate let app_detailedFormat:String = "\u{52a0}入弹幕房间"

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let kQuestSelectedValue:[UInt8] = [0x72,0x65,0x74,0x61,0x6c,0x20,0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x65,0x73,0x61,0x65,0x6c,0x50,0x20,0x2e,0x6d,0x6f,0x6f,0x72,0x20,0x74,0x61,0x68,0x63,0x20,0x65,0x68,0x74,0x20,0x72,0x65,0x74,0x6e,0x65,0x20,0x6f,0x74,0x20,0x64,0x65,0x6c,0x69,0x61,0x46]

/*: "live/sendMsg" :*/
fileprivate let data_runStr:[Character] = ["l","i","v","e","/","s","e","n","d"]
fileprivate let notiRenderId:String = "Msgone i scenario restriction"

/*: "groupId" :*/
fileprivate let app_goingFormat:String = "groupIdplus plus marketing level"

/*: "message" :*/
fileprivate let dataAppropriateText:[Character] = ["m","e","s","s","a","g"]
fileprivate let const_enrollKey:String = "direct"

/*: "toUid" :*/
fileprivate let showGrayUrl:[Character] = ["t","o","U","i","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TotalensitySpillDecisionMakerDanmuManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingDanmuManagerDelegate: NSObject {
protocol RegularManagerDelegate: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func choice(Msg: AfterHandyJSON)
    /// 礼物动效
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func oldByMsg(Msg: AfterHandyJSON)

    //: func func__actionUserNewModel(pushUid: String?)
    func array(pushUid: String?)

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?)
    func disassembleUid(nickName: String, atUid: String?)
    // 用户进入房间
    //: func func__userLogin()
    func humiliation()
    // 用户退出房间
    //: func func__userLogout()
    func opend()
}

//: class TalkingDanmuManager: NSObject {
class TotalensitySpillDecisionMakerDanmuManager: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数
    //: private static var _instance: TalkingDanmuManager?
    private static var _instance: TotalensitySpillDecisionMakerDanmuManager? // singleton
    //: open weak var delegate: TalkingDanmuManagerDelegate?
    open weak var delegate: RegularManagerDelegate?

    //: override private init() {}
    override private init() {}
    //: class func shared() -> TalkingDanmuManager {
    class func reader() -> TotalensitySpillDecisionMakerDanmuManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingDanmuManager()
            _instance = TotalensitySpillDecisionMakerDanmuManager()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingDanmuManager {
extension TotalensitySpillDecisionMakerDanmuManager {
    /// 公告消息
    //: func showAnnouncementMsg(str: String) {
    func proclamationCon(str: String) {
        //: var model = TalkingLiveRoomDanmuModel()
        var model = AfterHandyJSON()
        //: var msgInfo = TalkingDanmuMsgInfo()
        var msgInfo = SolarModelType()
        //: msgInfo.messageType = 1
        msgInfo.messageType = 1 /// (公告算是特殊的文本消息)
        //: msgInfo.content = str
        msgInfo.content = str
        //: model.msgInfo = msgInfo
        model.msgInfo = msgInfo
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = FirThen()
        //: model = celldata.showAnnouncementMsg(model: model)
        model = celldata.roundClosedModel(model: model)
        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.choice(Msg: model)
    }

    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg: V2TIMMessage
    //: func onRecvDanmuNewMsg(msg: V2TIMMessage) {
    func notCommon(msg: V2TIMMessage) {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(kRushKey.prefix(4)) + "tomE" + String(constFireUrl.prefix(6)) + kWelcomeKey.replacingOccurrences(of: "app", with: "a") + String(dataPlantText.suffix(4)) + "error"))
            //: return
            return
        }
        //: let jsonData: Data = extra.data(using: .utf8)!
        let jsonData: Data = extra.data(using: .utf8)!
        //: let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        //: let extraDic = dict?["extra"] as? [String: Any]
        let extraDic = dict?[(String(k_shirtName))] as? [String: Any]
        //: let ext = msg.customElem.extension
        let ext = msg.customElem.extension

        //: if let opType = extraDic?["opType"], opType as? String == "startLive" {
        if let opType = extraDic?[(String(k_muscleEnjoyMessage) + String(constExplainMsg))], opType as? String == (appBoneValue.replacingOccurrences(of: "license", with: "r") + "tLiv" + app_mentionTitle.replacingOccurrences(of: "remaining", with: "e")) {
            //: NotificationCenter.default.post(name: LIVE_RECIVE_STARTLIVE_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: show_dismissId, object: nil)
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "floatingScreen" { // 飘屏
        } else if let opType = extraDic?[(String(k_muscleEnjoyMessage) + String(constExplainMsg))], opType as? String == String(bytes: constConEffUrl.map{formationClearly(mp: $0)}, encoding: .utf8)! { // 飘屏
            //: if let dict = extraDic?["floatingScreen"] {
            if let dict = extraDic?[String(bytes: constConEffUrl.map{formationClearly(mp: $0)}, encoding: .utf8)!] {
                //: NotificationCenter.default.post(name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION, object: nil, userInfo: ["floatingScreen": dict])
                NotificationCenter.default.post(name: showSenseId, object: nil, userInfo: [String(bytes: constConEffUrl.map{formationClearly(mp: $0)}, encoding: .utf8)!: dict])
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "mute" { // 禁言
        } else if let opType = extraDic?[(String(k_muscleEnjoyMessage) + String(constExplainMsg))], opType as? String == (kHoweverFormat.lowercased()) { // 禁言
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(appStackId.lowercased())] as? Int {
                //: if DismissReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                if DismissReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                    //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                    ManagerPushListener.nowPanel().liveRoomModel.muteExpireAt = extraDic?[(String(kDynamicsFormat))] as? Int ?? 0
                }
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "unmute" { // 解禁
        } else if let opType = extraDic?[(String(k_muscleEnjoyMessage) + String(constExplainMsg))], opType as? String == (String(kDetailedKey) + mainAlongWritingUrl.replacingOccurrences(of: "salt", with: "t")) { // 解禁
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(appStackId.lowercased())] as? Int {
                //: if DismissReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                if DismissReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                    //: if DismissReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                    if DismissReactiveCompatible.share.loginUserMode.userID == "\(uid)" {
                        //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = 0
                        ManagerPushListener.nowPanel().liveRoomModel.muteExpireAt = 0
                    }
                }
            }
            //: return
            return
        }

        //: if var model = TalkingLiveRoomDanmuModel.deserialize(from: extraDic as? Dictionary) {
        if var model = AfterHandyJSON.deserialize(from: extraDic as? Dictionary) {
            //: model.MsgExtension = msg.customElem.extension
            model.MsgExtension = msg.customElem.extension

            //: if model.msgInfo?.messageType == 3, model.MsgExtension == "MF:LiveChatGiftMsg" {
            if model.msgInfo?.messageType == 3, model.MsgExtension == (String(app_strikeId) + String(constFileId.prefix(5))) {
                //: let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                let dic: Dictionary? = extraDic?[(constAboutPath.replacingOccurrences(of: "here", with: "t"))] as? [String: Any]
                //: if dic == nil {
                if dic == nil {
                    //: return
                    return
                }
                //: model.gift?.fromUid = model.user?.uid ?? 0
                model.gift?.fromUid = model.user?.uid ?? 0
                //: model.gift?.fromNickname = model.user?.nickname ?? ""
                model.gift?.fromNickname = model.user?.nickname ?? ""
                //: model.gift?.fromHeadPic = model.user?.headPic ?? ""
                model.gift?.fromHeadPic = model.user?.headPic ?? ""
                //: model.gift?.pid = Int(dic?["id"] as! String)
                model.gift?.pid = Int(dic?["id"] as! String)
                //: model.gift?.giftPic = dic?["imgPreview"] as? String ?? ""
                model.gift?.giftPic = dic?[(String(mainMentionConMmMsg.prefix(4)) + "review")] as? String ?? ""
                //: model.gift?.pname = dic?["name"] as! String
                model.gift?.pname = dic?[(noti_burstFormat.replacingOccurrences(of: "official", with: "me"))] as! String
                //: if model.gift?.animationTimes ?? 0 <= 0 {
                if model.gift?.animationTimes ?? 0 <= 0 {
                    //: model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                    model.gift?.animationTimes = dic?[(String(appSignalData))] as? Int ?? 0
                }

                //: if TalkingLiveManager.shared().liveRoomModel.roomId.count > 0 {
                if ManagerPushListener.nowPanel().liveRoomModel.roomId.count > 0 { // 直播间弹幕礼物(包含男性用户)
                    //: if TalkingLiveManager.shared().config.isSmallMode {
                    if ManagerPushListener.nowPanel().config.isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        WeddingReactiveCompatible.shared.wantOf(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.oldByMsg(Msg: model)
                    }
                }

                //: let mfBean = model.msgInfo?.mfBean
                let mfBean = model.msgInfo?.mfBean
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                NotificationCenter.default.post(name: k_succeedUrl, object: nil, userInfo: [String(bytes: const_replaceValue.map{serverBring(gift: $0)}, encoding: .utf8)!: mfBean ?? 0.0])

                //: if model.gift?.giftPic.count ?? 0 > 0 {
                if model.gift?.giftPic.count ?? 0 > 0 {
                    //: if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain) {
                    if let newStr = model.gift?.giftPic.replacingOccurrences(of: userValueTitle.until6decrypt(), with: showReasonContent) {
                        //: URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                        URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                            //: DispatchQueue.main.async {
                            DispatchQueue.main.async {
                                //: guard let data = data, error == nil, let image = UIImage(data: data) else {
                                guard let data = data, error == nil, let image = UIImage(data: data) else {
                                    //: self.setLiveRoomDammuCellData(danmuModel: model)
                                    self.withdraw(danmuModel: model)
                                    //: return
                                    return
                                }
                                //: model.gift?.giftImg = image
                                model.gift?.giftImg = image
                                //: self.setLiveRoomDammuCellData(danmuModel: model)
                                self.withdraw(danmuModel: model)
                            }
                            //: }.resume()
                        }.resume()
                    }
                }
                //: return
                return
            }
            //: if DismissReactiveCompatible.share.appStatus == AppSkinStatus.special.rawValue, model.MsgExtension == "MF:LiveChatPrizeMsg" {
            if DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.special.rawValue, model.MsgExtension == (String(const_bucketStr.prefix(6)) + String(kRegularMessage.prefix(6)) + String(dataMasterMessage.prefix(7))) {
                //: return
                return
            }

            //: setLiveRoomDammuCellData(danmuModel: model)
            withdraw(danmuModel: model)
        }
    }

    //: private func setLiveRoomDammuCellData(danmuModel: TalkingLiveRoomDanmuModel) {
    private func withdraw(danmuModel: AfterHandyJSON) {
        //: var model = danmuModel
        var model = danmuModel
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = FirThen()
        //: model = celldata.caculateMsgHeight(model: model)
        model = celldata.belowFunCur(model: model)
        //: celldata.actionUserBlock = { [weak self] atUid in
        celldata.actionUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.delegate?.func__actionUserNewModel(pushUid: atUid)
            self.delegate?.array(pushUid: atUid)
        }
        //: celldata.longUserBlock = { [weak self] atUid in
        celldata.longUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: var uid = String(model.user?.uid ?? 0)
            var uid = String(model.user?.uid ?? 0)
            //: var name = model.user?.nickname ?? ""
            var name = model.user?.nickname ?? ""
            //: if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != DismissReactiveCompatible.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
            if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != DismissReactiveCompatible.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
                //: uid = atUid!
                uid = atUid!
                //: let text = model.msgInfo?.content ?? ""
                let text = model.msgInfo?.content ?? ""
                //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
                let regex = try! NSRegularExpression(pattern: (String(notiEnterValue)), options: [])
                //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                //: let matchRange = result.first?.range
                let matchRange = result.first?.range
                //: if matchRange?.length ?? 0 > 10 {
                if matchRange?.length ?? 0 > 10 {
                    //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    let subStr = String.reminiscence(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    //: name = subStr
                    name = subStr
                }
            }

            //: self.delegate?.func__longTouchUserNewModel(nickName: name, atUid: uid)
            self.delegate?.disassembleUid(nickName: name, atUid: uid)
        }

        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.choice(Msg: model)
    }
}

//: extension TalkingDanmuManager {
extension TotalensitySpillDecisionMakerDanmuManager {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func every() {
        //: if TalkingDanmuManager._instance != nil {
        if TotalensitySpillDecisionMakerDanmuManager._instance != nil {
            //: TalkingDanmuManager._instance = nil
            TotalensitySpillDecisionMakerDanmuManager._instance = nil
        }
    }

    /// 加入直播弹幕
    //: class func joinLiveRoomDanmu(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func feedbackCompletion(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
        V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
            //: printLog(message: "加入弹幕房间")
            printLog(message: (app_detailedFormat))
            //: if announcementMsg.count > 0 {
            if announcementMsg.count > 0 {
                //: TalkingDanmuManager.shared().showAnnouncementMsg(str: announcementMsg)
                TotalensitySpillDecisionMakerDanmuManager.reader().proclamationCon(str: announcementMsg)
            }
            //: completion?(true)
            completion?(true)

            //: } fail: { _, _ in
        } fail: { _, _ in
            //: if TalkingDanmuManager.shared().maxJoinRoom == 1 {
            if TotalensitySpillDecisionMakerDanmuManager.reader().maxJoinRoom == 1 {
                //: TalkingDanmuManager.shared().maxJoinRoom = 0
                TotalensitySpillDecisionMakerDanmuManager.reader().maxJoinRoom = 0
                //: joinLiveRoomDanmu(groupId: groupId, announcementMsg: "")
                feedbackCompletion(groupId: groupId, announcementMsg: "")
                //: } else {
            } else {
                //: TalkingDanmuManager.shared().func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                TotalensitySpillDecisionMakerDanmuManager.reader().enablece(showMsg: String(bytes: kQuestSelectedValue.reversed(), encoding: .utf8)!.localized)
            }
            //: completion?(false)
            completion?(false)
        }
    }

    /// 退出群聊弹幕
    //: class func qiutGroupDanmu(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func masterExist(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
            //: completion?(true)
            completion?(true)
            //: }, fail: { _, _ in
        }, fail: { _, _ in
            //: completion?(false)
            completion?(false)
            //: })
        })
    }
}

// MARK: - 发送接口

//: extension TalkingDanmuManager {
extension TotalensitySpillDecisionMakerDanmuManager {
    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func uploadToTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func dimension(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "live/sendMsg"
        reqModel.requestPath = (String(data_runStr) + String(notiRenderId.prefix(3)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(app_goingFormat.prefix(7)))] = groupId
        //: dict["message"] = message
        dict[(String(dataAppropriateText) + const_enrollKey.replacingOccurrences(of: "direct", with: "e"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(showGrayUrl))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}
