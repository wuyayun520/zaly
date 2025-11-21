
//: Declare String Begin

/*: "app/getConfig" :*/
fileprivate let notiQueryKey:String = "the mine portfolioapp/ge"
fileprivate let showCommentName:String = "FIG"

/*: "mf/user/getMyInfo" :*/
fileprivate let k_exceptValue:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","M","y","I"]
fileprivate let k_playerStr:[Character] = ["n","f","o"]

/*: "mf/user/getInfoColumn" :*/
fileprivate let notiLaterDominantMsg:String = "per somewhere multiple note frontmf/u"
fileprivate let showSecurityValue:String = "slide both steep auto requestgetIn"

/*: "mfCoin" :*/
fileprivate let notiGalleryName:String = "available quote clothing same customermfCoin"

/*: "mf/index/getConfig" :*/
fileprivate let user_dismissPath:String = "along memorymf/ind"
fileprivate let show_optionWhatValue:String = "etConfigcomposition special"

/*: "baseinfo =  :*/
fileprivate let constAbleBagId:String = "bspotei"
fileprivate let constHerUrl:[Character] = ["n","f","o"," ","="," "]

/*: "UserBasicInfoSetting" :*/
fileprivate let data_attributeMsg:[Character] = ["U","s","e","r","B","a","s","i","c","I","n","f","o","S","e","t","t","i","n","g"]

/*: "/userTag.json" :*/
fileprivate let dataStreamExpenseMessage:[Character] = ["/","u","s","e","r","T","a","g",".","j","s","o"]
fileprivate let noti_scheduleTitle:String = "provider"

/*: "json 解析失败" :*/
fileprivate let dataForceMsg:String = "json resent identity behavior"

/*: "app/reportDeviceId" :*/
fileprivate let dataParContent:String = "app/rerender stroke mine item alleged"
fileprivate let mainThereMsg:String = "able accuracyDevi"
fileprivate let kCoatStr:String = "ceIdpresentation err sequence later"

/*: "token" :*/
fileprivate let main_foreMessage:[UInt8] = [0x6e,0x65,0x6b,0x6f,0x74]

/*: "app/reportFcmPushToken" :*/
fileprivate let main_scoreKeyStr:String = "supply editorapp/re"
fileprivate let dataStretchSameUrl:String = "mPushTaid small southwest menu function"

/*: "app/init" :*/
fileprivate let noti_beyondPath:[Character] = ["a","p","p","/","i","n","i","t"]

/*: "app/ping" :*/
fileprivate let appSuccessfulName:String = "recent category like operationapp/"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RevenueMovementManagerRequest.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/25.
//

//: import Adjust
import Adjust
//: import Alamofire
import Alamofire
//: import FirebaseMessaging
import FirebaseMessaging
//: import UIKit
import UIKit

//: var isRequestingInit = false
var dataRateMsg = false

//: var isRetryDeviceIdTime = 3.0
var mainStreamName = 3.0

//: class AppManagerRequest: NSObject {
class RevenueMovementManagerRequest: NSObject {
    /// 请求app配置信息【无需登录】
    //: class func requestAppConfig(completion: @escaping FinishBlock) {
    class func total(completion: @escaping FinishBlock) {
        //: let requestModel = TalkingRequestModel.init()
        let requestModel = ProcessingThen()
        //: requestModel.requestPath = "app/getConfig"
        requestModel.requestPath = (String(notiQueryKey.suffix(6)) + "tCon" + showCommentName.lowercased())
        //: requestModel.showErrorStatusBar = false
        requestModel.showErrorStatusBar = false
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: GJ.startRequest(model: requestModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: requestModel) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingAppConfigKey)
                data_partyText.set(result, forKey: show_lastDescriptionId)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let configModel = JSONDeserializer<ProcessingTransformable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: DismissReactiveCompatible.share.appConfigMode = configModel
                    DismissReactiveCompatible.share.appConfigMode = configModel
                    // 通知
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: const_cameraTitle, object: nil)
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
                let configInfo = data_partyText.dictionary(forKey: show_lastDescriptionId)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let configModel = JSONDeserializer<ProcessingTransformable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: DismissReactiveCompatible.share.appConfigMode = configModel
                    DismissReactiveCompatible.share.appConfigMode = configModel
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: const_cameraTitle, object: nil)
                    //: completion(true, result, errorModel)
                    completion(true, result, errorModel)
                }
            }
        }
    }

    //: class func func__requestUserInfo(completion: @escaping FinishBlock) {
    class func account(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/user/getMyInfo"
        reqModel.requestPath = (String(k_exceptValue) + String(k_playerStr))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingLoginUserInfoCacheKey)
                data_partyText.set(result, forKey: appErrTitle)
                //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<InmateRegularReactiveCompatible>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: DismissReactiveCompatible.share.loginUserMode = userModel
                    DismissReactiveCompatible.share.loginUserMode = userModel
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询用户余额
    //: class func func__getInfoColumn(completion: @escaping FinishBlock) {
    class func day(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/user/getInfoColumn"
        reqModel.requestPath = (String(notiLaterDominantMsg.suffix(4)) + "ser/" + String(showSecurityValue.suffix(5)) + "foColumn")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: DismissReactiveCompatible.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
                DismissReactiveCompatible.share.loginUserMode.mf_coin = String(format: "%.2f", json[(String(notiGalleryName.suffix(6)))].doubleValue)
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__requestUserConfig(completion: @escaping FinishBlock) {
    class func societalCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/index/getConfig"
        reqModel.requestPath = (String(user_dismissPath.suffix(6)) + "ex/g" + String(show_optionWhatValue.prefix(8)))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: let configKey = "\(TalkingLoginUserConfigKey)_\(String(describing: DismissReactiveCompatible.share.loginUserMode.sex))"
            let configKey = "\(appHundredFailureMsg)_\(String(describing: DismissReactiveCompatible.share.loginUserMode.sex))"
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: configKey)
                data_partyText.set(result, forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<UtiliserHiddenModelType>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: DismissReactiveCompatible.share.appUserConfigMode = userModel
                    DismissReactiveCompatible.share.appUserConfigMode = userModel
                    //: AfterThen.shared.func__LogingIn()
                    AfterThen.shared.offHauled()
                    //: func__checkUserBaseinfoFileVersionWithURL(baseinfo: DismissReactiveCompatible.share.appUserConfigMode.baseInfo)
                    actual(baseinfo: DismissReactiveCompatible.share.appUserConfigMode.baseInfo)
                    // 上传用户日志
                    //: if userModel.needUploadLog == true {
                    if userModel.needUploadLog == true {
                        //: UploadLogTool.shared.uploadLog(false)
                        MateThen.shared.factorOutLog(false)
                    }
                    // 上报女性用户busy状态
                    //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
                    (AdvertisementReactiveCompatible.shared as! AdvertisementReactiveCompatible).rewardFront()
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: configKey)
                let configInfo = data_partyText.dictionary(forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let userModel = JSONDeserializer<UtiliserHiddenModelType>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: DismissReactiveCompatible.share.appUserConfigMode = userModel
                    DismissReactiveCompatible.share.appUserConfigMode = userModel
                    //: AfterThen.shared.func__LogingIn()
                    AfterThen.shared.offHauled()
                }
            }
            //: NotificationCenter.default.post(name: UPDATE_INDEX_GETCONFIG_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: mainReplaceTitle, object: nil)
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__checkUserBaseinfoFileVersionWithURL(baseinfo: String) {
    class func actual(baseinfo: String) {
        //: let cacheUrl = Defaults.string(forKey: TalkingUserTagCacheUrlKey)
        let cacheUrl = data_partyText.string(forKey: showAskFormat)
        //: printLog(message: "baseinfo = \(baseinfo)")
        printLog(message: (constAbleBagId.replacingOccurrences(of: "spot", with: "as") + String(constHerUrl)) + "\(baseinfo)")
        //: if cacheUrl != baseinfo {
        if cacheUrl != baseinfo {
            //: AF.request(baseinfo, method: .get).responseData { responseData in
            AF.request(baseinfo, method: .get).responseData { responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: let responseJson = String(data: responseData.data!, encoding: .utf8)
                    let responseJson = String(data: responseData.data!, encoding: .utf8)
                    //: if let responseModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: responseJson) {
                    if let responseModel = JSONDeserializer<RangeHandyJSON>.deserializeFrom(json: responseJson) {
                        //: Defaults.set(baseinfo, forKey: TalkingUserTagCacheUrlKey)
                        data_partyText.set(baseinfo, forKey: showAskFormat)
                        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting"
                        let jsonPath = FileManager.cellCollection() + (String(data_attributeMsg))
                        //: if FileManager.createFolder(folderPath: jsonPath) {
                        if FileManager.folderMenu(folderPath: jsonPath) {
                            //: FileManager.writeStringToFile(content: responseJson!, writePath: jsonPath+"/userTag.json")
                            FileManager.chalkLine(content: responseJson!, writePath: jsonPath + (String(dataStreamExpenseMessage) + noti_scheduleTitle.replacingOccurrences(of: "provider", with: "n")))
                            //: DismissReactiveCompatible.share.func__loadUserTagCacheData()
                            DismissReactiveCompatible.share.serve()
                        }
                        //: } else {
                    } else {
                        //: printLog(message: "json 解析失败")
                        printLog(message: (String(dataForceMsg.prefix(5)) + "\u{89e3}析失败"))
                    }
                //: break
                //: case .failure:
                case .failure:

                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: DismissReactiveCompatible.share.func__loadUserTagCacheData()
            DismissReactiveCompatible.share.serve()
        }
    }

    // 登录后上报FCM跟Device
    //: class func func__reportDeviceID() {
    class func upwardly() {
        //: func__reportDeviceIdentifier()
        haveBass()
    }

    /// 上报adid
    //: class func func__reportDeviceIdentifier() {
    class func haveBass() {
        //: let adid = Adjust.adid() ?? ""
        let adid = Adjust.adid() ?? ""
        //: if !adid.isEmptyString {
        if !adid.isEmptyString {
            //: let reqModel = TalkingRequestModel.init()
            let reqModel = ProcessingThen()
            //: reqModel.requestType = .POST
            reqModel.requestType = .POST
            //: reqModel.requestPath = "app/reportDeviceId"
            reqModel.requestPath = (String(dataParContent.prefix(6)) + "port" + String(mainThereMsg.suffix(4)) + String(kCoatStr.prefix(4)))
            //: reqModel.showErrorStatusBar = false
            reqModel.showErrorStatusBar = false
            //: var params = UIDevice.deviceInfoDic
            var params = UIDevice.deviceInfoDic
            //: if let poStr = params["p0"] {
            if let poStr = params["p0"] {
                //: let token = NSDate.getCurrentTimeStamp()
                let token = NSDate.commonExpress()
                //: reqModel.addHeaderToken = token
                reqModel.addHeaderToken = token
                //: let key = token.appending(TokenSaltStr)
                let key = token.appending(appSkipName)
                //: params["p0"] = (poStr as? String)?.encrypt(withKey: key)
                params["p0"] = (poStr as? String)?.model(key)
            }
            //: reqModel.params = params
            reqModel.params = params
            //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
            const_backRateStr.lumbarVertebraContainer(model: reqModel) { _, _, _ in
            }
            //: }else {
        } else {
            //: if isRetryDeviceIdTime <= 384 {
            if mainStreamName <= 384 {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + isRetryDeviceIdTime) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + mainStreamName) {
                    //: isRetryDeviceIdTime *= 2
                    mainStreamName *= 2
                    //: self.func__reportDeviceIdentifier()
                    self.haveBass()
                }
            }
        }
    }

    //: class func func__reportFCMID() {
    class func someoneFcmid() {
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: let params = ["token": token]
                let params = [String(bytes: main_foreMessage.reversed(), encoding: .utf8)!: token]
                //: let reqModel = TalkingRequestModel.init()
                let reqModel = ProcessingThen()
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.requestPath = "app/reportFcmPushToken"
                reqModel.requestPath = (String(main_scoreKeyStr.suffix(6)) + "portFc" + String(dataStretchSameUrl.prefix(6)) + "oken")
                //: reqModel.params = params
                reqModel.params = params
                //: reqModel.showErrorStatusBar = false
                reqModel.showErrorStatusBar = false
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                const_backRateStr.lumbarVertebraContainer(model: reqModel) { _, _, _ in
                }
            }
        }
    }

    //: class func func__initAppRequest() {
    class func hiRequest() {
        //: if isRequestingInit {
        if dataRateMsg {
            //: return
            return
        }
        //: isRequestingInit = true
        dataRateMsg = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "app/init"
        reqModel.requestPath = (String(noti_beyondPath))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, _, _ in
            //: isRequestingInit =  false
            dataRateMsg = false
            //: if succeed && DismissReactiveCompatible.share.request_HasInit == false {
            if succeed && DismissReactiveCompatible.share.request_HasInit == false {
                //: DismissReactiveCompatible.share.request_HasInit = true
                DismissReactiveCompatible.share.request_HasInit = true
            }
        }
    }

    //: class func func__initRequestHost(completion: @escaping FinishBlock) {
    class func pull(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "app/ping"
        reqModel.requestPath = (String(appSuccessfulName.suffix(4)) + "ping")
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
