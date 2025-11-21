
//: Declare String Begin

/*: "gifts" :*/
fileprivate let showPlanFormat:String = "gifrecommend"

/*: "vipGifts" :*/
fileprivate let data_rowText:[Character] = ["v","i","p","G","i","f","t"]
fileprivate let showFeedName:[Character] = ["s"]

/*: "packGifts" :*/
fileprivate let dataListenValue:String = "club bridge weight lip adjustmentpackGif"
fileprivate let const_researchStr:String = "lay"

/*: "giftSendItem" :*/
fileprivate let mainKingdomChooseId:[Character] = ["g","i","f","t","S","e","n","d","I","t","e","m"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MotivationThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/7.
//

//: import UIKit
import UIKit

//: class TalkingChatGiftManager: NSObject {
class MotivationThen: NSObject {
    /// 是否展示背包红点
    //: @objc dynamic var showBagsRed = false
    @objc dynamic var showBagsRed = false
    /// 礼物缓存数据【消息类型key：消息结构字典】 { (消息类型key: { "Hot": [], "VIP": [], "Bags": [] } }
    //: private var cacheDict = [String: [GiftDataType: [Any]]]()
    private var cacheDict = [String: [ProgDefaultsSerializable: [Any]]]()
    // 数据锁
    //: private var cacheLock = NSLock()
    private var cacheLock = NSLock()
    /// 赠送面板配置
    //: private var sendItems = Array<Any>()
    private var sendItems = [Any]()
    /// 聊天室赠送面板配置
    //: private var chatRoomSendItems = Array<Any>()
    private var chatRoomSendItems = [Any]()
    /// 直播面板配置
    //: private var liveSendItems = Array<Any>()
    private var liveSendItems = [Any]()
    /// 礼物类型
    //: private var giftType = GiftViewStyle.normal
    private var giftType = DisableSubqueryConvertible.normal

    //: static let share = TalkingChatGiftManager()
    static let share = MotivationThen()
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: addNotification()
        itNotification()
    }
}

//: extension TalkingChatGiftManager {
extension MotivationThen {
    /// 发送礼物面板数据
    /// - Parameters:
    ///   - type: 礼物类型；0=默认， 1=私密照片，2=私密视频，3=群聊
    ///   - isRefresh: 是否需要更新
    ///   - completion: 回调
    //: func func__sendGiftEvent(type: GiftViewStyle = .normal, isRefresh: Bool = false, completion: @escaping () -> Void) {
    func tillTurn(type: DisableSubqueryConvertible = .normal, isRefresh: Bool = false, completion: @escaping () -> Void) {
        //: TalkingChatGiftManager.share.giftType = type
        MotivationThen.share.giftType = type
        //: if isRefresh == false {
        if isRefresh == false {
            //: let dataDict = cacheDict[type.rawValue]
            let dataDict = cacheDict[type.rawValue]
            //: let hotArr = dataDict?[GiftDataType.Hot] ?? [Any]()
            let hotArr = dataDict?[ProgDefaultsSerializable.Hot] ?? [Any]()
            //: guard hotArr.count == 0 else {
            guard hotArr.count == 0 else {
                //: completion()
                completion()
                //: return
                return
            }
        }

        //: if type == .groupChat {
        if type == .groupChat {
            //: TalkingChatGiftManager.share.getChatRoomGiftData(completion: { isSucceed in
            MotivationThen.share.pathCompletion(completion: { isSucceed in
                //: guard isSucceed else { return }
                guard isSucceed else { return }
                //: let dataDict = self.cacheDict[type.rawValue]
                let dataDict = self.cacheDict[type.rawValue]
                //: let hotArr = dataDict?[GiftDataType.Hot] ?? [Any]()
                let hotArr = dataDict?[ProgDefaultsSerializable.Hot] ?? [Any]()
                //: if hotArr.count > 0 {
                if hotArr.count > 0 {
                    //: completion()
                    completion()
                }
                //: })
            })

            //: } else if type == .live {
        } else if type == .live {
            //: TalkingChatGiftManager.share.getLiveGiftData(completion: { isSucceed in
            MotivationThen.share.dataGetDowryCompletionLiveSeek(completion: { isSucceed in
                //: guard isSucceed else { return }
                guard isSucceed else { return }
                //: let dataDict = self.cacheDict[type.rawValue]
                let dataDict = self.cacheDict[type.rawValue]
                //: let hotArr = dataDict?[GiftDataType.Hot] ?? [Any]()
                let hotArr = dataDict?[ProgDefaultsSerializable.Hot] ?? [Any]()
                //: if hotArr.count > 0 {
                if hotArr.count > 0 {
                    //: completion()
                    completion()
                }
                //: })
            })

            //: } else {
        } else {
            //: TalkingChatGiftManager.share.getGiftData(completion: { isSucceed in
            MotivationThen.share.playerLoad(completion: { isSucceed in
                //: guard isSucceed else { return }
                guard isSucceed else { return }
                //: let dataDict = self.cacheDict[type.rawValue]
                let dataDict = self.cacheDict[type.rawValue]
                //: let hotArr = dataDict?[GiftDataType.Hot] ?? [Any]()
                let hotArr = dataDict?[ProgDefaultsSerializable.Hot] ?? [Any]()
                //: if hotArr.count > 0 {
                if hotArr.count > 0 {
                    //: completion()
                    completion()
                }
                //: })
            })
        }
    }

    /// 私聊礼物信息
    /// - Parameter completion: 回调
    //: private func getGiftData(completion: @escaping (_ isSucceed: Bool) -> Void) {
    private func playerLoad(completion: @escaping (_ isSucceed: Bool) -> Void) {
        //: let type = TalkingChatGiftManager.share.giftType
        let type = MotivationThen.share.giftType
        //: TalkingChatRequestTool.req_ChatGiftList(type: type.rawValue) { succeed, result, errorModel in
        TamperRequestTool.aboutContainer(type: type.rawValue) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: let data: Dictionary = result as! Dictionary<String, Any>
                let data: Dictionary = result as! [String: Any]
                //: var dataDict = [GiftDataType: [Any]]()
                var dataDict = [ProgDefaultsSerializable: [Any]]()
                // hot礼物
                //: if let array: Array = data["gifts"] as? Array<Any> {
                if let array: Array = data[(showPlanFormat.replacingOccurrences(of: "recommend", with: "ts"))] as? [Any] {
                    //: var hotArr = [Any]()
                    var hotArr = [Any]()
                    //: if let datas = Array<TalkingRoomGiftModel>.deserialize(from: array as? Array) {
                    if let datas = Array<TillGiftModel>.deserialize(from: array as? Array) {
                        //: hotArr.append(contentsOf: datas as [Any])
                        hotArr.append(contentsOf: datas as [Any])
                    }
                    //: dataDict[GiftDataType.Hot] = hotArr
                    dataDict[ProgDefaultsSerializable.Hot] = hotArr
                }

                // vip礼物
                //: if let array: Array = data["vipGifts"] as? Array<Any> {
                if let array: Array = data[(String(data_rowText) + String(showFeedName))] as? [Any] {
                    //: var vipArr = [Any]()
                    var vipArr = [Any]()
                    //: if let datas = Array<TalkingRoomGiftModel>.deserialize(from: array as? Array) {
                    if let datas = Array<TillGiftModel>.deserialize(from: array as? Array) {
                        //: vipArr.append(contentsOf: datas as [Any])
                        vipArr.append(contentsOf: datas as [Any])
                    }
                    //: dataDict[GiftDataType.Vip] = vipArr
                    dataDict[ProgDefaultsSerializable.Vip] = vipArr
                }

                // Bags礼物
                //: if let array: Array = data["packGifts"] as? Array<Any> {
                if let array: Array = data[(String(dataListenValue.suffix(7)) + const_researchStr.replacingOccurrences(of: "lay", with: "ts"))] as? [Any] {
                    //: var bagsArr = [Any]()
                    var bagsArr = [Any]()
                    //: if let datas = Array<TalkingRoomGiftModel>.deserialize(from: array as? Array) {
                    if let datas = Array<TillGiftModel>.deserialize(from: array as? Array) {
                        //: bagsArr.append(contentsOf: datas as [Any])
                        bagsArr.append(contentsOf: datas as [Any])
                    }
                    //: dataDict[GiftDataType.Bags] = bagsArr
                    dataDict[ProgDefaultsSerializable.Bags] = bagsArr
                }

                //: self.cacheDict[type.rawValue] = dataDict
                self.cacheDict[type.rawValue] = dataDict

                //: self.sendItems.removeAll()
                self.sendItems.removeAll()
                //: var firstModel = TalkingGiftNumArrModel.init()
                var firstModel = FenceTransformable()
                //: firstModel.num = 1
                firstModel.num = 1
                //: self.sendItems.append(firstModel)
                self.sendItems.append(firstModel)

                //: let sendItem: Array =  data["giftSendItem"] as! Array<Any>
                let sendItem: Array = data[(String(mainKingdomChooseId))] as! [Any]
                //: for i in 0..<sendItem.count {
                for i in 0 ..< sendItem.count {
                    //: if let configModel = JSONDeserializer<TalkingGiftNumArrModel>.deserializeFrom(dict: sendItem[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if let configModel = JSONDeserializer<FenceTransformable>.deserializeFrom(dict: sendItem[i] as? [String: Any], designatedPath: nil) {
                        //: self.sendItems.append(configModel)
                        self.sendItems.append(configModel)
                    }
                }
                //: completion(true)
                completion(true)
                //: } else {
            } else {
                //: completion(false)
                completion(false)
            }
        }
    }

    /// 聊天室礼物信息
    /// - Parameter completion: 回调
    //: private func getChatRoomGiftData(completion: @escaping (_ isSucceed: Bool) -> Void) {
    private func pathCompletion(completion: @escaping (_ isSucceed: Bool) -> Void) {
        //: let type = TalkingChatGiftManager.share.giftType
        let type = MotivationThen.share.giftType
        //: TalkingChatRequestTool.req_ChatRoomGiftList(type: type.rawValue) { succeed, result, errorModel in
        TamperRequestTool.salve(type: type.rawValue) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: let data: Dictionary = result as! Dictionary<String, Any>
                let data: Dictionary = result as! [String: Any]
                //: var dataDict = [GiftDataType: [Any]]()
                var dataDict = [ProgDefaultsSerializable: [Any]]()
                // hot礼物
                //: if let array: Array = data["gifts"] as? Array<Any> {
                if let array: Array = data[(showPlanFormat.replacingOccurrences(of: "recommend", with: "ts"))] as? [Any] {
                    //: var hotArr = [Any]()
                    var hotArr = [Any]()
                    //: if let datas = Array<TalkingRoomGiftModel>.deserialize(from: array as? Array) {
                    if let datas = Array<TillGiftModel>.deserialize(from: array as? Array) {
                        //: hotArr.append(contentsOf: datas as [Any])
                        hotArr.append(contentsOf: datas as [Any])
                    }
                    //: dataDict[GiftDataType.Hot] = hotArr
                    dataDict[ProgDefaultsSerializable.Hot] = hotArr
                }

                // vip礼物
                //: if let array: Array = data["vipGifts"] as? Array<Any> {
                if let array: Array = data[(String(data_rowText) + String(showFeedName))] as? [Any] {
                    //: var vipArr = [Any]()
                    var vipArr = [Any]()
                    //: if let datas = Array<TalkingRoomGiftModel>.deserialize(from: array as? Array) {
                    if let datas = Array<TillGiftModel>.deserialize(from: array as? Array) {
                        //: vipArr.append(contentsOf: datas as [Any])
                        vipArr.append(contentsOf: datas as [Any])
                    }
                    //: dataDict[GiftDataType.Vip] = vipArr
                    dataDict[ProgDefaultsSerializable.Vip] = vipArr
                }

                // Bags礼物
                //: if let array: Array = data["packGifts"] as? Array<Any> {
                if let array: Array = data[(String(dataListenValue.suffix(7)) + const_researchStr.replacingOccurrences(of: "lay", with: "ts"))] as? [Any] {
                    //: var bagsArr = [Any]()
                    var bagsArr = [Any]()
                    //: if let datas = Array<TalkingRoomGiftModel>.deserialize(from: array as? Array) {
                    if let datas = Array<TillGiftModel>.deserialize(from: array as? Array) {
                        //: bagsArr.append(contentsOf: datas as [Any])
                        bagsArr.append(contentsOf: datas as [Any])
                    }
                    //: dataDict[GiftDataType.Bags] = bagsArr
                    dataDict[ProgDefaultsSerializable.Bags] = bagsArr
                }

                //: self.cacheDict[type.rawValue] = dataDict
                self.cacheDict[type.rawValue] = dataDict

                //: self.chatRoomSendItems.removeAll()
                self.chatRoomSendItems.removeAll()
                //: let sendItem: Array =  data["giftSendItem"] as! Array<Any>
                let sendItem: Array = data[(String(mainKingdomChooseId))] as! [Any]
                //: for i in 0..<sendItem.count {
                for i in 0 ..< sendItem.count {
                    //: if let configModel = JSONDeserializer<TalkingGiftNumArrModel>.deserializeFrom(dict: sendItem[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if let configModel = JSONDeserializer<FenceTransformable>.deserializeFrom(dict: sendItem[i] as? [String: Any], designatedPath: nil) {
                        //: self.chatRoomSendItems.append(configModel)
                        self.chatRoomSendItems.append(configModel)
                    }
                }
                //: completion(true)
                completion(true)
                //: } else {
            } else {
                //: completion(false)
                completion(false)
            }
        }
    }

    /// 聊天室在线名单
    /// - Parameters:
    ///   - params: 传参
    ///   - completion: 回调
    //: func getChatRoomMemberSData(params: Dictionary<String, Any>, completion: @escaping (_ data: Array<Any>?) -> Void) {
    func completionSearch(params: [String: Any], completion: @escaping (_ data: [Any]?) -> Void) {
        //: TalkingChatRequestTool.req_getChatRoomMembers(params: params, completion: { succeed, result, errorModel in
        TamperRequestTool.searchIsolate(params: params, completion: { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: let data: Array = result as! Array<Any>
                let data: Array = result as! [Any]
                //: let modelArray = NSMutableArray.init(capacity: 0)
                let modelArray = NSMutableArray(capacity: 0)
                //: for  dict in data {
                for dict in data {
                    //: if let memberModel = JSONDeserializer<TalkingChatRoomMemberModel>.deserializeFrom(dict: dict as? Dictionary<String, Any>, designatedPath: nil) {
                    if let memberModel = JSONDeserializer<SparkTransformable>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                        //: modelArray.add(memberModel)
                        modelArray.add(memberModel)
                    }
                }
                //: completion(modelArray as? Array<Any>)
                completion(modelArray as? [Any])
                //: } else {
            } else {
                //: completion(nil)
                completion(nil)
            }
            //: })
        })
    }

    /// 直播礼物信息
    /// - Parameter completion: 回调
    //: private func getLiveGiftData(completion: @escaping (_ isSucceed: Bool) -> Void) {
    private func dataGetDowryCompletionLiveSeek(completion: @escaping (_ isSucceed: Bool) -> Void) {
        //: let type = GiftViewStyle.live
        let type = DisableSubqueryConvertible.live
        //: TalkingChatRequestTool.req_LiveGiftList(type: type.rawValue) { succeed, result, errorModel in
        TamperRequestTool.someone(type: type.rawValue) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: let data: Dictionary = result as! Dictionary<String, Any>
                let data: Dictionary = result as! [String: Any]
                //: var dataDict = [GiftDataType: [Any]]()
                var dataDict = [ProgDefaultsSerializable: [Any]]()
                // hot礼物
                //: if let array: Array = data["gifts"] as? Array<Any> {
                if let array: Array = data[(showPlanFormat.replacingOccurrences(of: "recommend", with: "ts"))] as? [Any] {
                    //: var hotArr = [Any]()
                    var hotArr = [Any]()
                    //: if let datas = Array<TalkingRoomGiftModel>.deserialize(from: array as? Array) {
                    if let datas = Array<TillGiftModel>.deserialize(from: array as? Array) {
                        //: hotArr.append(contentsOf: datas as [Any])
                        hotArr.append(contentsOf: datas as [Any])
                    }
                    //: dataDict[GiftDataType.Hot] = hotArr
                    dataDict[ProgDefaultsSerializable.Hot] = hotArr
                }

                // vip礼物
                //: if let array: Array = data["vipGifts"] as? Array<Any> {
                if let array: Array = data[(String(data_rowText) + String(showFeedName))] as? [Any] {
                    //: var vipArr = [Any]()
                    var vipArr = [Any]()
                    //: if let datas = Array<TalkingRoomGiftModel>.deserialize(from: array as? Array) {
                    if let datas = Array<TillGiftModel>.deserialize(from: array as? Array) {
                        //: vipArr.append(contentsOf: datas as [Any])
                        vipArr.append(contentsOf: datas as [Any])
                    }
                    //: dataDict[GiftDataType.Vip] = vipArr
                    dataDict[ProgDefaultsSerializable.Vip] = vipArr
                }

                // Bags礼物
                //: if let array: Array = data["packGifts"] as? Array<Any> {
                if let array: Array = data[(String(dataListenValue.suffix(7)) + const_researchStr.replacingOccurrences(of: "lay", with: "ts"))] as? [Any] {
                    //: var bagsArr = [Any]()
                    var bagsArr = [Any]()
                    //: if let datas = Array<TalkingRoomGiftModel>.deserialize(from: array as? Array) {
                    if let datas = Array<TillGiftModel>.deserialize(from: array as? Array) {
                        //: bagsArr.append(contentsOf: datas as [Any])
                        bagsArr.append(contentsOf: datas as [Any])
                    }
                    //: dataDict[GiftDataType.Bags] = bagsArr
                    dataDict[ProgDefaultsSerializable.Bags] = bagsArr
                }

                //: self.cacheDict[type.rawValue] = dataDict
                self.cacheDict[type.rawValue] = dataDict

                //: self.liveSendItems.removeAll()
                self.liveSendItems.removeAll()
                //: var firstModel = TalkingGiftNumArrModel.init()
                var firstModel = FenceTransformable()
                //: firstModel.num = 1
                firstModel.num = 1
                //: self.liveSendItems.append(firstModel)
                self.liveSendItems.append(firstModel)

                //: let sendItem: Array =  data["giftSendItem"] as! Array<Any>
                let sendItem: Array = data[(String(mainKingdomChooseId))] as! [Any]
                //: for i in 0..<sendItem.count {
                for i in 0 ..< sendItem.count {
                    //: if let configModel = JSONDeserializer<TalkingGiftNumArrModel>.deserializeFrom(dict: sendItem[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if let configModel = JSONDeserializer<FenceTransformable>.deserializeFrom(dict: sendItem[i] as? [String: Any], designatedPath: nil) {
                        //: self.liveSendItems.append(configModel)
                        self.liveSendItems.append(configModel)
                    }
                }
                //: completion(true)
                completion(true)
                //: } else {
            } else {
                //: completion(false)
                completion(false)
            }
        }
    }

    //: func getGiftPageCount(perPageCount: Int, dataType: GiftDataType) -> Int {
    func motivationViewType(perPageCount: Int, dataType: ProgDefaultsSerializable) -> Int {
        //: let dataDict = cacheDict[self.giftType.rawValue]
        let dataDict = cacheDict[self.giftType.rawValue]
        //: let dataArr = dataDict?[dataType] ?? [Any]()
        let dataArr = dataDict?[dataType] ?? [Any]()
        //: var page = dataArr.count / perPageCount
        var page = dataArr.count / perPageCount
        //: let div = dataArr.count % perPageCount
        let div = dataArr.count % perPageCount
        //: page += (div > 0 ? 1:0)
        page += (div > 0 ? 1 : 0)

        //: return page
        return page
    }

    //: func getHotGiftDataSource(dataType: GiftDataType) -> Array<Any> {
    func promptType(dataType: ProgDefaultsSerializable) -> [Any] {
        //: cacheLock.lock()
        cacheLock.lock()
        //: defer {
        defer {
            //: cacheLock.unlock()
            cacheLock.unlock()
        }
        //: let dataDict = cacheDict[self.giftType.rawValue]
        let dataDict = cacheDict[self.giftType.rawValue]
        //: let dataArr = dataDict?[dataType] ?? [Any]()
        let dataArr = dataDict?[dataType] ?? [Any]()
        //: return dataArr
        return dataArr
    }

    //: func getSendingItems() -> Array<Any> {
    func beyondGet() -> [Any] {
        //: if TalkingChatGiftManager.share.giftType == .groupChat {
        if MotivationThen.share.giftType == .groupChat {
            //: return chatRoomSendItems
            return chatRoomSendItems
            //: } else if TalkingChatGiftManager.share.giftType == .live {
        } else if MotivationThen.share.giftType == .live {
            //: return liveSendItems
            return liveSendItems
            //: } else {
        } else {
            //: return sendItems
            return sendItems
        }
    }

    /// 保存礼物数据
    /// - Parameters:
    ///   - dataType: 礼物数据类型
    ///   - dataArr: 保存的礼物数据
    //: func saveGiftDataSource(dataType: GiftDataType, dataArr: [Any]) {
    func shankArr(dataType: ProgDefaultsSerializable, dataArr: [Any]) {
        //: cacheLock.lock()
        cacheLock.lock()
        //: defer {
        defer {
            //: cacheLock.unlock()
            cacheLock.unlock()
        }
        //: cacheDict[self.giftType.rawValue]?[dataType] = dataArr
        cacheDict[self.giftType.rawValue]?[dataType] = dataArr
    }
}

// MARK: - 通知

//: extension TalkingChatGiftManager {
extension MotivationThen {
    /// 添加通知
    //: private func addNotification() {
    private func itNotification() {
        // 刷新礼物背包
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(receiveNewGiftPackage),
                                               selector: #selector(alongReduce),
                                               //: name: GIFT_REFRESHPACKAGE_NOTIFICATION,
                                               name: data_failId,
                                               //: object: nil)
                                               object: nil)
    }

    /// 接收新的礼物背包
    //: @objc private func receiveNewGiftPackage() {
    @objc private func alongReduce() {
        //: gift_clearMemoryCache(showRed: true)
        inviteInRed(showRed: true)
    }
}

// MARK: - 清缓存

//: extension TalkingChatGiftManager {
extension MotivationThen {
    /// 清除缓存
    /// - Parameter showRed: 是否展示红点
    //: func gift_clearMemoryCache(showRed: Bool = false) {
    func inviteInRed(showRed: Bool = false) {
        //: TalkingChatGiftManager.share.showBagsRed = showRed
        MotivationThen.share.showBagsRed = showRed
        //: cacheDict.removeAll()
        cacheDict.removeAll()
    }
}
