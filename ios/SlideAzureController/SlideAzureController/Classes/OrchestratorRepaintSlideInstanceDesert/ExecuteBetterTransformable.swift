
//: Declare String Begin

/*: "toUserInfo" :*/
fileprivate let userSuccessfullyUrl:String = "zone falsetoUser"

/*: "toUid" :*/
fileprivate let app_littleFormat:String = "image admin or sweep materialtoUid"

/*: "nickname" :*/
fileprivate let dataWellUrl:String = "nframeworkck"

/*: "headPic" :*/
fileprivate let show_statusFormat:[Character] = ["h","e","a","d","P","i","c"]

/*: "sex" :*/
fileprivate let mainBassData:[Character] = ["s","e","x"]

/*: "age" :*/
fileprivate let appOutlineFormat:String = "jawe"

/*: "tpAuth" :*/
fileprivate let main_animalFormat:[Character] = ["t","p","A","u","t","h"]

/*: "interest" :*/
fileprivate let userAttractiveValue:[Character] = ["i","n","t","e","r","e","s"]
fileprivate let const_previousName:String = "T"

/*: "picture" :*/
fileprivate let userStreetProblemColorMsg:String = "picelectronic"
fileprivate let userSignalMessage:String = "RE"

/*: "loungePlus" :*/
fileprivate let user_goodKey:String = "lougiveg"
fileprivate let main_fiscalDevelopmentData:[Character] = ["e","P","l","u","s"]

/*: "vipSkinId" :*/
fileprivate let show_onceFormat:String = "vipSkislim constraint break kingdom telephone"
fileprivate let k_canParticleData:String = "nIdburn opposition"

/*: "voicePrice" :*/
fileprivate let appAgentSourceTitle:String = "vosupposedce"
fileprivate let noti_compositionMsg:String = "Pricefemale submit"

/*: "videoPrice" :*/
fileprivate let user_totalValue:String = "portfolio giving mini disable untilvideoP"

/*: "voiceVIPPrice" :*/
fileprivate let user_soundId:[Character] = ["v","o","i","c","e"]
fileprivate let dataMannerName:[Character] = ["V"]
fileprivate let app_bankName:String = "nor literal electronicIPPrice"

/*: "videoVIPPrice" :*/
fileprivate let user_eventContent:String = "vdarkdeo"

/*: "version" :*/
fileprivate let show_domainCalculateStr:[Character] = ["v","e","r","s","i","o"]
fileprivate let kIsolateStr:String = "gravity"

/*: "headPicFrame" :*/
fileprivate let showSupplyColdMsg:[Character] = ["h","e","a","d","P"]
fileprivate let appDistinctiveTitle:String = "icFrameunknown builder"

/*: "signature" :*/
fileprivate let k_shiftRecoverFormat:[Character] = ["s","i","g","n","a","t"]
fileprivate let app_speakerKey:String = "whethere"

/*: "constellation" :*/
fileprivate let user_corruptFormat:String = "constrecommendationlla"
fileprivate let notiNameValue:String = "turnion"

/*: "onlineStatus" :*/
fileprivate let k_executeId:String = "O"
fileprivate let const_impulseUrl:[Character] = ["n","l","i","n","e","S","t","a","t","u","s"]

/*: "isNewUser" :*/
fileprivate let kSaveMsg:[Character] = ["i","s"]
fileprivate let constWantFactStr:[Character] = ["N","e","w","U","s","e","r"]

/*: "isOfficial" :*/
fileprivate let showTodaySumValue:[Character] = ["i","s","O","f","f","i","c"]
fileprivate let show_mergeValue:[Character] = ["i","a","l"]

/*: "userStatus" :*/
fileprivate let showLocalValue:String = "userStinterested let answer somebody recognize"

/*: "remarkInfo" :*/
fileprivate let kRepresentativeKey:String = "reweightar"
fileprivate let mainRejectTitle:String = "kInfomanage info privacy anima dit"

/*: "content" :*/
fileprivate let constRetainFormat:String = "conteyen"
fileprivate let main_cornerText:[Character] = ["t"]

/*: "top" :*/
fileprivate let user_tailTitle:[Character] = ["t","o","p"]

/*: "enableVideoCall" :*/
fileprivate let show_storageMessage:String = "intoa"
fileprivate let k_draftGlassData:[Character] = ["b","l","e","V","i","d","e","o","C","a","l","l"]

/*: "voiceBean" :*/
fileprivate let mainAFirstFormat:[Character] = ["v","o","i","c","e","B","e","a"]
fileprivate let noti_curveTitle:[Character] = ["n"]

/*: "videoBean" :*/
fileprivate let showRunnerConnectionId:String = "better disable assert morevideoBean"

/*: "prompt" :*/
fileprivate let showUsFormat:String = "printrompt"

/*: "matchRate" :*/
fileprivate let mainAccuracyPath:String = "mdynamicsc"
fileprivate let appScienceLimitedName:[Character] = ["h","R","a","t","e"]

/*: "existSess" :*/
fileprivate let mainCurveStr:String = "statisticalist"

/*: "totalIntimate" :*/
fileprivate let data_pleaseEnvironmentText:String = "cityocitya"
fileprivate let const_lovelyId:[Character] = ["l","I","n","t","i","m","a","t","e"]

/*: "isRecharge" :*/
fileprivate let app_standardKey:String = "path volume later competeisRecha"
fileprivate let app_nearbyPath:[Character] = ["r","g","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExecuteBetterTransformable.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/16.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class ExecuteBetterTransformable: NSObject, HandyJSON {
public class ExecuteBetterTransformable: NSObject, HandyJSON {
    //: public var uid: String = ""
    public var uid: String = ""
    //: public var nickname: String = ""
    public var nickname: String = ""
    //: public var age: String = "0"
    public var age: String = "0"
    //: public var headPic: String = ""
    public var headPic: String = ""
    //: public var sex: String = "0"                   // 1 男性 2 女性
    public var sex: String = "0" // 1 男性 2 女性
    //: public var version: String = "0"               // 当前用户版本
    public var version: String = "0" // 当前用户版本

    //: var interest: Array<String> = []
    var interest: [String] = []
    //: var picture: Array<String> = []
    var picture: [String] = []
    //: public var tpAuth: Bool = false
    public var tpAuth: Bool = false // 是否认证
    //: var enableVideoCall = false
    var enableVideoCall = false // 是否展示视频通话按钮，默认否
    //: public var loungePlus: Bool = false
    public var loungePlus: Bool = false // 是否订阅
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤id
    //: var voicePrice: String = ""             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoPrice: String = ""             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var videoVIPPrice: String = ""          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: public var headPicFrame: String = ""    // 头像框
    public var headPicFrame: String = "" // 头像框
    //: var matchRate = 0
    var matchRate = 0 // 匹配度
    //: var signature: String = ""              // 签名
    var signature: String = "" // 签名
    //: var constellation: String = ""          // 星座
    var constellation: String = "" // 星座
    //: var existSess: Bool = false
    var existSess: Bool = false // false表示未建立会话
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 1=在线 0=不在线
    //: var isNewUser = false
    var isNewUser = false // 是否新用户
    //: var isHaveSession = false
    var isHaveSession = false // 是否建立会话（本地自定义字段）
    //: public var isOfficial = false
    public var isOfficial = false // 是否官方账号
    //: var intimate = 0
    var intimate = 0 // 亲密度
    //: var intimateTime = 0
    var intimateTime = 0 // 亲密度保存时间
    //: var readReceiptTime = 0
    var readReceiptTime = 0 // 对方已读消息回执时间戳
    //: var userStatus = 1
    var userStatus = 1 // 用户状态 1正常2被禁言3被封号5被拉黑
    //: var content = ""                        // 置顶内容
    var content = "" // 置顶内容
    //: var top = 2
    var top = 2 // 是否置顶 1：置顶，2：否
    //: var isRecharge = -100
    var isRecharge = -100 // -1：未充值且有首充优惠；0：未充值没有首充优惠；1：已充值过；

    //: public required override init() {}
    override public required init() {}

    //: public class func func__transformedChatinfo(userDic: Dictionary<String, Any>) -> ExecuteBetterTransformable {
    public class func statusLabel(userDic: [String: Any]) -> ExecuteBetterTransformable {
        //: let wrap = ExecuteBetterTransformable.init()
        let wrap = ExecuteBetterTransformable()

        //: if userDic.keys.contains("toUserInfo") {
        if userDic.keys.contains((String(userSuccessfullyUrl.suffix(6)) + "Info")) {
            //: let userInfoDic = userDic["toUserInfo"] as! Dictionary<String, Any>
            let userInfoDic = userDic[(String(userSuccessfullyUrl.suffix(6)) + "Info")] as! [String: Any]
            //: if userInfoDic.keys.contains("toUid") {
            if userInfoDic.keys.contains((String(app_littleFormat.suffix(5)))) {
                //: wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
                wrap.uid = "\(userInfoDic[(String(app_littleFormat.suffix(5)))] as! NSNumber)"
            }
            //: wrap.nickname = userInfoDic["nickname"] as? String ?? ""
            wrap.nickname = userInfoDic[(dataWellUrl.replacingOccurrences(of: "framework", with: "i") + "name")] as? String ?? ""
            //: wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            wrap.headPic = userInfoDic[(String(show_statusFormat))] as? String ?? ""
            //: wrap.sex = userInfoDic["sex"] as? String ?? ""
            wrap.sex = userInfoDic[(String(mainBassData))] as? String ?? ""
            //: wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber.init())"
            wrap.age = "\(userInfoDic[(appOutlineFormat.replacingOccurrences(of: "jaw", with: "ag"))] as? NSNumber ?? NSNumber())"
            //: wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            wrap.tpAuth = userInfoDic[(String(main_animalFormat))] as? Bool ?? false
            //: wrap.interest = userInfoDic["interest"] as? Array<String> ?? [""]
            wrap.interest = userInfoDic[(String(userAttractiveValue) + const_previousName.lowercased())] as? [String] ?? [""]
            //: wrap.picture = userInfoDic["picture"] as? Array<String> ?? [""]
            wrap.picture = userInfoDic[(userStreetProblemColorMsg.replacingOccurrences(of: "electronic", with: "tu") + userSignalMessage.lowercased())] as? [String] ?? [""]
            //: wrap.loungePlus = userInfoDic["loungePlus"] as? Bool ?? false
            wrap.loungePlus = userInfoDic[(user_goodKey.replacingOccurrences(of: "give", with: "n") + String(main_fiscalDevelopmentData))] as? Bool ?? false
            //: wrap.vipSkinId = userInfoDic["vipSkinId"] as? Int ?? 0
            wrap.vipSkinId = userInfoDic[(String(show_onceFormat.prefix(6)) + String(k_canParticleData.prefix(3)))] as? Int ?? 0
            //: wrap.voicePrice = userInfoDic["voicePrice"] as? String ?? ""
            wrap.voicePrice = userInfoDic[(appAgentSourceTitle.replacingOccurrences(of: "supposed", with: "i") + String(noti_compositionMsg.prefix(5)))] as? String ?? ""
            //: wrap.videoPrice = userInfoDic["videoPrice"] as? String ?? ""
            wrap.videoPrice = userInfoDic[(String(user_totalValue.suffix(6)) + "rice")] as? String ?? ""
            //: wrap.voiceVIPPrice = userInfoDic["voiceVIPPrice"] as? String ?? ""
            wrap.voiceVIPPrice = userInfoDic[(String(user_soundId) + String(dataMannerName) + String(app_bankName.suffix(7)))] as? String ?? ""
            //: wrap.videoVIPPrice = userInfoDic["videoVIPPrice"] as? String ?? ""
            wrap.videoVIPPrice = userInfoDic[(user_eventContent.replacingOccurrences(of: "dark", with: "i") + "VIPPrice")] as? String ?? ""
            //: wrap.version = userInfoDic["version"] as? String ?? ""
            wrap.version = userInfoDic[(String(show_domainCalculateStr) + kIsolateStr.replacingOccurrences(of: "gravity", with: "n"))] as? String ?? ""
            //: wrap.headPicFrame = userInfoDic["headPicFrame"] as? String ?? ""
            wrap.headPicFrame = userInfoDic[(String(showSupplyColdMsg) + String(appDistinctiveTitle.prefix(7)))] as? String ?? ""
            //: wrap.signature = userInfoDic["signature"] as? String ?? ""
            wrap.signature = userInfoDic[(String(k_shiftRecoverFormat) + app_speakerKey.replacingOccurrences(of: "whether", with: "ur"))] as? String ?? ""
            //: wrap.constellation = userInfoDic["constellation"] as? String ?? ""
            wrap.constellation = userInfoDic[(user_corruptFormat.replacingOccurrences(of: "recommendation", with: "e") + notiNameValue.replacingOccurrences(of: "turn", with: "t"))] as? String ?? ""
            //: wrap.onlineStatus = userInfoDic["onlineStatus"] as! Int
            wrap.onlineStatus = userInfoDic[(k_executeId.lowercased() + String(const_impulseUrl))] as! Int
            //: wrap.isNewUser = userInfoDic["isNewUser"] as? Bool ?? false
            wrap.isNewUser = userInfoDic[(String(kSaveMsg) + String(constWantFactStr))] as? Bool ?? false
            //: wrap.isOfficial = userInfoDic["isOfficial"] as? Bool ?? false
            wrap.isOfficial = userInfoDic[(String(showTodaySumValue) + String(show_mergeValue))] as? Bool ?? false
            //: wrap.userStatus = userInfoDic["userStatus"] as? Int ?? 1
            wrap.userStatus = userInfoDic[(String(showLocalValue.prefix(6)) + "atus")] as? Int ?? 1
        }
        //: if userDic.keys.contains("remarkInfo") { // 备注相关
        if userDic.keys.contains((kRepresentativeKey.replacingOccurrences(of: "weight", with: "m") + String(mainRejectTitle.prefix(5)))) { // 备注相关
            //: let remarkDict = userDic["remarkInfo"] as! [String: Any]
            let remarkDict = userDic[(kRepresentativeKey.replacingOccurrences(of: "weight", with: "m") + String(mainRejectTitle.prefix(5)))] as! [String: Any]
            //: wrap.content = remarkDict["content"] as? String ?? ""
            wrap.content = remarkDict[(constRetainFormat.replacingOccurrences(of: "eye", with: "e") + String(main_cornerText))] as? String ?? ""
            //: wrap.top = remarkDict["top"] as? Int ?? 2
            wrap.top = remarkDict[(String(user_tailTitle))] as? Int ?? 2
        }
        //: if userDic.keys.contains("enableVideoCall") {
        if userDic.keys.contains((show_storageMessage.replacingOccurrences(of: "into", with: "en") + String(k_draftGlassData))) {
            //: wrap.enableVideoCall = userDic["enableVideoCall"] as! Bool
            wrap.enableVideoCall = userDic[(show_storageMessage.replacingOccurrences(of: "into", with: "en") + String(k_draftGlassData))] as! Bool
        }
        //: if userDic.keys.contains("voiceBean") {
        if userDic.keys.contains((String(mainAFirstFormat) + String(noti_curveTitle))) {
            //: wrap.voiceBean = userDic["voiceBean"] as! String
            wrap.voiceBean = userDic[(String(mainAFirstFormat) + String(noti_curveTitle))] as! String
        }
        //: if userDic.keys.contains("videoBean") {
        if userDic.keys.contains((String(showRunnerConnectionId.suffix(9)))) {
            //: wrap.videoBean =  userDic["videoBean"] as! String
            wrap.videoBean = userDic[(String(showRunnerConnectionId.suffix(9)))] as! String
        }
        //: if userDic.keys.contains("prompt") {
        if userDic.keys.contains((showUsFormat.replacingOccurrences(of: "intro", with: "o"))) {
            //: wrap.prompt = userDic["prompt"] as! String
            wrap.prompt = userDic[(showUsFormat.replacingOccurrences(of: "intro", with: "o"))] as! String
        }
        //: if userDic.keys.contains("matchRate") {
        if userDic.keys.contains((mainAccuracyPath.replacingOccurrences(of: "dynamics", with: "at") + String(appScienceLimitedName))) {
            //: wrap.matchRate =  userDic["matchRate"] as! Int
            wrap.matchRate = userDic[(mainAccuracyPath.replacingOccurrences(of: "dynamics", with: "at") + String(appScienceLimitedName))] as! Int
        }
        //: if userDic.keys.contains("existSess") {
        if userDic.keys.contains((mainCurveStr.replacingOccurrences(of: "statistical", with: "ex") + "Sess")) {
            //: wrap.existSess = userDic["existSess"] as? Bool ?? false
            wrap.existSess = userDic[(mainCurveStr.replacingOccurrences(of: "statistical", with: "ex") + "Sess")] as? Bool ?? false
        }
        //: if userDic.keys.contains("totalIntimate") {
        if userDic.keys.contains((data_pleaseEnvironmentText.replacingOccurrences(of: "city", with: "t") + String(const_lovelyId))) {
            //: wrap.intimate = userDic["totalIntimate"] as? Int ?? 0
            wrap.intimate = userDic[(data_pleaseEnvironmentText.replacingOccurrences(of: "city", with: "t") + String(const_lovelyId))] as? Int ?? 0
        }
        //: if userDic.keys.contains("isRecharge") {
        if userDic.keys.contains((String(app_standardKey.suffix(7)) + String(app_nearbyPath))) {
            //: wrap.isRecharge = userDic["isRecharge"] as? Int ?? -100
            wrap.isRecharge = userDic[(String(app_standardKey.suffix(7)) + String(app_nearbyPath))] as? Int ?? -100
        }
        //: return wrap
        return wrap
    }
}
