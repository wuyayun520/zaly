
//: Declare String Begin

/*: "uid" :*/
fileprivate let notiDealMsg:[Character] = ["u","i","d"]

/*: "logId" :*/
fileprivate let kLanguageData:String = "logIdsince sort relate am forth"

/*: "fee" :*/
fileprivate let k_remArtId:String = "FEE"

/*: "prompt" :*/
fileprivate let const_reliefManKey:[Character] = ["p","r","o","m","p"]
fileprivate let constWritingData:String = "customer"

/*: "points" :*/
fileprivate let noti_storyTitle:String = "P"
fileprivate let userPlyMessage:String = "oicommons"

/*: "isRandomVCPush" :*/
fileprivate let notiTheStr:String = "broadcast inform muscle windowisRa"
fileprivate let const_shirtStr:String = "VCPushchar text remain upper"

/*: "recievedDate" :*/
fileprivate let constAlongName:String = "rcommitiev"

/*: "duration" :*/
fileprivate let app_yourPath:String = "duratearly"
fileprivate let dataThreeConditionValue:String = "art"

/*: "toUid" :*/
fileprivate let app_missingText:[Character] = ["t","o","U","i","d"]

/*: "fromUid" :*/
fileprivate let const_viaName:[Character] = ["f","r"]
fileprivate let main_tingValue:String = "flag expected far skinomUid"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IceChatModel.swift
//  AbroadTalking
//
//  Created by young on 2022/11/8.
//

//: import UIKit
import UIKit

//: let VIDEO_1v1_CALL_TIMEOUT = 60.0
let constSystemKey = 60.0 // 拨打方超时时间
//: let VIDEO_1v1_RECIEVED_CALL_TIMEOUT = 60.0
let data_replacePath = 60.0 // 接听方超时时间

// MARK: - 自定义model，处理音视频通话

//: class TalkingVideoChatModel {
class IceChatModel {
    //: var isCaller = false
    var isCaller = false // 是不是通话的发起方
    //: var iUid = ""                // 发起方userId
    var iUid = "" // 发起方userId
    //: var iNickName: String?
    var iNickName: String? // 发起方昵称
    //: var iHeadPic: String?
    var iHeadPic: String? // 发起方头像

    //: var pairUid = ""             // 接收方userId
    var pairUid = "" // 接收方userId
    //: var pairNickName = ""        // 接收方昵称
    var pairNickName = "" // 接收方昵称
    //: var pairHeadPic = ""         // 接收方头像
    var pairHeadPic = "" // 接收方头像
    //: var pairSex = ""             // 接收方性别
    var pairSex = "" // 接收方性别
    //: var pairAge = 0
    var pairAge = 0 // 接收方年龄
    //: var pairBirthday = ""        // 接收方生日
    var pairBirthday = "" // 接收方生日
    //: var videoUrl = ""            // 对方视频地址
    var videoUrl = "" // 对方视频地址
    //: var cover = ""               // 视频封面
    var cover = "" // 视频封面
    //: var location = ""            // 用户活跃国家
    var location = "" // 用户活跃国家
    //: var fee = 0
    var fee = 0 // 女性价格
    //: var feeTips = ""             // 弹窗费用备注内容
    var feeTips = "" // 弹窗费用备注内容
    //: var logId = 0
    var logId = 0 // 聊天房间Id
    //: var points = ""             // 女性积分收益
    var points = "" // 女性积分收益
    //: var videoStage = VideoChatStage.Waiting
    var videoStage = BankChatStage.Waiting // 视频通话状态
    //: var renderPostion = VideoChatRenderPosition.selfOnBg
    var renderPostion = TelecastingRenderPosition.selfOnBg // 视频渲染画面位置
    //: var resumeTalk = false
    var resumeTalk = false // 是否是重连通话
    //: var recievedReqeustTime: TimeInterval?
    var recievedReqeustTime: TimeInterval? // 接收方时间
    //: var startTime: TimeInterval?
    var startTime: TimeInterval? // 开始时间
    //: var isInfoNow = false
    var isInfoNow = false
    //: var prompt = ""                 // VIP折扣提醒（限女性）
    var prompt = "" // VIP折扣提醒（限女性）
    //: var isRandomVCPush = false
    var isRandomVCPush = false // 是否从随机匹配进行通话

    //: required init() {}
    required init() {}
}

//: extension TalkingVideoChatModel {
extension IceChatModel {
    /// 根据数据，生成音视频通话模型
    /// - Parameters:
    ///   - info: 数据
    ///   - situation: 通话方式
    /// - Returns: 回调
    //: class func getVideoModel(info: [String: Any], situation: VideoChatSituation) -> TalkingVideoChatModel {
    class func partJoin(info: [String: Any], situation: PalletChatSituation) -> IceChatModel {
        //: let model = TalkingVideoChatModel()
        let model = IceChatModel()
        //: model.iUid = DismissReactiveCompatible.share.loginUserMode.userID
        model.iUid = DismissReactiveCompatible.share.loginUserMode.userID
        //: model.iHeadPic = DismissReactiveCompatible.share.loginUserMode.headPic
        model.iHeadPic = DismissReactiveCompatible.share.loginUserMode.headPic
        //: model.iNickName = DismissReactiveCompatible.share.loginUserMode.nickname
        model.iNickName = DismissReactiveCompatible.share.loginUserMode.nickname
        //: let json = JSON(info)
        let json = JSON(info)
        //: model.pairUid = json["uid"].stringValue
        model.pairUid = json[(String(notiDealMsg))].stringValue
        //: model.logId = json["logId"].intValue
        model.logId = json[(String(kLanguageData.prefix(5)))].intValue
        //: model.fee = json["fee"].intValue
        model.fee = json[(k_remArtId.lowercased())].intValue
        //: model.prompt = json["prompt"].stringValue
        model.prompt = json[(String(const_reliefManKey) + constWritingData.replacingOccurrences(of: "customer", with: "t"))].stringValue
        //: model.points = json["points"].stringValue
        model.points = json[(noti_storyTitle.lowercased() + userPlyMessage.replacingOccurrences(of: "common", with: "nt"))].stringValue
        //: model.isRandomVCPush = json["isRandomVCPush"].boolValue
        model.isRandomVCPush = json[(String(notiTheStr.suffix(4)) + "ndom" + String(const_shirtStr.prefix(6)))].boolValue

        //: switch(situation) {
        switch situation {
        //: case .Start:
        case .Start:
            //: model.isCaller = true
            model.isCaller = true
            //: model.videoStage = .Waiting
            model.videoStage = .Waiting

        //: case .Recieved:
        case .Recieved:
            //: model.isCaller = false
            model.isCaller = false
            //: model.videoStage = .Recieved
            model.videoStage = .Recieved
            //: let recievedDate = json["recievedDate"].rawValue as? Date
            let recievedDate = json[(constAlongName.replacingOccurrences(of: "commit", with: "ec") + "edDate")].rawValue as? Date
            //: if recievedDate != nil {
            if recievedDate != nil {
                //: model.recievedReqeustTime = recievedDate?.timeIntervalSince1970
                model.recievedReqeustTime = recievedDate?.timeIntervalSince1970
            }

        //: case .Resume:
        case .Resume:
            //: let duration = json["duration"].intValue
            let duration = json[(app_yourPath.replacingOccurrences(of: "early", with: "io") + dataThreeConditionValue.replacingOccurrences(of: "art", with: "n"))].intValue
            //: let interval = Date().timeIntervalSince1970
            let interval = Date().timeIntervalSince1970
            //: let startTalkTime = floor(interval) - Double(duration)
            let startTalkTime = floor(interval) - Double(duration)
            //: let uid = json["toUid"].stringValue
            let uid = json[(String(app_missingText))].stringValue
            //: let from = json["fromUid"].stringValue
            let from = json[(String(const_viaName) + String(main_tingValue.suffix(5)))].stringValue
            //: model.isInfoNow = true
            model.isInfoNow = true
            //: model.resumeTalk = true
            model.resumeTalk = true
            //: model.startTime = startTalkTime
            model.startTime = startTalkTime
            //: model.isCaller = (model.iUid == from) ? true:false
            model.isCaller = (model.iUid == from) ? true : false
            //: model.pairUid = model.isCaller == true ? uid : from
            model.pairUid = model.isCaller == true ? uid : from
            //: model.videoStage = .Calling
            model.videoStage = .Calling

        //: case .Accept:
        case .Accept:
            //: model.isCaller = false
            model.isCaller = false
            //: model.videoStage = .Calling
            model.videoStage = .Calling

        //: case .Calling:
        case .Calling:
            //: model.isCaller = true
            model.isCaller = true
            //: model.videoStage = .Calling
            model.videoStage = .Calling
        }

        //: return model
        return model
    }

    /// 获取剩余应答时间
    /// - Returns: 时间（秒）
    //: func remainAnswerCallTime() -> TimeInterval {
    func dotTime() -> TimeInterval {
        //: if self.isCaller {
        if self.isCaller {
            //: return 0
            return 0
        }

        //: if self.recievedReqeustTime == nil {
        if self.recievedReqeustTime == nil {
            //: return VIDEO_1v1_RECIEVED_CALL_TIMEOUT
            return data_replacePath
        }

        //: let date = Date()
        let date = Date()
        //: let currentInterval = date.timeIntervalSince1970
        let currentInterval = date.timeIntervalSince1970
        //: let remainTime = self.recievedReqeustTime! + VIDEO_1v1_RECIEVED_CALL_TIMEOUT - currentInterval
        let remainTime = self.recievedReqeustTime! + data_replacePath - currentInterval
        //: return remainTime
        return remainTime
    }
}
