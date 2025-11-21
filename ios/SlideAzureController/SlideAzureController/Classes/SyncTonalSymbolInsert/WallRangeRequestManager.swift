
//: Declare String Begin

/*: "mf/business/list" :*/
fileprivate let appDuringValue:String = "tick translate run gravitymf/busi"
fileprivate let userFirmStr:[Character] = ["n","e","s","s","/","l","i","s","t"]

/*: "Any" :*/
fileprivate let dataGoingPath:String = "Anyply drag north"

/*: "Yes" :*/
fileprivate let user_riverName:[Character] = ["Y","e","s"]

/*: "tab" :*/
fileprivate let noti_secondMessage:[UInt8] = [0xbc,0xa9,0xaa]

fileprivate func squareAdvertising(gesture num: UInt8) -> UInt8 {
    let value = Int(num) + 184
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "page" :*/
fileprivate let appCheckionEnhanceMsg:[UInt8] = [0x10,0x1,0x7,0x5]

private func leagueActive(nut num: UInt8) -> UInt8 {
    return num ^ 96
}

/*: "minAge" :*/
fileprivate let user_launchPath:[UInt8] = [0x4c,0x48,0x4f,0x60,0x46,0x44]

private func confirmSize(grade num: UInt8) -> UInt8 {
    return num ^ 33
}

/*: "maxAge" :*/
fileprivate let showKingPath:[UInt8] = [0x68,0x5c,0x73,0x3c,0x62,0x60]

fileprivate func makeupReward(be num: UInt8) -> UInt8 {
    let value = Int(num) + 5
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "datingVideo" :*/
fileprivate let data_streetName:[UInt8] = [0x23,0x26,0x33,0x2e,0x29,0x20,0x11,0x2e,0x23,0x22,0x28]

private func readerPhoneBlank(something num: UInt8) -> UInt8 {
    return num ^ 71
}

/*: "uid" :*/
fileprivate let dataLocalTitle:String = "uframe"

/*: "mf/premiumStar/list" :*/
fileprivate let main_whyData:String = "refuse speaker finger together viamf/pre"
fileprivate let constDoingicialLoadTitle:String = "cos pin finish bank accountingar/li"
fileprivate let data_evaluateOwnerName:String = "thankst"

/*: "mf/business/adBanner" :*/
fileprivate let constGenderUrl:String = "collect pop nearby tabmf/bu"
fileprivate let data_writtenTopFormat:String = "jump related multi row if/adB"
fileprivate let k_actionId:[Character] = ["r"]

/*: "position" :*/
fileprivate let appOutputContent:[UInt8] = [0x6f,0x6e,0x72,0x68,0x73,0x68,0x6e,0x6d]

fileprivate func beatMay(enjoy num: UInt8) -> UInt8 {
    let value = Int(num) + 1
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bannerList" :*/
fileprivate let app_usData:String = "bdonne"
fileprivate let main_goldZzText:[Character] = ["r","L","i","s","t"]

/*: "mf/rank/list" :*/
fileprivate let main_installMessage:[Character] = ["m","f","/","r","a"]
fileprivate let mainPresentPlatRequireData:[Character] = ["n","k","/","l","i","s","t"]

/*: "name" :*/
fileprivate let show_frontFormat:[UInt8] = [0xad,0xa2,0xae,0xa6]

/*: "period" :*/
fileprivate let mainRiverKey:[UInt8] = [0x64,0x6f,0x69,0x72,0x65,0x70]

/*: "user/position" :*/
fileprivate let constMeetTitle:String = "corrupt follow give location tooluser/p"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WallRangeRequestManager.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: enum SocialTab: Int {
enum MedalPropertyProtocol: Int {
    //: case hot = 1
    case hot = 1 // 活跃
    //: case nearby  = 2
    case nearby = 2 // 附近
    //: case new  = 3
    case new = 3 // 新用户
}

//: class SocialRequestManager {
class WallRangeRequestManager {
    // 列表分页
    //: var listPage = 0
    var listPage = 0
    // 巨星计划分页
    //: var premiumStarPage = 0
    var premiumStarPage = 0
    // 防止重复请求
    //: var premiumStarIsLoading = false
    var premiumStarIsLoading = false
    // 巨星计划是否有更多数据
    //: var premiumStarCanLoadMore = true
    var premiumStarCanLoadMore = true
    // 最大请求次数
    //: let maxReq = 3
    let maxReq = 3
    // 当前已请求次数
    //: var haveReq = 0
    var haveReq = 0
    /// 请求首页列表数据
    /// - Parameters:
    ///   - tab: 1-活跃 2-附近 3-新人 4-同省 5-同城 6-高级用户
    ///   - page: 分页
    ///   - completion: 回调
    //: func req_socialList(tab: SocialTab, completion: @escaping FinishBlock) {
    func completionPress(tab: MedalPropertyProtocol, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/business/list"
        reqModel.requestPath = (String(appDuringValue.suffix(7)) + String(userFirmStr))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET

        // 筛选条件
        //: var minAge = 0
        var minAge = 0
        //: var maxAge = 0
        var maxAge = 0
        //: var datingVideo = 0
        var datingVideo = 0
        //: if SEARCH_AGE == "Any".localized {
        if userPlainFormat == (String(dataGoingPath.prefix(3))).localized {
            //: minAge = 18
            minAge = 18
            //: maxAge = 80
            maxAge = 80
            //: } else if SEARCH_AGE == "58+" {
        } else if userPlainFormat == "58+" {
            //: minAge = 58
            minAge = 58
            //: maxAge = 80
            maxAge = 80
            //: } else {
        } else {
            //: let arr = SEARCH_AGE.split(separator: "-")
            let arr = userPlainFormat.split(separator: "-")
            //: if arr.count > 1 {
            if arr.count > 1 {
                //: minAge = Int(arr[0]) ?? 0
                minAge = Int(arr[0]) ?? 0
                //: maxAge = Int(arr[1]) ?? 0
                maxAge = Int(arr[1]) ?? 0
            }
        }
        //: if SEARCH_VIDEOCOVER == "Yes".localized {
        if const_collectionValue == (String(user_riverName)).localized {
            //: datingVideo = 1
            datingVideo = 1
        }

        //: reqModel.params = ["tab": tab.rawValue,
        reqModel.params = [String(bytes: noti_secondMessage.map{squareAdvertising(gesture: $0)}, encoding: .utf8)!: tab.rawValue,
                           //: "page": listPage,
                           String(bytes: appCheckionEnhanceMsg.map{leagueActive(nut: $0)}, encoding: .utf8)!: listPage,
                           //: "minAge": minAge,
                           String(bytes: user_launchPath.map{confirmSize(grade: $0)}, encoding: .utf8)!: minAge,
                           //: "maxAge": maxAge,
                           String(bytes: showKingPath.map{makeupReward(be: $0)}, encoding: .utf8)!: maxAge,
                           //: "datingVideo": datingVideo]
                           String(bytes: data_streetName.map{readerPhoneBlank(something: $0)}, encoding: .utf8)!: datingVideo]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: var resultArr = result as! [Dictionary<String, Any>]
            var resultArr = result as! [[String: Any]]

            //: if self.listPage == 0 {
            if self.listPage == 0 {
                //: self.section0Data.removeAll()
                self.section0Data.removeAll()
                //: self.section1Data.removeAll()
                self.section1Data.removeAll()
                //: self.bolckRepetData.removeAll()
                self.bolckRepetData.removeAll()
            }

            /// 后台拉黑向上补齐返回数据，客户端拉取下页有重复数据过滤
            //: for uid in self.bolckRepetData {
            for uid in self.bolckRepetData {
                //: for (index, dict) in resultArr.enumerated() {
                for (index, dict) in resultArr.enumerated() {
                    //: let uidstr = dict["uid"] as? Int
                    let uidstr = dict[(dataLocalTitle.replacingOccurrences(of: "frame", with: "id"))] as? Int
                    //: if uid == String(uidstr ?? 0) {
                    if uid == String(uidstr ?? 0) {
                        //: resultArr.remove(at: index)
                        resultArr.remove(at: index)
                    }
                }
            }

            //: for dict in resultArr {
            for dict in resultArr {
                //: if let model = SocialUserListModel.deserialize(from: dict as? Dictionary) {
                if let model = EquityMeasurable.deserialize(from: dict as? Dictionary) {
                    //: if self.section0Data.count < 4 {
                    if self.section0Data.count < 4 {
                        //: self.section0Data.append(model)
                        self.section0Data.append(model)
                        //: } else {
                    } else {
                        //: self.section1Data.append(model)
                        self.section1Data.append(model)
                    }
                    //: self.bolckRepetData.insert("\(model.uid)")
                    self.bolckRepetData.insert("\(model.uid)")
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求巨星计划列表
    /// - Parameter completion: 回调
    //: func req_premiumStarList(completion: @escaping FinishBlock) {
    func streetEditor(completion: @escaping FinishBlock) {
        //: if premiumStarIsLoading { return }
        if premiumStarIsLoading { return }

        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/premiumStar/list"
        reqModel.requestPath = (String(main_whyData.suffix(6)) + "miumSt" + String(constDoingicialLoadTitle.suffix(5)) + data_evaluateOwnerName.replacingOccurrences(of: "thanks", with: "s"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["page": premiumStarPage]
        reqModel.params = [String(bytes: appCheckionEnhanceMsg.map{leagueActive(nut: $0)}, encoding: .utf8)!: premiumStarPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: self.premiumStarIsLoading = false
            self.premiumStarIsLoading = false
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.premiumStarPage == 0 {
            if self.premiumStarPage == 0 {
                //: self.premiumStarListData.removeAll()
                self.premiumStarListData.removeAll()
            }

            //: let arr = result as! [Dictionary<String, Any>]
            let arr = result as! [[String: Any]]
            //: for dict in arr {
            for dict in arr {
                //: if let model = PremiumStarListModel.deserialize(from: dict as? Dictionary) {
                if let model = BlackMeasurable.deserialize(from: dict as? Dictionary) {
                    //: self.premiumStarListData.append(model)
                    self.premiumStarListData.append(model)
                }
            }

            //: if arr.count < 20 {
            if arr.count < 20 {
                //: self.premiumStarCanLoadMore = false
                self.premiumStarCanLoadMore = false
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取广告位banner
    /// - Parameters:
    ///   - position: 广告位标识，1=首页，2=me,3:私聊
    ///   - completion: 回调
    //: func req_adBanner(position: Int, completion: @escaping FinishBlock) {
    func genderStat(position: Int, completion: @escaping FinishBlock) {
        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/business/adBanner"
        reqModel.requestPath = (String(constGenderUrl.suffix(5)) + "siness" + String(data_writtenTopFormat.suffix(4)) + "anne" + String(k_actionId))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["position": position]
        reqModel.params = [String(bytes: appOutputContent.map{beatMay(enjoy: $0)}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
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

            //: if position == 2 {
            if position == 2 {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(app_usData.replacingOccurrences(of: "don", with: "an") + String(main_goldZzText))] ?? []).arrayValue
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = PrimaryRedModelType.deserialize(from: dict.dictionaryObject) {
                    //: self.adBannerListData.append(model)
                    self.adBannerListData.append(model)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 首页榜单

    //: class func getRankListRequest(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
    class func boardGuide(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/rank/list"
        reqModel.requestPath = (String(main_installMessage) + String(mainPresentPlatRequireData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["name": topName ?? "", "period": periodName ?? ""]
        reqModel.params = [String(bytes: show_frontFormat.map{$0^195}, encoding: .utf8)!: topName ?? "", String(bytes: mainRiverKey.reversed(), encoding: .utf8)!: periodName ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 上传定位

    //: class func req_uploadPosition(params: [String: Any], completion: @escaping FinishBlock) {
    class func overwhelm(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "user/position"
        reqModel.requestPath = (String(constMeetTitle.suffix(6)) + "osition")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy load

    //: lazy var section0Data: [SocialUserListModel] = {
    lazy var section0Data: [EquityMeasurable] = //: return Array<EquityMeasurable>()
        .init()
    //: }()

    //: lazy var section1Data: [SocialUserListModel] = {
    lazy var section1Data: [EquityMeasurable] = //: return Array<EquityMeasurable>()
        .init()
    //: }()

    //: lazy var bolckRepetData = Set<String>()
    lazy var bolckRepetData = Set<String>()

    //: lazy var premiumStarListData: [PremiumStarListModel] = {
    lazy var premiumStarListData: [BlackMeasurable] = //: return Array<BlackMeasurable>()
        .init()
    //: }()

    //: lazy var adBannerListData: [SocialAdBannerModel] = {
    lazy var adBannerListData: [PrimaryRedModelType] = //: return Array<PrimaryRedModelType>()
        .init()
    //: }()
}
