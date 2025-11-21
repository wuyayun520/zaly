
//: Declare String Begin

/*: "DBUserInfoTable" :*/
fileprivate let main_tingHimTitle:[Character] = ["D","B","U","s","e","r","I","n","f","o","T","a","b","l"]
fileprivate let main_restrictionKey:String = "collection"

/*: "WCDB表 :*/
fileprivate let mainMutualOutlineName:String = "WCDB表increase scenario"

/*: : 更新数据失败。error： :*/
fileprivate let showCounterestValue:String = ": 更新数据失\u{8d25}"
fileprivate let userParaPath:String = "signature lab decide adjust extension。error："

/*: : 批量插入数据失败。error： :*/
fileprivate let kSpeedStr:String = ": 批量"
fileprivate let noti_deadlineUrl:String = "\u{5931}败。e"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConiferousTreeInfoTable.swift
//  SlideAzureController
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

/// 表名
//: let WCDBUserInfoTableName = "DBUserInfoTable"
let notiStreamValue = (String(main_tingHimTitle) + main_restrictionKey.replacingOccurrences(of: "collection", with: "e"))
//: final class WCDBUserInfoTable: TableCodable {
final class ConiferousTreeInfoTable: TableCodable {
    /// 用户Id【主键】
    //: var uid: String = ""
    var uid: String = ""
    /// 昵称
    //: var nickname: String = ""
    var nickname: String = ""
    /// 年龄
    //: var age: String = ""
    var age: String = ""
    /// 头像
    //: var headPic: String = ""
    var headPic: String = ""
    /// 性别
    //: var sex: String = ""
    var sex: String = ""
    /// 是否VIP
    //: var loungePlus: Bool = false
    var loungePlus: Bool = false
    /// 是否认证
    //: var tpAuth: Bool = false
    var tpAuth: Bool = false
    /// 是否官方账号
    //: var isOfficial: Bool = false
    var isOfficial: Bool = false
    /// 头像框地址
    //: var headPicFrame: String = ""
    var headPicFrame: String = ""
    /// 是否建立会话
    //: var isHaveSession: Bool = false
    var isHaveSession: Bool = false
    /// 亲密度
    //: var intimate: Int = 0
    var intimate: Int = 0
    /// 亲密度最后更新时间
    //: var intimateTime: Int = 0
    var intimateTime: Int = 0
    /// VIP已读回执时间
    //: var readReceiptTime: Int = 0
    var readReceiptTime: Int = 0

    //: enum CodingKeys: String, CodingTableKey {
    enum CodingKeys: String, CodingTableKey {
        //: typealias Root = WCDBUserInfoTable
        typealias Root = ConiferousTreeInfoTable
        //: case uid
        case uid
        //: case nickname
        case nickname
        //: case age
        case age
        //: case headPic
        case headPic
        //: case sex
        case sex
        //: case loungePlus
        case loungePlus
        //: case tpAuth
        case tpAuth
        //: case isOfficial
        case isOfficial
        //: case headPicFrame
        case headPicFrame
        //: case isHaveSession
        case isHaveSession
        //: case intimate
        case intimate
        //: case intimateTime
        case intimateTime
        //: case readReceiptTime
        case readReceiptTime

        //: static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(uid, isPrimary: true)
            BindColumnConstraint(uid, isPrimary: true)
        }
    }
}

// MARK: - ExecuteBetterTransformable和WCDBUserInfoTable转换

//: extension WCDBUserInfoTable {
extension ConiferousTreeInfoTable {
    /// ExecuteBetterTransformable  =>  ConiferousTreeInfoTable
    //: private class func mapToDBUserInfoData(_ userInfo: ExecuteBetterTransformable) -> WCDBUserInfoTable {
    private class func equalBring(_ userInfo: ExecuteBetterTransformable) -> ConiferousTreeInfoTable {
        //: let dbData = WCDBUserInfoTable()
        let dbData = ConiferousTreeInfoTable()
        //: dbData.uid = userInfo.uid
        dbData.uid = userInfo.uid
        //: dbData.nickname = userInfo.nickname
        dbData.nickname = userInfo.nickname
        //: dbData.age = userInfo.age
        dbData.age = userInfo.age
        //: dbData.headPic = userInfo.headPic
        dbData.headPic = userInfo.headPic
        //: dbData.sex = userInfo.sex
        dbData.sex = userInfo.sex
        //: dbData.loungePlus = userInfo.loungePlus
        dbData.loungePlus = userInfo.loungePlus
        //: dbData.tpAuth = userInfo.tpAuth
        dbData.tpAuth = userInfo.tpAuth
        //: dbData.isOfficial = userInfo.isOfficial
        dbData.isOfficial = userInfo.isOfficial
        //: dbData.headPicFrame = userInfo.headPicFrame
        dbData.headPicFrame = userInfo.headPicFrame
        //: dbData.isHaveSession = userInfo.isHaveSession
        dbData.isHaveSession = userInfo.isHaveSession
        //: dbData.intimate = userInfo.intimate
        dbData.intimate = userInfo.intimate
        //: dbData.intimateTime = userInfo.intimateTime
        dbData.intimateTime = userInfo.intimateTime
        //: dbData.readReceiptTime = userInfo.readReceiptTime
        dbData.readReceiptTime = userInfo.readReceiptTime
        //: return dbData
        return dbData
    }

    /// [ConiferousTreeInfoTable] => [ExecuteBetterTransformable]
    //: private class func mapToUserInfoModels(_ dbDatas: [WCDBUserInfoTable]) -> [ExecuteBetterTransformable] {
    private class func pan(_ dbDatas: [ConiferousTreeInfoTable]) -> [ExecuteBetterTransformable] {
        //: return dbDatas.map { data in
        return dbDatas.map { data in
            //: let userInfo = ExecuteBetterTransformable()
            let userInfo = ExecuteBetterTransformable()
            //: userInfo.uid = data.uid
            userInfo.uid = data.uid
            //: userInfo.nickname = data.nickname
            userInfo.nickname = data.nickname
            //: userInfo.age = data.age
            userInfo.age = data.age
            //: userInfo.headPic = data.headPic
            userInfo.headPic = data.headPic
            //: userInfo.sex = data.sex
            userInfo.sex = data.sex
            //: userInfo.loungePlus = data.loungePlus
            userInfo.loungePlus = data.loungePlus
            //: userInfo.tpAuth = data.tpAuth
            userInfo.tpAuth = data.tpAuth
            //: userInfo.isOfficial = data.isOfficial
            userInfo.isOfficial = data.isOfficial
            //: userInfo.headPicFrame = data.headPicFrame
            userInfo.headPicFrame = data.headPicFrame
            //: userInfo.isHaveSession = data.isHaveSession
            userInfo.isHaveSession = data.isHaveSession
            //: userInfo.intimate = data.intimate
            userInfo.intimate = data.intimate
            //: userInfo.intimateTime = data.intimateTime
            userInfo.intimateTime = data.intimateTime
            //: userInfo.readReceiptTime = data.readReceiptTime
            userInfo.readReceiptTime = data.readReceiptTime
            //: return userInfo
            return userInfo
        }
    }
}

// MARK: - 增、删、改、查

//: extension WCDBUserInfoTable {
extension ConiferousTreeInfoTable {
    /// 删除数据库中用户信息
    /// - Parameter userId: 用户id
    //: class func db_deleteUserInfo(with userId: String) {
    class func spanWith(with userId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? RegularReactiveCompatible.shared.database?.run(transaction: { _ in
            //: let condition = WCDBUserInfoTable.Properties.uid.in(userId)
            let condition = ConiferousTreeInfoTable.Properties.uid.in(userId)
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBUserInfoTableName,
            try? RegularReactiveCompatible.shared.database?.delete(fromTable: notiStreamValue,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter userId: 用户id
    /// - Returns: 模型
    //: class func db_getUserInfo(with userId: String) -> ExecuteBetterTransformable? {
    class func pastLicense(with userId: String) -> ExecuteBetterTransformable? {
        //: let userInfos = WCDBUserInfoTable.db_getUserInfos(with: [userId])
        let userInfos = ConiferousTreeInfoTable.successfullyWith(with: [userId])
        //: if userInfos.isEmpty == false {
        if userInfos.isEmpty == false {
            //: return userInfos.first
            return userInfos.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter userIds: id数据
    /// - Returns: 数据数组
    //: class func db_getUserInfos(with userIds: [String]) -> [ExecuteBetterTransformable] {
    class func successfullyWith(with userIds: [String]) -> [ExecuteBetterTransformable] {
        //: guard userIds.count > 0 else { return [] }
        guard userIds.count > 0 else { return [] }
        //: do {
        do {
            //: let condition = WCDBUserInfoTable.Properties.uid.in(userIds)
            let condition = ConiferousTreeInfoTable.Properties.uid.in(userIds)
            //: let userInfos: [WCDBUserInfoTable]? = try WCDBManager.shared.database?.getObjects(on: WCDBUserInfoTable.Properties.all, fromTable: WCDBUserInfoTableName, where: condition)
            let userInfos: [ConiferousTreeInfoTable]? = try RegularReactiveCompatible.shared.database?.getObjects(on: ConiferousTreeInfoTable.Properties.all, fromTable: notiStreamValue, where: condition)
            //: if userInfos?.isEmpty == false {
            if userInfos?.isEmpty == false {
                //: let models = WCDBUserInfoTable.mapToUserInfoModels(userInfos!)
                let models = ConiferousTreeInfoTable.pan(userInfos!)
                //: return models
                return models
            }
            //: } catch {
        } catch {
            //: return []
            return []
        }
        //: return []
        return []
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter userInfo: 数据模型
    //: class func db_updateUserInfo(_ userInfo: ExecuteBetterTransformable) {
    class func mode(_ userInfo: ExecuteBetterTransformable) {
        //: let dbData = WCDBUserInfoTable.mapToDBUserInfoData(userInfo)
        let dbData = ConiferousTreeInfoTable.equalBring(userInfo)
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? RegularReactiveCompatible.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if WCDBUserInfoTable.db_getUserInfo(with: dbData.uid) != nil {
            if ConiferousTreeInfoTable.pastLicense(with: dbData.uid) != nil {
                //: do {
                do {
                    //: let condition = WCDBUserInfoTable.Properties.uid == dbData.uid
                    let condition = ConiferousTreeInfoTable.Properties.uid == dbData.uid
                    //: try WCDBManager.shared.database?.update(table: WCDBUserInfoTableName,
                    try RegularReactiveCompatible.shared.database?.update(table: notiStreamValue,
                                                            //: on: WCDBUserInfoTable.Properties.all,
                                                            on: ConiferousTreeInfoTable.Properties.all,
                                                            //: with: dbData,
                                                            with: dbData,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBUserInfoTableName): 更新数据失败。error：\(error).")
                    MateThen.trackBy(msg: (String(mainMutualOutlineName.prefix(5))) + "\(notiStreamValue)" + (showCounterestValue + String(userParaPath.suffix(7))) + "\(error).")
                }
                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: WCDBUserInfoTable.db_insertUserInfo(dbData)
                ConiferousTreeInfoTable.infoWearerInsert(dbData)
            }
            //: })
        })
    }

    /// 插入单条数据
    /// - Parameter userInfo: 数据模型
    //: private class func db_insertUserInfo(_ userInfo: WCDBUserInfoTable) {
    private class func infoWearerInsert(_ userInfo: ConiferousTreeInfoTable) {
        //: WCDBUserInfoTable.db_insertUserInfos([userInfo])
        ConiferousTreeInfoTable.profile([userInfo])
    }

    /// 插入多条数据
    /// - Parameter userInfos: 数据数组
    //: private class func db_insertUserInfos(_ userInfos: [WCDBUserInfoTable]) {
    private class func profile(_ userInfos: [ConiferousTreeInfoTable]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? RegularReactiveCompatible.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(userInfos, intoTable: WCDBUserInfoTableName)
                try RegularReactiveCompatible.shared.database?.insert(userInfos, intoTable: notiStreamValue)
                //: } catch {
            } catch {
                //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBUserInfoTableName): 批量插入数据失败。error：\(error).")
//                MateThen.trackBy(msg: (String(mainMutualOutlineName.prefix(5))) + "\(notiStreamValue)" + (kSpeedStr.capitalized + "\u{63d2}入数据" + noti_deadlineUrl + "rror：") + "\(error).")
            }
            //: })
        })
    }
}
