
//: Declare String Begin

/*: "WCDB数据库打开失败：userId为空。" :*/
fileprivate let main_taPath:String = "contact suite cycle elementWCDB数"
fileprivate let show_involvementUrl:String = "失败：usbroadcast each framework yesterday"

/*: "WCDB/ :*/
fileprivate let data_regularName:[Character] = ["W","C","D","B","/"]

/*: "WCDB数据库打开失败： :*/
fileprivate let app_publiclyContent:[Character] = ["W","C","D","B"]
fileprivate let kOpUrl:[Character] = ["\u{6570}","\u{636e}","\u{5e93}","打","开","失","\u{8d25}","："]

/*: "WCDB数据库成功打开： :*/
fileprivate let dataEthicalMessage:String = "WCDB数supply procedure fort"

/*: "WCDB数据库成功关闭。" :*/
fileprivate let userReportName:String = "transportation vital smartWCDB数据"
fileprivate let main_seeVarietyValue:String = "库\u{6210}功关闭\u{3002}"

/*: "WCDB数据库：创建表失败。error： :*/
fileprivate let app_whichUrl:String = "WCDB数door ok zz favorite"
fileprivate let app_sureName:[Character] = ["\u{5931}","败","\u{3002}","e","r","r","o","r","："]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegularReactiveCompatible.swift
//  SlideAzureController
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

//: class WCDBManager: NSObject {
class RegularReactiveCompatible: NSObject {
    //: static let shared = WCDBManager()
    static let shared = RegularReactiveCompatible()
    /// 数据库
    //: var database: Database?
    var database: Database?
    /// 数据库名称
    //: private var wcdbName: String {
    private var wcdbName: String {
        //: return DismissReactiveCompatible.share.loginUserMode.userID + ".db"
        return DismissReactiveCompatible.share.loginUserMode.userID + ".db"
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.connectDatabase()
        self.bringTogether()
    }

    /// 连接数据库
    //: func connectDatabase() {
    func bringTogether() {
        //: closeDatabase()
        feeDatabase()

        //: guard !DismissReactiveCompatible.share.loginUserMode.userID.isEmpty else {
        guard !DismissReactiveCompatible.share.loginUserMode.userID.isEmpty else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：userId为空。")
            MateThen.trackBy(msg: (String(main_taPath.suffix(5)) + "\u{636e}库打开" + String(show_involvementUrl.prefix(5)) + "erId为空。"))
            //: return
            return
        }
        //: guard let fileURL = try? FileManager.default
        guard let fileURL = try? FileManager.default
            //: .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            //: .appendingPathComponent("WCDB/\(wcdbName)") else { return }
            .appendingPathComponent((String(data_regularName)) + "\(wcdbName)") else { return }
        //: database = Database(at: fileURL)
        database = Database(at: fileURL)
        //: guard database?.canOpen == true else {
        guard database?.canOpen == true else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：\(fileURL.path)")
            MateThen.trackBy(msg: (String(app_publiclyContent) + String(kOpUrl)) + "\(fileURL.path)")
            //: return
            return
        }
        //: printLog(message: "WCDB数据库成功打开：\(fileURL.path)")
        printLog(message: (String(dataEthicalMessage.prefix(5)) + "\u{636e}\u{5e93}成功打开：") + "\(fileURL.path)")
        //: createTables()
        local()
    }

    /// 关闭数据库
    //: private func closeDatabase() {
    private func feeDatabase() {
        //: guard database != nil else { return }
        guard database != nil else { return }
        //: database?.close()
        database?.close()
        //: try? database?.close(onClosed: { [weak self] in
        try? database?.close(onClosed: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.database = nil
            self.database = nil
            //: printLog(message: "WCDB数据库成功关闭。")
            printLog(message: (String(userReportName.suffix(6)) + main_seeVarietyValue))
            //: })
        })
    }
}

// MARK: - 创建表

//: extension WCDBManager {
extension RegularReactiveCompatible {
    /// 创建表
    //: private func createTables() {
    private func local() {
        //: do {
        do {
            // 用户信息表
            //: try database?.create(table: WCDBUserInfoTableName, of: WCDBUserInfoTable.self)
            try database?.create(table: notiStreamValue, of: ConiferousTreeInfoTable.self)
            // 语音消息表
            //: try database?.create(table: WCDBVoiceMsgTableName, of: WCDBVoiceMsgTable.self)
            try database?.create(table: data_appKey, of: RedMsgTable.self)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "WCDB数据库：创建表失败。error：\(error).")
            MateThen.trackBy(msg: (String(app_whichUrl.prefix(5)) + "\u{636e}库\u{ff1a}创建表" + String(app_sureName)) + "\(error).")
        }
    }
}
