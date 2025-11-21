
//: Declare String Begin

/*: "mf/user/recommendUser" :*/
fileprivate let notiBraceFormat:String = "mf/usposition maybe unable"
fileprivate let showLowerTitle:String = "edecreasemm"
fileprivate let k_keepMsg:[Character] = ["e"]
fileprivate let app_billMessage:[Character] = ["n","d","U","s","e","r"]

/*: "page" :*/
fileprivate let notiWedData:[UInt8] = [0x54,0x45,0x4b,0x49]

fileprivate func awakeRecommendation(food num: UInt8) -> UInt8 {
    let value = Int(num) + 28
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/user/singleUser" :*/
fileprivate let appPlusKey:[Character] = ["m","f","/","u","s","e","r","/","s"]
fileprivate let show_mysteryUrl:String = "now translation public member senseingleUser"

/*: "uid" :*/
fileprivate let user_anotherData:[UInt8] = [0x8c,0x90,0x9d]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TransferReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/1/11.
//

//: import UIKit
import UIKit

//: class TalkingSearchManager: NSObject {
class TransferReactiveCompatible: NSObject {
    // 列表分页
    //: var recommendListPage = 0
    var recommendListPage = 0

    /// 推荐用户列表
    /// - Parameter completion: 回调
    //: func req_recommendUser(completion: @escaping FinishBlock) {
    func scopeScan(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/user/recommendUser"
        reqModel.requestPath = (String(notiBraceFormat.prefix(5)) + "er/r" + showLowerTitle.replacingOccurrences(of: "decrease", with: "co") + String(k_keepMsg) + String(app_billMessage))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["page": recommendListPage]
        reqModel.params = [String(bytes: notiWedData.map{awakeRecommendation(food: $0)}, encoding: .utf8)!: recommendListPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.recommendListPage == 0 {
            if self.recommendListPage == 0 {
                //: self.recommendDataArr.removeAll()
                self.recommendDataArr.removeAll()
            }

            //: for dict in result as! [Dictionary<String, Any>] {
            for dict in result as! [[String: Any]] {
                //: if let model = TalkingRecommendUserModel.deserialize(from: dict as? Dictionary) {
                if let model = MateHandyJSON.deserialize(from: dict as? Dictionary) {
                    //: self.recommendDataArr.append(model)
                    self.recommendDataArr.append(model)
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 搜索uid
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - completion: 回调
    //: func req_singleUser(uid: String, completion: @escaping FinishBlock) {
    func componentCompletion(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/user/singleUser"
        reqModel.requestPath = (String(appPlusKey) + String(show_mysteryUrl.suffix(9)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: user_anotherData.map{$0^249}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: self.searchListDataArr.removeAll()
            self.searchListDataArr.removeAll()
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if let model = TalkingRecommendUserModel.deserialize(from: result) {
            if let model = MateHandyJSON.deserialize(from: result) {
                //: self.searchListDataArr.append(model)
                self.searchListDataArr.append(model)
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy Load

    //: lazy var recommendDataArr: [TalkingRecommendUserModel] = {
    lazy var recommendDataArr: [MateHandyJSON] = //: return Array<MateHandyJSON>()
        .init()
    //: }()

    //: lazy var searchListDataArr: [TalkingRecommendUserModel] = {
    lazy var searchListDataArr: [MateHandyJSON] = //: return Array<MateHandyJSON>()
        .init()
    //: }()
}
