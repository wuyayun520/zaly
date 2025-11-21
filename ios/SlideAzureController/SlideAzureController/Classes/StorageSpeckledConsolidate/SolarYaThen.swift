
//: Declare String Begin

/*: "http://" :*/
fileprivate let mainFlexiblePath:String = "structure port packhttp://"

/*: "https://" :*/
fileprivate let notiMiddleUrl:[Character] = ["h"]
fileprivate let user_resortStonePath:String = "task nag swing below productionttps://"

/*: "platform=iphone&version=%@&packageId=%@&bundleId=%@" :*/
fileprivate let mainVitalFormat:[UInt8] = [0x83,0x9f,0x92,0x87,0x95,0x9c,0x81,0x9e,0xce,0x9a,0x83,0x9b,0x9c,0x9d,0x96,0xd5,0x85,0x96,0x81,0x80,0x9a,0x9c,0x9d,0xce,0xd6,0xb3,0xd5,0x83,0x92,0x90,0x98,0x92,0x94,0x96,0xba,0x97,0xce,0xd6,0xb3,0xd5,0x91,0x86,0x9d,0x97,0x9f,0x96,0xba,0x97,0xce,0xd6,0xb3]

/*: "url" :*/
fileprivate let main_assistStillStr:String = "ubuildl"

/*: "length" :*/
fileprivate let dataHarvestMsg:[Character] = ["l","e","n","g","t","h"]

/*: "getFileSize error : :*/
fileprivate let kDifferenceId:String = "getFilbank water recording trend maker"
fileprivate let dataCloselyUrl:String = "e erpara yesterday water"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SolarYaThen.swift
//  SlideAzureController
//
//  Created by DouXiu on 2024/8/26.
//

//: import UIKit
import UIKit

//: enum DownloadTaskStatus: Int {
enum SampleExecuteSendable: Int {
    //: case none = 0
    case none = 0 // 未定义
    //: case prepare = 1
    case prepare = 1 // 准备
    //: case running = 10
    case running = 10 // 下载中
    //: case pause = 20
    case pause = 20 // 暂停
    //: case cancel = 30
    case cancel = 30 // 取消
    //: case expired = 40
    case expired = 40 // 过期
    //: case finish = 100
    case finish = 100 // 完成
    //: case error = 1000
    case error = 1000 // 错误
}

//: enum DownloadTaskTypeID: Int {
enum EagerColumnConvertible: Int {
    //: case undefined = 0
    case undefined = 0 // 未定义
    //: case chatRecord = 1
    case chatRecord = 1 // 语音聊天
    //: case oneKeyGreet = 2
    case oneKeyGreet = 2 // 一键发送打招呼语音
}

//: class VoiceDownloadTaskModel: NSObject {
class SolarYaThen: NSObject {
    //: var taskId: String = ""
    var taskId: String = ""
    /// 下载地址
    //: var downloadUri: String = ""
    var downloadUri: String = ""
    /// 输出路径zip包
    //: var zipFilePath: String = ""
    var zipFilePath: String = ""
    /// 已下载大小
    //: var currentSize: Double = 0.0
    var currentSize: Double = 0.0
    /// 总大小
    //: var totalSize: Double = 0.0
    var totalSize: Double = 0.0
    /// 下载状态
    //: var taskStatus: DownloadTaskStatus = .none
    var taskStatus: SampleExecuteSendable = .none
    /// 解压后路径
    //: var unZipFilePath: String = ""
    var unZipFilePath: String = ""
    /// 下载区分标识回调
    //: var taskTypeId: DownloadTaskTypeID = .undefined
    var taskTypeId: EagerColumnConvertible = .undefined
    /// 语音id
    //: var vid: String = ""
    var vid: String = ""
    /// 时长
    //: var length = 0
    var length = 0
    /// 输出流
    //: var stream: OutputStream?
    var stream: OutputStream?
    /// session
    //: var dataTask: URLSessionDataTask?
    var dataTask: URLSessionDataTask?

    /// 获取语音下载model
    //: class func getVoiceModel(_ tempModel: WCDBVoiceMsgTable) -> VoiceDownloadTaskModel {
    class func successfully(_ tempModel: RedMsgTable) -> SolarYaThen {
        //: let model = VoiceDownloadTaskModel()
        let model = SolarYaThen()
        //: model.taskTypeId = .chatRecord
        model.taskTypeId = .chatRecord
        //: model.taskId = tempModel.msgId
        model.taskId = tempModel.msgId
        //: model.zipFilePath = tempModel.db_filePath
        model.zipFilePath = tempModel.db_filePath
        //: if tempModel.db_voiceUri.contains("http://") || tempModel.db_voiceUri.contains("https://") {
        if tempModel.db_voiceUri.contains((String(mainFlexiblePath.suffix(7)))) || tempModel.db_voiceUri.contains((String(notiMiddleUrl) + String(user_resortStonePath.suffix(7)))) {
            //: model.downloadUri = tempModel.db_voiceUri
            model.downloadUri = tempModel.db_voiceUri
            //: } else {
        } else {
            //: let otherParams = String(format: "platform=iphone&version=%@&packageId=%@&bundleId=%@", DepictionThen.getAppNetVersion(), DepictionThen.getPackageID(), DepictionThen.getAppBundle())
            let otherParams = String(format: String(bytes: mainVitalFormat.map{$0^243}, encoding: .utf8)!, DepictionThen.motivationVersion(), DepictionThen.lengthId(), DepictionThen.norFinish())
            //: model.downloadUri = String(format: "%@%@&%@", TalkingRequestAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)
            model.downloadUri = String(format: "%@%@&%@", ManufacturerThen.share.serverUrlStr, tempModel.db_voiceUri, otherParams)

            //: model.currentSize = VoiceDownloadTaskModel.getFileSize(path: tempModel.db_filePath)
            model.currentSize = SolarYaThen.perimeter(path: tempModel.db_filePath)
        }
        //: return model
        return model
    }

    /// 获取一键打招呼model
    //: class func getOneKeyGreetModel(_ voiceInfo: [String: Any]) -> VoiceDownloadTaskModel {
    class func centerModel(_ voiceInfo: [String: Any]) -> SolarYaThen {
        //: let model = VoiceDownloadTaskModel()
        let model = SolarYaThen()
        //: model.taskTypeId = .oneKeyGreet
        model.taskTypeId = .oneKeyGreet
        //: model.downloadUri = voiceInfo["url"] as? String ?? ""
        model.downloadUri = voiceInfo[(main_assistStillStr.replacingOccurrences(of: "build", with: "r"))] as? String ?? ""
        //: model.vid = voiceInfo["id"] as? String ?? ""
        model.vid = voiceInfo["id"] as? String ?? ""
        //: model.length = Int(voiceInfo["length"] as? String ?? "0") ?? 0
        model.length = Int(voiceInfo[(String(dataHarvestMsg))] as? String ?? "0") ?? 0
        //: let fileName = (model.downloadUri as NSString).lastPathComponent
        let fileName = (model.downloadUri as NSString).lastPathComponent
        //: let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: model.zipFilePath = "\(BlowDismissCacheDefine.getChatVoicePath())\(pathName)\(timeInterval)"
        model.zipFilePath = "\(BlowDismissCacheDefine.sceneCreate())\(pathName)\(timeInterval)"
        //: return model
        return model
    }
}

//: extension VoiceDownloadTaskModel {
extension SolarYaThen {
    /// 获取文件大小
    /// - Parameter path: 文件完整路径
    /// - Returns: 文件size
    //: class func getFileSize(path: String) -> Double {
    class func perimeter(path: String) -> Double {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: guard fileManager.fileExists(atPath: path) else {
        guard fileManager.fileExists(atPath: path) else {
            //: return 0.0
            return 0.0
        }
        //: do {
        do {
            //: let attr = try fileManager.attributesOfItem(atPath: path)
            let attr = try fileManager.attributesOfItem(atPath: path)
            //: let fileSize = attr[FileAttributeKey.size] as! UInt64
            let fileSize = attr[FileAttributeKey.size] as! UInt64
            //: return Double(fileSize)
            return Double(fileSize)
            //: } catch {
        } catch {
            //: printLog(message: "getFileSize error :\(error)")
            printLog(message: (String(kDifferenceId.prefix(6)) + "eSiz" + String(dataCloselyUrl.prefix(4)) + "ror :") + "\(error)")
            //: return 0.0
            return 0.0
        }
    }

    /// 获取文件本地存储路径
    /// - Returns: 路径
    //: func getDownloadZipFilePath() -> String {
    func screenCount() -> String {
        //: guard self.zipFilePath.isEmpty else {
        guard self.zipFilePath.isEmpty else {
            //: return self.zipFilePath
            return self.zipFilePath
        }
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: return "\(BlowDismissCacheDefine.getChatVoicePath())\(self.taskId)\(timeInterval)"
        return "\(BlowDismissCacheDefine.sceneCreate())\(self.taskId)\(timeInterval)"
    }
}
