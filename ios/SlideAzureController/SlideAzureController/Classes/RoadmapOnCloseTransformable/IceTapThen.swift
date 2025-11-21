
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let noti_operateTitle:[UInt8] = [0xd9,0xde,0xd9,0xc4,0x98,0xd3,0xdf,0xd4,0xd5,0xc2,0x8a,0x99,0x90,0xd8,0xd1,0xc3,0x90,0xde,0xdf,0xc4,0x90,0xd2,0xd5,0xd5,0xde,0x90,0xd9,0xdd,0xc0,0xdc,0xd5,0xdd,0xd5,0xde,0xc4,0xd5,0xd4]

private func priceInterval(path num: UInt8) -> UInt8 {
    return num ^ 176
}

/*: "System notification" :*/
fileprivate let kWritePath:String = "Systemhalf minimize advice motivation abs"
fileprivate let user_aboutValue:String = "fisuccessfulat"
fileprivate let constRetMsg:String = "dynamicson"

/*: "http://static. :*/
fileprivate let show_mistMinimumMsg:String = "http:standard advice"
fileprivate let k_commentValue:String = "atwire"
fileprivate let mainTrapText:String = "."

/*: .com/app/img/message/xitong-v2.png" :*/
fileprivate let constForthStr:[UInt8] = [0xcd,0x80,0x8c,0x8e,0xcc,0x82,0x93,0x93,0xcc,0x8a,0x8e,0x84,0xcc,0x8e,0x86,0x90,0x90,0x82,0x84,0x86,0xcc,0x9b,0x8a,0x97,0x8c,0x8d,0x84,0xce,0x95,0xd1,0xcd,0x93,0x8d,0x84]

private func loadUp(volume num: UInt8) -> UInt8 {
    return num ^ 227
}

/*: "Customer Care Center" :*/
fileprivate let show_roundingMsg:String = "Customlook normally success drag"
fileprivate let k_destinationId:String = "category lower business estimatedre Center"

/*: .com/app/img/message/cs.png" :*/
fileprivate let show_databaseStr:[Character] = [".","c","o","m","/","a","p","p","/","i","m","g","/"]
fileprivate let app_unableUrl:[Character] = ["m","e","s","s","a"]
fileprivate let user_mStr:[Character] = ["g","e","/","c","s",".","p","n","g"]

/*: "Public Chat Room" :*/
fileprivate let k_kingdomMsg:[Character] = ["P","u","b","l","i","c"," ","C","h","a"]
fileprivate let app_extendStr:[Character] = ["t"," ","R","o","o","m"]

/*: "icon_chats_pcr" :*/
fileprivate let mainObjectUrl:String = "level repeaticon_c"
fileprivate let const_visitorMessage:String = "hinvisibles"

/*: "New friends" :*/
fileprivate let dataDimensionGeneralUrl:String = "New fritool unit"
fileprivate let appProtectionData:String = "ENDS"

/*: "icon_chats_mm" :*/
fileprivate let showRegularMessage:String = "container tagicon_c"

/*: " customElem.data is error" :*/
fileprivate let data_prepareId:[Character] = [" ","c","u","s","t","o"]
fileprivate let appKeepTillTitle:String = "mElerush calendar again"
fileprivate let appLargeName:String = "double very dominant behavior is e"

/*: "extra" :*/
fileprivate let main_installIconData:String = "EXTRA"

/*: "msgInfo" :*/
fileprivate let noti_enhanceId:String = "collects"
fileprivate let userExampleVideoUrl:[Character] = ["g","I","n","f","o"]

/*: "messageType" :*/
fileprivate let dataLaterText:[Character] = ["m","e","s","s"]
fileprivate let noti_violationId:[Character] = ["a","g","e","T","y","p","e"]

/*: "msgType" :*/
fileprivate let userPrivacyPath:String = "show third easternmsgType"

/*: "tips" :*/
fileprivate let const_anotherData:String = "tiround"

/*: "totalIntimate" :*/
fileprivate let showMenuName:[Character] = ["t","o","t","a","l","I","n","t","i","m","a","t"]
fileprivate let kPlantPath:String = "hello"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IceTapThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/9.
//

//: import UIKit
import UIKit

//: public class TalkingConversationModel: NSObject {
public class IceTapThen: NSObject {
    //: var type: V2TIMConversationType?
    var type: V2TIMConversationType?
    //: var userID = ""         // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    var userID = "" // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    //: var sender = ""         // 消息发送者ID
    var sender = "" // 消息发送者ID
    //: var groupID = ""        // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    var groupID = "" // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    //: var groupType = ""      // 如果会话类型为群聊，groupType 为当前群类型
    var groupType = "" // 如果会话类型为群聊，groupType 为当前群类型
    //: var targetId = ""
    var targetId = ""
    //: var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID
    var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID

    //: var showName = ""
    var showName = ""
    //: var faceUrl = ""
    var faceUrl = ""
    //: var unreadCount: Int = 0
    var unreadCount: Int = 0 // 未读数
    //: var orderKey: Int = 0
    var orderKey: Int = 0 // 排序
    //: var isPinned = false
    var isPinned = false // 是否置顶
    //: var isShowMsgUnread = false
    var isShowMsgUnread = false // 会话中最后一条消息是否未读

    //: var draftText = ""      // 草稿信息
    var draftText = "" // 草稿信息
    //: var draftTimestamp: NSDate?
    var draftTimestamp: NSDate? // 草稿编辑时间，草稿设置的时候自动生成

    //: var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    //: var num = 0
    var num = 0 // 聊天室当前在线人数

    //: var hasTimestamp = false
    var hasTimestamp = false // swift 解包
    //: var timestamp: NSDate?
    var timestamp: NSDate? // 会话中最后一条消息的时间
    //: var listShowMessage: V2TIMMessage?
    var listShowMessage: V2TIMMessage? // 最后一条消息
    //: var gj_userInfo: ExecuteBetterTransformable?
    var gj_userInfo: ExecuteBetterTransformable? // 用户信息
    //: var chatType: TalkingIMChatType = .unDefined
    var chatType: TalkingIMChatType = .unDefined
    //: var listOnlineStatus = 0
    var listOnlineStatus = 0 // 记录是否在线;1=在线,0=不在线（自定义字段）
    //: var isNewUser = false
    var isNewUser = false // 表示是否是新用户（自定义字段）
    //: var ismoreAPAuto = false
    var ismoreAPAuto = false // 更多会话认证
    //: var totalIntimate = 0
    var totalIntimate = 0 // 与当前用户的亲密值
    //: var userStatus    = 1
    var userStatus = 1 // 用户状态  1正常2被禁言3被封号5被拉黑

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: init(conv: V2TIMConversation) {
    init(conv: V2TIMConversation) {
        //: super.init()
        super.init()
        //: self.type = conv.type
        self.type = conv.type
        //: self.userID     = conv.userID ?? ""
        self.userID = conv.userID ?? ""
        //: self.sender     = conv.lastMessage?.sender ?? ""
        self.sender = conv.lastMessage?.sender ?? ""
        //: self.groupID    = conv.groupID ?? ""
        self.groupID = conv.groupID ?? ""
        //: self.groupType  = conv.groupType ?? ""
        self.groupType = conv.groupType ?? ""
        //: self.targetId   = self.userID.count > 0 ? self.userID:self.groupID
        self.targetId = self.userID.count > 0 ? self.userID : self.groupID
        //: self.conversationID = conv.conversationID
        self.conversationID = conv.conversationID
        //: self.showName = conv.showName
        self.showName = conv.showName
        //: self.faceUrl = conv.faceUrl ?? ""
        self.faceUrl = conv.faceUrl ?? ""
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.isPinned = conv.isPinned
        self.isPinned = conv.isPinned
        //: if conv.lastMessage?.timestamp != nil {
        if conv.lastMessage?.timestamp != nil {
            //: self.hasTimestamp = true
            self.hasTimestamp = true
            //: self.timestamp = conv.lastMessage?.timestamp as NSDate?
            self.timestamp = conv.lastMessage?.timestamp as NSDate?
        }
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        //: if conv.type == .C2C {
        if conv.type == .C2C {
            //: self.chatType = .private
            self.chatType = .private
            //: if conv.userID == DepictionThen.getXiaoMiID() {
            if conv.userID == DepictionThen.xiao() {
                //: self.chatType = .system
                self.chatType = .system
                //: } else if conv.userID == DepictionThen.getCustomerServiceID() {
            } else if conv.userID == DepictionThen.noteFamily() {
                //: self.chatType = .service
                self.chatType = .service
            }

            //: } else {
        } else {
            //: self.chatType = .group
            self.chatType = .group
        }
        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.keep(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
            }
        }
        //: if self.listShowMessage != nil {
        if self.listShowMessage != nil {
            //: self.func__updateLastShowMsg()
            self.income()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: noti_operateTitle.map{priceInterval(path: $0)}, encoding: .utf8)!)
    }
}

// MARK: - 获取占位model

//: extension TalkingConversationModel {
extension IceTapThen {
    /// 获取占位model
    /// - Parameter chatType: model类型
    /// - Returns: model
    //: class func getPlaceholderModel(chatType: TalkingIMChatType) -> TalkingConversationModel {
    class func tagFollowing(chatType: TalkingIMChatType) -> IceTapThen {
        //: let model = TalkingConversationModel()
        let model = IceTapThen()
        //: model.chatType = chatType
        model.chatType = chatType
        //: if chatType == .system {
        if chatType == .system { // 系统通知
            //: model.userID = DepictionThen.getXiaoMiID()
            model.userID = DepictionThen.xiao()
            //: model.targetId = DepictionThen.getXiaoMiID()
            model.targetId = DepictionThen.xiao()
            //: model.showName = "System notification".localized
            model.showName = (String(kWritePath.prefix(6)) + " noti" + user_aboutValue.replacingOccurrences(of: "successful", with: "c") + constRetMsg.replacingOccurrences(of: "dynamics", with: "i")).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/xitong-v2.png"
            model.faceUrl = (String(show_mistMinimumMsg.prefix(5)) + "//st" + k_commentValue.replacingOccurrences(of: "wire", with: "ic") + mainTrapText.capitalized) + "\(showReasonContent)" + String(bytes: constForthStr.map{loadUp(volume: $0)}, encoding: .utf8)!

            //: } else if chatType == .service {
        } else if chatType == .service { // 官方客服
            //: model.userID = DepictionThen.getCustomerServiceID()
            model.userID = DepictionThen.noteFamily()
            //: model.targetId = DepictionThen.getCustomerServiceID()
            model.targetId = DepictionThen.noteFamily()
            //: model.showName = "Customer Care Center".localized
            model.showName = (String(show_roundingMsg.prefix(6)) + "er Ca" + String(k_destinationId.suffix(9))).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/cs.png"
            model.faceUrl = (String(show_mistMinimumMsg.prefix(5)) + "//st" + k_commentValue.replacingOccurrences(of: "wire", with: "ic") + mainTrapText.capitalized) + "\(showReasonContent)" + (String(show_databaseStr) + String(app_unableUrl) + String(user_mStr))

            //: } else if chatType == .group {
        } else if chatType == .group { // 公共聊天室
            //: model.showName = "Public Chat Room".localized
            model.showName = (String(k_kingdomMsg) + String(app_extendStr)).localized
            //: model.faceUrl = "icon_chats_pcr"
            model.faceUrl = (String(mainObjectUrl.suffix(6)) + const_visitorMessage.replacingOccurrences(of: "invisible", with: "at") + "_pcr")

            //: } else if chatType == .moreMsg {
        } else if chatType == .moreMsg { // 更多消息
            //: model.showName = "New friends".localized
            model.showName = (String(dataDimensionGeneralUrl.prefix(7)) + appProtectionData.lowercased()).localized
            //: model.faceUrl = "icon_chats_mm"
            model.faceUrl = (String(showRegularMessage.suffix(6)) + "hats_mm")
        }

        //: return model
        return model
    }
}

//: extension TalkingConversationModel {
extension IceTapThen {
    //: func func__updateLastShowMsg() {
    func income() {
        //: if self.type == .C2C {
        if self.type == .C2C {
            //: V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.keep(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
            //: } else {
        } else {
            //: V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.keep(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
        }
    }

    //: func func__checkMsgCanShow(msg: V2TIMMessage) -> Bool {
    func keep(msg: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(data_prepareId) + String(appKeepTillTitle.prefix(4)) + "m.data" + String(appLargeName.suffix(5)) + "rror"))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(main_installIconData.lowercased())]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(noti_enhanceId.replacingOccurrences(of: "collect", with: "m") + String(userExampleVideoUrl))]
        //: var messageType = extraDic["messageType"].intValue
        var messageType = extraDic[(String(dataLaterText) + String(noti_violationId))].intValue
        //: let msgType = msgInfo["msgType"].stringValue
        let msgType = msgInfo[(String(userPrivacyPath.suffix(7)))].stringValue
        //: if messageType == 0 {
        if messageType == 0 {
            //: messageType = msgInfo["messageType"].intValue
            messageType = msgInfo[(String(dataLaterText) + String(noti_violationId))].intValue
        }
        //: if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
        if (!msgType.isEmptyString && msgType == (const_anotherData.replacingOccurrences(of: "round", with: "ps"))) || messageType == 15 || messageType == 17 {
            //: return false
            return false
        }
        //: return true
        return true
    }

    //: func func__updateLastConvModel(conv: V2TIMConversation) {
    func behindOnly(conv: V2TIMConversation) {
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)

        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.keep(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
                //: if conv.lastMessage.timestamp != nil {
                if conv.lastMessage.timestamp != nil {
                    //: self.timestamp = conv.lastMessage.timestamp as NSDate?
                    self.timestamp = conv.lastMessage.timestamp as NSDate?
                    //: self.hasTimestamp = true
                    self.hasTimestamp = true
                }
                //: self.sender = conv.lastMessage.sender
                self.sender = conv.lastMessage.sender
                //: self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                //: self.updateIntimateTool(conv: conv)
                self.southwest(conv: conv)
                //: } else {
            } else {
                //: self.func__updateLastShowMsg()
                self.income()
            }
        }
    }
}

/// 亲密度
//: extension TalkingConversationModel {
extension IceTapThen {
    //: private func updateIntimateTool(conv: V2TIMConversation) {
    private func southwest(conv: V2TIMConversation) {
        /// 新消息会话变更时，获取亲密度
        //: let data = conv.lastMessage!
        let data = conv.lastMessage!
        //: let dic = AcousticPowerThen.parseTXMessageData(data: data.customElem.data)
        let dic = AcousticPowerThen.leaveDoingice(data: data.customElem.data)
        //: let jsonDic = JSON(dic)
        let jsonDic = JSON(dic)
        //: let extra = jsonDic["extra"].dictionary
        let extra = jsonDic[(main_installIconData.lowercased())].dictionary
        //: let msgInfo = extra?["msgInfo"]?.dictionary
        let msgInfo = extra?[(noti_enhanceId.replacingOccurrences(of: "collect", with: "m") + String(userExampleVideoUrl))]?.dictionary
        //: if let totalIntimate = msgInfo?["totalIntimate"]?.int {
        if let totalIntimate = msgInfo?[(String(showMenuName) + kPlantPath.replacingOccurrences(of: "hello", with: "e"))]?.int {
            //: if let model = DBUserInfoManager.cache_getCachedUserInfo(targetId: self.userID) {
            if let model = CutInfoManager.frontId(targetId: self.userID) {
                /// 获取消息为最新时
                //: let time = Int(data.timestamp.timeIntervalSince1970)
                let time = Int(data.timestamp.timeIntervalSince1970)
                //: if time > model.intimateTime {
                if time > model.intimateTime {
                    //: self.totalIntimate = totalIntimate
                    self.totalIntimate = totalIntimate
                    /// 更新
                    //: DBUserInfoManager.cache_updateIntimate(with: userID, intimate: totalIntimate, currTime: time)
                    CutInfoManager.exampleYear(with: userID, intimate: totalIntimate, currTime: time)
                    //: } else {
                } else {
                    //: self.totalIntimate = model.intimate
                    self.totalIntimate = model.intimate
                }
                //: } else {
            } else {
                //: self.totalIntimate = totalIntimate
                self.totalIntimate = totalIntimate
            }
        }
    }
}
