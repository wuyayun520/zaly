
//: Declare String Begin

/*: "DBUserVoiceTable" :*/
fileprivate let data_genderPath:[Character] = ["D","B","U","s","e","r","V","o","i","c","e","T","a","b"]
fileprivate let const_trapTitle:[Character] = ["l","e"]

/*: "msgId" :*/
fileprivate let data_relatePath:String = "msgIdfinger trend master mid heart"

/*: "toUid" :*/
fileprivate let k_fatalAidName:String = "publicly load signature proposal playtoUid"

/*: "senderId" :*/
fileprivate let userTopFormat:[Character] = ["s","e","n","d","e","r","I","d"]

/*: "audioSandbox" :*/
fileprivate let mainBankMessage:String = "audiperceive"
fileprivate let data_arcValue:[Character] = ["S","a","n","d","b","o","x"]

/*: "audioLength" :*/
fileprivate let constFatherFormat:String = "plus price mutual strikeaudioL"

/*: "audioData" :*/
fileprivate let showProsecutorValue:String = "audioDremark word since"
fileprivate let mainPubliclyPath:String = "aspringa"

/*: "audioUri" :*/
fileprivate let main_saltMessage:String = "be material repeataudioU"
fileprivate let userInformContent:[Character] = ["r","i"]

/*: "isRead" :*/
fileprivate let const_nailTitle:String = "sequence deep template distributeisRead"

/*: "WCDB表 :*/
fileprivate let user_motiveDecideFragmentMessage:String = "disc three transition popular exhibitWCDB表"

/*: : 批量插入数据失败。error： :*/
fileprivate let dataHiddenFoodPath:[Character] = [":"," ","\u{6279}","量","\u{63d2}","入","数","据","失","败","。","e","r","r","o"]
fileprivate let noti_selectedTitle:String = "r：precedent empty"

/*: : 更新数据失败。error： :*/
fileprivate let appCoordinatorCertainMessage:String = ": maximum新"
fileprivate let show_shakeDesignAppealValue:String = "blindblindoblind"
fileprivate let kStatisticalDrownHisText:String = "："

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RedMsgTable.swift
//  SlideAzureController
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

/// 表名
//: let WCDBVoiceMsgTableName = "DBUserVoiceTable"
let data_appKey = (String(data_genderPath) + String(const_trapTitle))
//: @objcMembers
@objcMembers
//: public final class WCDBVoiceMsgTable: NSObject, TableCodable {
public final class RedMsgTable: NSObject, TableCodable {
    /// 消息Id【主键】
    //: public var msgId: String = ""
    public var msgId: String = ""
    /// 语音长度
    //: public var db_audioLength: String = ""
    public var db_audioLength: String = ""
    /// 缓存路径
    //: public var db_filePath: String = ""
    public var db_filePath: String = ""
    /// 下载路径
    //: var db_voiceUri: String = ""
    var db_voiceUri: String = ""
    /// 发送方
    //: var db_senduid: String = ""
    var db_senduid: String = ""
    /// 接收方
    //: var db_touid: String = ""
    var db_touid: String = ""
    /// 是否已读; 0未读，1已读
    //: var db_isRead: String = ""
    var db_isRead: String = ""
    /// 下载状态
    //: var downloadStatus: String = ""
    var downloadStatus: String = ""

    //: public enum CodingKeys: String, CodingTableKey {
    public enum CodingKeys: String, CodingTableKey {
        //: public typealias Root = WCDBVoiceMsgTable
        public typealias Root = RedMsgTable
        //: case msgId
        case msgId
        //: case db_voiceUri
        case db_voiceUri
        //: case db_filePath
        case db_filePath
        //: case db_senduid
        case db_senduid
        //: case db_touid
        case db_touid
        //: case db_isRead
        case db_isRead
        //: case db_audioLength
        case db_audioLength
        //: case downloadStatus
        case downloadStatus

        //: public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(msgId, isPrimary: true)
            BindColumnConstraint(msgId, isPrimary: true)
        }
    }
}

// MARK: - 增、删、改、查

//: extension WCDBVoiceMsgTable {
extension RedMsgTable {
    /// 插入单条数据
    /// - Parameter dic: 字典
    /// - Returns: 模型
    //: @discardableResult
    @discardableResult
    //: public class func db_inserVoiceMsgToDB(_ dic: [AnyHashable: Any]) -> WCDBVoiceMsgTable {
    public class func soul(_ dic: [AnyHashable: Any]) -> RedMsgTable {
        //: let cache = WCDBVoiceMsgTable()
        let cache = RedMsgTable()
        //: cache.msgId = dic["msgId"] as? String ?? ""
        cache.msgId = dic[(String(data_relatePath.prefix(5)))] as? String ?? ""
        //: cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        cache.db_touid = String(dic[(String(k_fatalAidName.suffix(5)))] as? Int ?? 0)
        //: cache.db_senduid = dic["senderId"] as? String ?? ""
        cache.db_senduid = dic[(String(userTopFormat))] as? String ?? ""
        //: cache.db_filePath = dic["audioSandbox"] as? String ?? ""
        cache.db_filePath = dic[(mainBankMessage.replacingOccurrences(of: "perceive", with: "o") + String(data_arcValue))] as? String ?? ""
        //: cache.db_audioLength = dic["audioLength"] as? String ?? ""
        cache.db_audioLength = dic[(String(constFatherFormat.suffix(6)) + "ength")] as? String ?? ""
        //: if dic.keys.contains("audioData") {
        if dic.keys.contains((String(showProsecutorValue.prefix(6)) + mainPubliclyPath.replacingOccurrences(of: "spring", with: "t"))) {
            //: cache.db_voiceUri = dic["audioData"] as? String ?? ""
            cache.db_voiceUri = dic[(String(showProsecutorValue.prefix(6)) + mainPubliclyPath.replacingOccurrences(of: "spring", with: "t"))] as? String ?? ""
        }
        //: if cache.db_voiceUri.isEmpty {
        if cache.db_voiceUri.isEmpty {
            //: if dic.keys.contains("audioUri") {
            if dic.keys.contains((String(main_saltMessage.suffix(6)) + String(userInformContent))) {
                //: cache.db_voiceUri = dic["audioUri"] as? String ?? ""
                cache.db_voiceUri = dic[(String(main_saltMessage.suffix(6)) + String(userInformContent))] as? String ?? ""
            }
        }
        //: cache.db_isRead = dic["isRead"] as? String ?? ""
        cache.db_isRead = dic[(String(const_nailTitle.suffix(6)))] as? String ?? ""
        //: cache.downloadStatus = "0"
        cache.downloadStatus = "0"
        //: db_updateVoiceMsg(cache)
        afterSecond(cache)
        //: return cache
        return cache
    }

    /// 插入单条数据
    /// - Parameter voiceMsg: 数据模型
    //: class func db_insertVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func kind(_ voiceMsg: RedMsgTable) {
        //: WCDBVoiceMsgTable.db_insertVoiceMsgs([voiceMsg])
        RedMsgTable.turnOut([voiceMsg])
    }

    /// 插入多条数据
    /// - Parameter voiceMsgs: 数据数组
    //: class func db_insertVoiceMsgs(_ voiceMsgs: [WCDBVoiceMsgTable]) {
    class func turnOut(_ voiceMsgs: [RedMsgTable]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? RegularReactiveCompatible.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(voiceMsgs, intoTable: WCDBVoiceMsgTableName)
                try RegularReactiveCompatible.shared.database?.insert(voiceMsgs, intoTable: data_appKey)
                //: } catch {
            } catch {
                //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 批量插入数据失败。error：\(error).")
                MateThen.trackBy(msg: (String(user_motiveDecideFragmentMessage.suffix(5))) + "\(data_appKey)" + (String(dataHiddenFoodPath) + String(noti_selectedTitle.prefix(2))) + "\(error).")
            }
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter msgId: 消息id
    /// - Returns: 模型
    //: public class func db_getVoiceMsg(with msgId: String) -> WCDBVoiceMsgTable? {
    public class func unitedNationsAgency(with msgId: String) -> RedMsgTable? {
        //: if let voiceMsgs = WCDBVoiceMsgTable.db_getVoiceMsgs(with: [msgId]) {
        if let voiceMsgs = RedMsgTable.setSectionSucceed(with: [msgId]) {
            //: return voiceMsgs.first
            return voiceMsgs.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter msgIds: id数据
    /// - Returns: 数据数组
    //: class func db_getVoiceMsgs(with msgIds: [String]) -> [WCDBVoiceMsgTable]? {
    class func setSectionSucceed(with msgIds: [String]) -> [RedMsgTable]? {
        //: do {
        do {
            //: let condition = WCDBVoiceMsgTable.Properties.msgId.in(msgIds)
            let condition = RedMsgTable.Properties.msgId.in(msgIds)
            //: let voiceMsgs: [WCDBVoiceMsgTable]? = try WCDBManager.shared.database?.getObjects(on: WCDBVoiceMsgTable.Properties.all, fromTable: WCDBVoiceMsgTableName, where: condition)
            let voiceMsgs: [RedMsgTable]? = try RegularReactiveCompatible.shared.database?.getObjects(on: RedMsgTable.Properties.all, fromTable: data_appKey, where: condition)
            //: return voiceMsgs
            return voiceMsgs
            //: } catch {
        } catch {
            //: return nil
            return nil
        }
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter voiceMsg: 数据模型
    //: class func db_updateVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func afterSecond(_ voiceMsg: RedMsgTable) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? RegularReactiveCompatible.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if WCDBVoiceMsgTable.db_getVoiceMsg(with: voiceMsg.msgId) != nil {
            if RedMsgTable.unitedNationsAgency(with: voiceMsg.msgId) != nil {
                //: do {
                do {
                    //: let condition = WCDBVoiceMsgTable.Properties.msgId == voiceMsg.msgId
                    let condition = RedMsgTable.Properties.msgId == voiceMsg.msgId
                    //: try WCDBManager.shared.database?.update(table: WCDBVoiceMsgTableName,
                    try RegularReactiveCompatible.shared.database?.update(table: data_appKey,
                                                            //: on: WCDBVoiceMsgTable.Properties.all,
                                                            on: RedMsgTable.Properties.all,
                                                            //: with: voiceMsg,
                                                            with: voiceMsg,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 更新数据失败。error：\(error).")
//                    MateThen.trackBy(msg: (String(user_motiveDecideFragmentMessage.suffix(5))) + "\(data_appKey)" + (appCoordinatorCertainMessage.replacingOccurrences(of: "maximum", with: "更") + "数据失败。e" + show_shakeDesignAppealValue.replacingOccurrences(of: "blind", with: "r") + kStatisticalDrownHisText.capitalized) + "\(error).")
                }

                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(voiceMsg)
                RedMsgTable.kind(voiceMsg)
            }
            //: })
        })
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameters:
    ///   - msgId: 消息Id
    ///   - status: 状态
    ///   - filePath: 路径
    //: class func db_updateVoiceMsg(msgId: String, status: String = "", filePath: String = "") {
    class func replacementPath(msgId: String, status: String = "", filePath: String = "") {
        //: guard let dbModel = WCDBVoiceMsgTable.db_getVoiceMsg(with: msgId) else { return }
        guard let dbModel = RedMsgTable.unitedNationsAgency(with: msgId) else { return }
        //: if status.isEmpty == false {
        if status.isEmpty == false {
            //: dbModel.downloadStatus = status
            dbModel.downloadStatus = status
        }
        //: if filePath.isEmpty == false {
        if filePath.isEmpty == false {
            //: dbModel.db_filePath = filePath
            dbModel.db_filePath = filePath
        }
        //: WCDBVoiceMsgTable.db_updateVoiceMsg(dbModel)
        RedMsgTable.afterSecond(dbModel)
    }

    /// 根据消息Id删除数据
    /// - Parameter msgId: 消息Id
    //: class func db_deleteVoiceMsg(msgId: String) {
    class func priorityScreen(msgId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? RegularReactiveCompatible.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.msgId == msgId
            let condition = RedMsgTable.Properties.msgId == msgId
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? RegularReactiveCompatible.shared.database?.delete(fromTable: data_appKey,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 根据userId、toUid删除数据
    /// - Parameters:
    ///   - userId: 用户id
    ///   - toUid: 对方id
    //: class func db_deleteVoiceMsg(_ userId: String, toUid: String) {
    class func doinglyWeekly(_ userId: String, toUid: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? RegularReactiveCompatible.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.db_senduid == userId && WCDBVoiceMsgTable.Properties.db_touid == toUid
            let condition = RedMsgTable.Properties.db_senduid == userId && RedMsgTable.Properties.db_touid == toUid
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? RegularReactiveCompatible.shared.database?.delete(fromTable: data_appKey,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }
}
