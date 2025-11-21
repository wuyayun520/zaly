
//: Declare String Begin

/*: "call/sendMsg" :*/
fileprivate let appHiMessage:String = "call/property detect shall my"

/*: "logId" :*/
fileprivate let data_soundWarmNameUrl:String = "something outline of disk helogId"

/*: "content" :*/
fileprivate let dataAccompanyStr:String = "contyan"
fileprivate let k_dimensionStr:[Character] = ["t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SparkDanmuManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoDanmuManagerDelegate: NSObject {
protocol HiddenReactiveCompatible: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingVideoCallDanmuModel)
    func quantityerestAlongside(Msg: FirAimModelType)
}

//: class TalkingVideoDanmuManager: NSObject {
class SparkDanmuManager: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数

    //: private static var _instance: TalkingVideoDanmuManager?
    private static var _instance: SparkDanmuManager? // singleton

    //: open weak var delegate: TalkingVideoDanmuManagerDelegate?
    open weak var delegate: HiddenReactiveCompatible?

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingVideoDanmuManager {
    class func mouthSplitDown() -> SparkDanmuManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVideoDanmuManager()
            _instance = SparkDanmuManager()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingVideoDanmuManager {
extension SparkDanmuManager {
    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg:
    //: func onRecvDanmuNewMsg(msg: [String: Any]) {
    func danmuStrokeMsg(msg: [String: Any]) {
        //: if var model = TalkingVideoCallDanmuModel.deserialize(from: msg) {
        if var model = FirAimModelType.deserialize(from: msg) {
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = FootballPlayThen()
            //: model = celldata.caculateMsgHeight(model: model)
            model = celldata.connect(model: model)
            //: self.delegate?.func__DanmuRecvNewModel(Msg: model)
            self.delegate?.quantityerestAlongside(Msg: model)
        }
    }

    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - logId: 当前通话id
    ///   - content: 消息内容
    ///   - completion: 回调

    //: class func uploadToTextMsg(logId: String, content: String, completion: FinishBlock? = nil) {
    class func modusVivendi(logId: String, content: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "call/sendMsg"
        reqModel.requestPath = (String(appHiMessage.prefix(5)) + "sendMsg")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["logId"] = logId
        dict[(String(data_soundWarmNameUrl.suffix(5)))] = logId
        //: dict["content"] = content
        dict[(dataAccompanyStr.replacingOccurrences(of: "ya", with: "e") + String(k_dimensionStr))] = content
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}

//: extension TalkingVideoDanmuManager {
extension SparkDanmuManager {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func fiscalYearResource() {
        //: if TalkingVideoDanmuManager._instance != nil {
        if SparkDanmuManager._instance != nil {
            //: TalkingVideoDanmuManager._instance = nil
            SparkDanmuManager._instance = nil
        }
    }
}
