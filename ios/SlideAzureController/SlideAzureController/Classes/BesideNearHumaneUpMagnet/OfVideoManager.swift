
//: Declare String Begin

/*: "mf/videoMatch/switch" :*/
fileprivate let showBarrierTitle:String = "mf/vday fresh"
fileprivate let kFloorMsg:String = "instruction definition list allegedMatch/"

/*: "status" :*/
fileprivate let constEntityStr:[UInt8] = [0xe0,0xe7,0xf2,0xe7,0xe6,0xe0]

/*: "mf/videoMatch/checkMatch" :*/
fileprivate let constConvertGoodValue:String = "protection care album random femalemf/vid"
fileprivate let user_illegalTitle:String = "page child heretch/che"
fileprivate let notiInformPath:String = "assist dit tell beautiful headckMatch"

/*: "matchVersion" :*/
fileprivate let user_bondKey:[UInt8] = [0x44,0x38,0x4b,0x3a,0x3f,0x2d,0x3c,0x49,0x4a,0x40,0x46,0x45]

fileprivate func assistantNut(eff num: UInt8) -> UInt8 {
    let value = Int(num) + 41
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "enterType" :*/
fileprivate let showCommentId:[UInt8] = [0xbb,0xb0,0xaa,0xbb,0xac,0x8a,0xa7,0xae,0xbb]

private func sumerruptEdge(tab num: UInt8) -> UInt8 {
    return num ^ 222
}

/*: "mf/videoMatch/headPics" :*/
fileprivate let data_cosName:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","h","e","a","d","P","i","c","s"]

/*: "mf/videoMatch/matchV3" :*/
fileprivate let k_frameworkJudgeId:String = "reject hostmf/vi"
fileprivate let appStandardMsg:String = "include already icondeoMat"
fileprivate let const_hangTitle:String = "chV3exist mirror"

/*: "matchId" :*/
fileprivate let show_wrapData:[UInt8] = [0x37,0x3b,0x2e,0x39,0x32,0x13,0x3e]

private func fillUp(sign num: UInt8) -> UInt8 {
    return num ^ 90
}

/*: "mf/videoMatch/matchV4" :*/
fileprivate let appMyMsg:String = "trap telephone our relation littlemf/vi"
fileprivate let k_beName:String = "temporary spend together permissiontch/m"
fileprivate let constSearchMessage:String = "Vrefer"

/*: "mf/videoMatch/matchV4List" :*/
fileprivate let showMutualKey:String = "mf/vagainst favorite pull act"
fileprivate let k_deepMsg:String = "tch/what fashion"
fileprivate let constOthersName:String = "4Listoriginal case that public go"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OfVideoManager.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoManager: NSObject {
class OfVideoManager: NSObject {
    /// 视频速配开关（女）
    /// - Parameters:
    ///   - status: status=1开启，status=0关闭
    ///   - completion: 回调
    //: class func req_videoMatchSwitch(status: Bool, completion: @escaping FinishBlock) {
    class func brace(status: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/videoMatch/switch"
        reqModel.requestPath = (String(showBarrierTitle.prefix(4)) + "ideo" + String(kFloorMsg.suffix(6)) + "switch")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: reqModel.params = ["status": status]
        reqModel.params = [String(bytes: constEntityStr.map{$0^147}, encoding: .utf8)!: status]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 视频速配资格检查（男）
    /// - Parameters:
    ///   - isRandomVideo: 是否是随机视频
    ///   - completion: 回调
    //: class func req_videoMatchCheck(enterType: Int = 0, completion: @escaping FinishBlock) {
    class func aAdvanced(enterType: Int = 0, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/videoMatch/checkMatch"
        reqModel.requestPath = (String(constConvertGoodValue.suffix(6)) + "eoMa" + String(user_illegalTitle.suffix(7)) + String(notiInformPath.suffix(7)))
        //: reqModel.params = ["matchVersion": "v4", "enterType": enterType]
        reqModel.params = [String(bytes: user_bondKey.map{assistantNut(eff: $0)}, encoding: .utf8)!: "v4", String(bytes: showCommentId.map{sumerruptEdge(tab: $0)}, encoding: .utf8)!: enterType]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 速配头像列表（男）
    /// - Parameter completion: 回调
    //: class func req_videoMatchHeadPics(completion: @escaping FinishBlock) {
    class func physicalStructure(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/videoMatch/headPics"
        reqModel.requestPath = (String(data_cosName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始视频速配（男）
    /// - Parameters:
    ///   - matchId: 默认传0，skip的时候传之前的matchId
    ///   - completion: 回调
    //: class func req_videoMatchToMatch(matchId: Int, completion: @escaping FinishBlock) {
    class func missRobot(matchId: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/videoMatch/matchV3"
        reqModel.requestPath = (String(k_frameworkJudgeId.suffix(5)) + String(appStandardMsg.suffix(6)) + "ch/mat" + String(const_hangTitle.prefix(4)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["matchId": matchId]
        reqModel.params = [String(bytes: show_wrapData.map{fillUp(sign: $0)}, encoding: .utf8)!: matchId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始随机视频（男）
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_randomVideoToMatch(params: [String: Any], completion: @escaping FinishBlock) {
    class func flushCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/videoMatch/matchV4"
        reqModel.requestPath = (String(appMyMsg.suffix(5)) + "deoMa" + String(k_beName.suffix(5)) + "atch" + constSearchMessage.replacingOccurrences(of: "refer", with: "4"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取随机视频池子用户列表
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_getMatchV4List(params: [String: Any], completion: @escaping FinishBlock) {
    class func holderPortfolio(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/videoMatch/matchV4List"
        reqModel.requestPath = (String(showMutualKey.prefix(4)) + "ideoMa" + String(k_deepMsg.prefix(4)) + "matchV" + String(constOthersName.prefix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
