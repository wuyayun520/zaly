
//: Declare String Begin

/*: "Notification.Beauty.Feature.Modity" :*/
fileprivate let kTickMessage:[UInt8] = [0x48,0x69,0x72,0x6f,0x60,0x6f,0x65,0x67,0x72,0x6f,0x69,0x68,0x28,0x44,0x63,0x67,0x73,0x72,0x7f,0x28,0x40,0x63,0x67,0x72,0x73,0x74,0x63,0x28,0x4b,0x69,0x62,0x6f,0x72,0x7f]

/*: "Notification.Beauty.Filter.Modity" :*/
fileprivate let userPubliclyTitle:[UInt8] = [0x4f,0x6e,0x75,0x68,0x67,0x68,0x62,0x60,0x75,0x68,0x6e,0x6f,0x2f,0x43,0x64,0x60,0x74,0x75,0x78,0x2f,0x47,0x68,0x6d,0x75,0x64,0x73,0x2f,0x4c,0x6e,0x65,0x68,0x75,0x78]

private func visitorHide(country num: UInt8) -> UInt8 {
    return num ^ 1
}

/*: "Notification.Beauty.Filter.ValueChange" :*/
fileprivate let noti_evaluationStr:[UInt8] = [0x2a,0x4b,0x50,0x45,0x42,0x45,0x3f,0x3d,0x50,0x45,0x4b,0x4a,0xa,0x1e,0x41,0x3d,0x51,0x50,0x55,0xa,0x22,0x45,0x48,0x50,0x41,0x4e,0xa,0x32,0x3d,0x48,0x51,0x41,0x1f,0x44,0x3d,0x4a,0x43,0x41]

fileprivate func phoneProvide(become num: UInt8) -> UInt8 {
    let value = Int(num) - 220
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "PortraitFilters" :*/
fileprivate let main_glassWrapId:String = "weak enable properly refuse ourPortra"
fileprivate let constPossibleTitle:String = "teequitys"

/*: "SceneryFilters" :*/
fileprivate let const_closedValue:String = "Scenerimpression index voice accuracy lower"
fileprivate let kCommitId:String = "compete scriptyFilters"

/*: "StillLifeFilters" :*/
fileprivate let main_lensData:String = "arrangement each guidance longStillLi"
fileprivate let const_bucketData:[Character] = ["f","e","F"]
fileprivate let app_crushReserveFormat:String = "ilttemprs"

/*: "DeliciousFoodFilters" :*/
fileprivate let notiFadeName:[Character] = ["D","e","l","i","c","i","o","u","s","F","o","o","d","F","i","l","t","e","r","s"]

/*: ".bundle" :*/
fileprivate let dataYesName:String = "library rank.b"
fileprivate let user_calculationData:[Character] = ["u","n","d","l","e"]

/*: "model" :*/
fileprivate let app_onName:[Character] = ["m","o","d","e","l"]

/*: "filter_style" :*/
fileprivate let constHelloContent:[Character] = ["f","i","l","t","e"]
fileprivate let mainOldName:[Character] = ["r"]
fileprivate let kWarnTitle:String = "slim book manual bond gray_style"

/*: "common_object" :*/
fileprivate let noti_distanceName:String = "COMMO"
fileprivate let constWarmId:String = "portrait theren_object"

/*: "new_sticker" :*/
fileprivate let noti_hangPath:[Character] = ["n","e","w","_","s","t"]
fileprivate let constClingLocalMessage:[Character] = ["i","c","k","e","r"]

/*: "2d_sticker" :*/
fileprivate let appSuitWaterFormat:String = "2d_stictransform slide ref background"
fileprivate let userSecureStr:String = "keexplore"

/*: "avatar_sticker" :*/
fileprivate let constTrackKey:[Character] = ["a","v","a","t","a","r","_","s","t","i","c","k"]
fileprivate let notiSuspendText:String = "eexpress"

/*: "3d_sticker" :*/
fileprivate let k_mResourceStr:String = "3d_stail migration"

/*: "hand_gesture_sticker" :*/
fileprivate let show_keepReserveValue:[Character] = ["h","a","n","d","_","g"]
fileprivate let user_waterGameStr:String = "personalsturpersonal"
fileprivate let const_sitIgnoreMessage:String = "become lack mist_sticker"

/*: "deformation_sticker" :*/
fileprivate let notiPlainMsg:String = "defsupposed"
fileprivate let notiSeveralMessage:String = "per situation operation difference removeion_"

/*: "segment_sticker" :*/
fileprivate let show_dueMsg:String = "segmenwhat"
fileprivate let data_minimumUrl:String = "of bullet harassment send disable_sticker"

/*: "face_change_sticker" :*/
fileprivate let data_dominantFormat:String = "exception express make three aroundface_"
fileprivate let main_trustMsg:[Character] = ["c","h","a","n","g","e","_","s","t","i","c","k","e","r"]

/*: "particle_sticker" :*/
fileprivate let show_galleryAnyoneFormat:[Character] = ["p","a","r","t","i","c","l","e","_","s","t"]
fileprivate let dataHourId:[Character] = ["i","c","k","e","r"]

/*: "zip" :*/
fileprivate let const_mpTakeStr:String = "zimechanism"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NightParamUtil.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/9.
//

//: import MachO
import MachO
//: import UIKit
import UIKit

/// 美颜的类别
//: @objc enum STBeautyCategory: Int {
@objc enum ProgValueConvertible: Int {
    //: case Unknown = 0
    case Unknown = 0

    //: case Base
    case Base
    //: case Shape
    case Shape
    //: case MicroSurgery
    case MicroSurgery
    //: case MakeUp
    case MakeUp
    //: case Filter
    case Filter
    //: case Adjust
    case Adjust
}

/// 滤镜
//: @objc enum STEffectsType: Int {
@objc enum LovelyCustomReflectable: Int {
    //: case FeatureTypeUnknown = 0
    case FeatureTypeUnknown = 0

    // 美颜
    //: case Whiten = 101
    case Whiten = 101 // 美白
    //: case Ruddy
    case Ruddy // 红润
    //: case Dermabrasion
    case Dermabrasion // 磨皮

    // 美形
    //: case ShrinkFace
    case ShrinkFace // 瘦脸
    //: case EnlargeEyes
    case EnlargeEyes // 大眼
    //: case ShrinkJaw
    case ShrinkJaw // 小脸
    //: case NarrowFace
    case NarrowFace // 窄脸
    //: case RoundEye
    case RoundEye // 圆眼

    // 微整形
    //: case ThinFaceShape
    case ThinFaceShape // 瘦脸型
    //: case Chin
    case Chin // 下巴
    //: case HairLine
    case HairLine // 额头
    //: case NarrowNose
    case NarrowNose // 瘦鼻翼
    //: case LengthNose
    case LengthNose // 长鼻
    //: case MouthSize
    case MouthSize // 嘴形
    //: case BrightEye
    case BrightEye // 亮眼
    //: case RemoveDarkCircles
    case RemoveDarkCircles // 祛黑眼圈
    //: case RemoveNasolabialFolds
    case RemoveNasolabialFolds // 祛法令纹
    //: case WhiteTeeth
    case WhiteTeeth // 亮牙
    //: case ShrinkCheekbone
    case ShrinkCheekbone // 瘦颧骨

    //: case ProfileRhinoplasty
    case ProfileRhinoplasty // 侧脸隆鼻
    //: case LengthPhiltrum
    case LengthPhiltrum // 缩人中
    //: case AppleMusle
    case AppleMusle // 苹果肌
    //: case EyeDistance
    case EyeDistance // 眼距
    //: case EyeAngle
    case EyeAngle // 眼睛角度
    //: case OpenCanthus
    case OpenCanthus // 开眼角

    // 调整
    //: case Contrast
    case Contrast // 对比度
    //: case Saturation
    case Saturation // 饱和度
    //: case Sharpen
    case Sharpen // 锐化

    // 美妆
    //: case STBMPTYPE_LIP
    case STBMPTYPE_LIP // 腮红
    //: case STBMPTYPE_BROW
    case STBMPTYPE_BROW // 眉毛
    //: case STBMPTYPE_FACE
    case STBMPTYPE_FACE // 修容
    //: case STBMPTYPE_BLUSH
    case STBMPTYPE_BLUSH // 口红
    //: case STBMPTYPE_EYE
    case STBMPTYPE_EYE // 眼影
    //: case STBMPTYPE_EYELINER
    case STBMPTYPE_EYELINER // 眼线
    //: case STBMPTYPE_EYELASH
    case STBMPTYPE_EYELASH // 眼睫毛
    //: case STBMPTYPE_EYEBALL
    case STBMPTYPE_EYEBALL // 美瞳
    //: case STBMPTYPE_SubItem
    case STBMPTYPE_SubItem // 美妆的子项

    // 滤镜
    //: case FilterPortrait
    case FilterPortrait //
    //: case FilterScenery
    case FilterScenery //
    //: case FilterStillLife
    case FilterStillLife //
    //: case FilterDeliciousFood
    case FilterDeliciousFood //
    //: case Filter_SubItem
    case Filter_SubItem // 滤镜的子项

    // 贴纸
    //: case TypeNew = 201
    case TypeNew = 201 //
    //: case Type2D
    case Type2D //
    //: case TypeAvatar
    case TypeAvatar //
    //: case Type3D
    case Type3D //
    //: case TypeGesture
    case TypeGesture //
    //: case TypeSegment
    case TypeSegment //
    //: case TypeDeformation
    case TypeDeformation //
    //: case TypeMorph
    case TypeMorph //
    //: case TypeParticle
    case TypeParticle //
    //: case TypeObjectTrack
    case TypeObjectTrack //

    // 特效
    //: case Sticker2D = 301
    case Sticker2D = 301 //
    //: case StickerAvatar
    case StickerAvatar //
    //: case Sticker3D
    case Sticker3D //
    //: case StickerGesture
    case StickerGesture //
    //: case StickerSegment
    case StickerSegment //
    //: case StickerFaceChange
    case StickerFaceChange //
    //: case StickerFaceDeformation
    case StickerFaceDeformation //
    //: case StickerParticle
    case StickerParticle //
    //: case StickerNew
    case StickerNew //
    //: case StickerMy
    case StickerMy //
    //: case ObjectTrack
    case ObjectTrack //
}

//: public let kNotificationBeautyFeatureModity = NSNotification.Name(rawValue: "Notification.Beauty.Feature.Modity")
public let mainTableTitle = NSNotification.Name(rawValue: String(bytes: kTickMessage.map{$0^6}, encoding: .utf8)!)
/// 选择滤镜通知
//: public let kNotificationSelectBeautyFilter = NSNotification.Name(rawValue: "Notification.Beauty.Filter.Modity")
public let showCreateFormat = NSNotification.Name(rawValue: String(bytes: userPubliclyTitle.map{visitorHide(country: $0)}, encoding: .utf8)!)
/// 滤镜强度变化通知
//: public let kNotificationBeautyFilterValueChange  =  NSNotification.Name(rawValue: "Notification.Beauty.Filter.ValueChange")
public let noti_infoRouteTitle = NSNotification.Name(rawValue: String(bytes: noti_evaluationStr.map{phoneProvide(become: $0)}, encoding: .utf8)!)

//: @objcMembers public class NightParamUtil: NSObject {
@objcMembers public class NightParamUtil: NSObject {
    //: public let kNotificationBeautyFeatureModityStr = "Notification.Beauty.Feature.Modity"
    public let kNotificationBeautyFeatureModityStr = String(bytes: kTickMessage.map{$0^6}, encoding: .utf8)!
    /// 选择滤镜通知
    //: public let kNotificationSelectBeautyFilterStr = "Notification.Beauty.Filter.Modity"
    public let kNotificationSelectBeautyFilterStr = String(bytes: userPubliclyTitle.map{visitorHide(country: $0)}, encoding: .utf8)!
    /// 滤镜强度变化通知
    //: public let kNotificationBeautyFilterValueChangeStr  =  "Notification.Beauty.Filter.ValueChange"
    public let kNotificationBeautyFilterValueChangeStr = String(bytes: noti_evaluationStr.map{phoneProvide(become: $0)}, encoding: .utf8)!

    //: public func BeautifyParam(beautifyHandle: st_handle_t, type: st_beautify_type, value: Float) {
    public func untilTableGold(beautifyHandle: st_handle_t, type: st_beautify_type, value: Float) {
        //: let iRet = st_mobile_beautify_setparam(beautifyHandle, type, value)
        let iRet = st_mobile_beautify_setparam(beautifyHandle, type, value)
        //: if (iRet != ST_OK) {
        if iRet != ST_OK {
            //: print("st mobile beautify set beautiy type %d failed: %d", type, iRet)
        }
    }

    /*
     * 返回CPU占用率的分子（分母为100）
     */
    //: func getCpuUsage() -> Float {
    func coexist() -> Float {
        //: return 0
        return 0
    }

    /**
     获取特定类型滤镜路径

     @param type LovelyCustomReflectable
     @return 路径数组
     */
    //: func getFilterModelPathsByType(type: STEffectsType) -> Array<Any> {
    func medalType(type: LovelyCustomReflectable) -> [Any] {
        //: var strPrefix = NSString.init()
        var strPrefix = NSString()

        //: switch (type) {
        switch type {
        //: case .FilterPortrait:
        case .FilterPortrait:
            //: strPrefix = "PortraitFilters"
            strPrefix = (String(main_glassWrapId.suffix(6)) + "itFil" + constPossibleTitle.replacingOccurrences(of: "equity", with: "r")) as NSString
                //: break

        //: case .FilterScenery:
        case .FilterScenery:
            //: strPrefix = "SceneryFilters"
            strPrefix = (String(const_closedValue.prefix(6)) + String(kCommitId.suffix(8))) as NSString
                //: break

        //: case .FilterStillLife:
        case .FilterStillLife:
            //: strPrefix = "StillLifeFilters"
            strPrefix = (String(main_lensData.suffix(7)) + String(const_bucketData) + app_crushReserveFormat.replacingOccurrences(of: "temp", with: "e")) as NSString
                //: break

        //: case .FilterDeliciousFood:
        case .FilterDeliciousFood:
            //: strPrefix = "DeliciousFoodFilters"
            strPrefix = (String(notiFadeName)) as NSString
                //: break

        //: default:
        default:
            //: break
            break
        }

        //: let fileManger = FileManager.init()
        let fileManger = FileManager()
        //: let strBundlePath: String = PodspecBundle.bundle.resourcePath?.appending(strPrefix.appending(".bundle")) ?? ""
        let strBundlePath: String = CoverPodspecBundle.bundle.resourcePath?.appending(strPrefix.appending((String(dataYesName.suffix(2)) + String(user_calculationData)))) ?? ""

        //: var arrFileNames: [String] = try! fileManger.contentsOfDirectory(atPath: strBundlePath)
        var arrFileNames: [String] = try! fileManger.contentsOfDirectory(atPath: strBundlePath)

        //: let arrFilterPaths = NSMutableArray.init()
        let arrFilterPaths = NSMutableArray()

        //: for strFileName in arrFileNames {
        for strFileName in arrFileNames {
            //: if strFileName.hasPrefix("model") && strFileName.hasPrefix("filter_style") {
            if strFileName.hasPrefix((String(app_onName))) && strFileName.hasPrefix((String(constHelloContent) + String(mainOldName) + String(kWarnTitle.suffix(6)))) {
                //: arrFilterPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
                arrFilterPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
            }
        }

        //: let strDocumentsPath = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last!
        let strDocumentsPath = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last!

        //: let filterPortraitPath = strDocumentsPath.appending("PortraitFilters")
        let filterPortraitPath = strDocumentsPath.appending((String(main_glassWrapId.suffix(6)) + "itFil" + constPossibleTitle.replacingOccurrences(of: "equity", with: "r")))
        //: let filterSceneryPath = strDocumentsPath.appending("SceneryFilters")
        let filterSceneryPath = strDocumentsPath.appending((String(const_closedValue.prefix(6)) + String(kCommitId.suffix(8))))
        //: let filterStillLifePath = strDocumentsPath.appending("StillLifeFilters")
        let filterStillLifePath = strDocumentsPath.appending((String(main_lensData.suffix(7)) + String(const_bucketData) + app_crushReserveFormat.replacingOccurrences(of: "temp", with: "e")))
        //: let filterDeliciousFoodPath = strDocumentsPath.appending("DeliciousFoodFilters")
        let filterDeliciousFoodPath = strDocumentsPath.appending((String(notiFadeName)))

        //: if !FileManager.default.fileExists(atPath: filterPortraitPath) {
        if !FileManager.default.fileExists(atPath: filterPortraitPath) {
            //: try? fileManger.createDirectory(atPath: filterPortraitPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: filterPortraitPath, withIntermediateDirectories: true, attributes: nil)
        }

        //: if !FileManager.default.fileExists(atPath: filterSceneryPath) {
        if !FileManager.default.fileExists(atPath: filterSceneryPath) {
            //: try? fileManger.createDirectory(atPath: filterSceneryPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: filterSceneryPath, withIntermediateDirectories: true, attributes: nil)
        }

        //: if !FileManager.default.fileExists(atPath: filterStillLifePath) {
        if !FileManager.default.fileExists(atPath: filterStillLifePath) {
            //: try? fileManger.createDirectory(atPath: filterStillLifePath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: filterStillLifePath, withIntermediateDirectories: true, attributes: nil)
        }

        //: if !FileManager.default.fileExists(atPath: filterDeliciousFoodPath) {
        if !FileManager.default.fileExists(atPath: filterDeliciousFoodPath) {
            //: try? fileManger.createDirectory(atPath: filterDeliciousFoodPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: filterDeliciousFoodPath, withIntermediateDirectories: true, attributes: nil)
        }

        //: let filterPath = strDocumentsPath.appending(strPrefix as String)
        let filterPath = strDocumentsPath.appending(strPrefix as String)

        //: do {
        do {
            //: arrFileNames = try fileManger.contentsOfDirectory(atPath: filterPath)
            arrFileNames = try fileManger.contentsOfDirectory(atPath: filterPath)
            //: }catch {
        } catch {}
        //: for strFileName in arrFileNames {
        for strFileName in arrFileNames {
            //: if strFileName.hasPrefix("model") && strFileName.hasPrefix("filter_style") {
            if strFileName.hasPrefix((String(app_onName))) && strFileName.hasPrefix((String(constHelloContent) + String(mainOldName) + String(kWarnTitle.suffix(6)))) {
                //: arrFilterPaths.add(NSString.path(withComponents: [filterPath, strFileName]))
                arrFilterPaths.add(NSString.path(withComponents: [filterPath, strFileName]))
            }
        }

        //: return arrFilterPaths.copy() as! Array<Any>
        return arrFilterPaths.copy() as! [Any]
    }

    /**
     获取通用物体素材路径

     @return 路径数组
     */
    //: func getTrackerPaths() -> Array<Any> {
    func getSeekPaths() -> [Any] {
        //: let fileManager = FileManager.init()
        let fileManager = FileManager()

        //: let strBundlePath: String = PodspecBundle.bundle.resourcePath ?? ""
        let strBundlePath: String = CoverPodspecBundle.bundle.resourcePath ?? ""

        //: var arrFileNames: [String] = try! fileManager.contentsOfDirectory(atPath: strBundlePath)
        var arrFileNames: [String] = try! fileManager.contentsOfDirectory(atPath: strBundlePath)

        //: let arrPaths = NSMutableArray.init()
        let arrPaths = NSMutableArray()

        //: for strFileName in arrFileNames {
        for strFileName in arrFileNames {
            //: if strFileName.hasPrefix("common_object") {
            if strFileName.hasPrefix((noti_distanceName.lowercased() + String(constWarmId.suffix(8)))) {
                //: arrPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
                arrPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
            }
        }

        //: let strDocumentsPath: String = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true) .last!
        let strDocumentsPath: String = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last!

        //: do {
        do {
            //: arrFileNames = try fileManager.contentsOfDirectory(atPath: strDocumentsPath)
            arrFileNames = try fileManager.contentsOfDirectory(atPath: strDocumentsPath)
            //: }catch {
        } catch {}

        //: for strFileName in arrFileNames {
        for strFileName in arrFileNames {
            //: if strFileName.hasPrefix("common_object") {
            if strFileName.hasPrefix((noti_distanceName.lowercased() + String(constWarmId.suffix(8)))) {
                //: arrPaths.add(NSString.path(withComponents: [strDocumentsPath, strFileName]))
                arrPaths.add(NSString.path(withComponents: [strDocumentsPath, strFileName]))
            }
        }

        //: return arrPaths.copy() as! Array<Any>
        return arrPaths.copy() as! [Any]
    }

    // 特效-动态贴图
    //: func getStickerPathsByType(type: STEffectsType) -> Array<Any> {
    func quantityo(type: LovelyCustomReflectable) -> [Any] {
        //: var strPrefix = ""
        var strPrefix = ""

        //: switch (type) {
        switch type {
        //: case .StickerNew:
        case .StickerNew:
            //: strPrefix = "new_sticker"
            strPrefix = (String(noti_hangPath) + String(constClingLocalMessage))

                //: break

        //: case .Sticker2D:
        case .Sticker2D:
            //: strPrefix = "2d_sticker"
            strPrefix = (String(appSuitWaterFormat.prefix(7)) + userSecureStr.replacingOccurrences(of: "explore", with: "r"))
                //: break

        //: case .StickerAvatar:
        case .StickerAvatar:
            //: strPrefix = "avatar_sticker"
            strPrefix = (String(constTrackKey) + notiSuspendText.replacingOccurrences(of: "express", with: "r"))
                //: break

        //: case .Sticker3D:
        case .Sticker3D:
            //: strPrefix = "3d_sticker"
            strPrefix = (String(k_mResourceStr.prefix(4)) + "ticker")
                //: break

        //: case .StickerGesture:
        case .StickerGesture:
            //: strPrefix = "hand_gesture_sticker"
            strPrefix = (String(show_keepReserveValue) + user_waterGameStr.replacingOccurrences(of: "personal", with: "e") + String(const_sitIgnoreMessage.suffix(8)))
                //: break

        //: case .StickerFaceDeformation:
        case .StickerFaceDeformation:
            //: strPrefix = "deformation_sticker"
            strPrefix = (notiPlainMsg.replacingOccurrences(of: "supposed", with: "o") + "rmat" + String(notiSeveralMessage.suffix(4)) + "sticker")
                //: break

        //: case .StickerSegment:
        case .StickerSegment:
            //: strPrefix = "segment_sticker"
            strPrefix = (show_dueMsg.replacingOccurrences(of: "what", with: "t") + String(data_minimumUrl.suffix(8)))
                //: break

        //: case .StickerFaceChange:
        case .StickerFaceChange:
            //: strPrefix = "face_change_sticker"
            strPrefix = (String(data_dominantFormat.suffix(5)) + String(main_trustMsg))
                //: break

        //: case .StickerParticle:
        case .StickerParticle:
            //: strPrefix = "particle_sticker"
            strPrefix = (String(show_galleryAnyoneFormat) + String(dataHourId))

        //: default:
        default:
            //: break
            break
        }

        //: let fileManger = FileManager.init()
        let fileManger = FileManager()

        //: let strBundlePath: String = PodspecBundle.bundle.resourcePath?.appending(strPrefix.appending(".bundle")) ?? ""
        let strBundlePath: String = CoverPodspecBundle.bundle.resourcePath?.appending(strPrefix.appending((String(dataYesName.suffix(2)) + String(user_calculationData)))) ?? ""

        //: var arrFileNames: [String] = try! fileManger.contentsOfDirectory(atPath: strBundlePath)
        var arrFileNames: [String] = try! fileManger.contentsOfDirectory(atPath: strBundlePath)

        //: let arrZipPaths = NSMutableArray.init()
        let arrZipPaths = NSMutableArray()

        //: for strFileName in arrFileNames {
        for strFileName in arrFileNames {
            //: if strFileName.hasPrefix("zip") {
            if strFileName.hasPrefix((const_mpTakeStr.replacingOccurrences(of: "mechanism", with: "p"))) {
                //: arrZipPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
                arrZipPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
            }
        }

        //: let strDocumentsPath = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last!
        let strDocumentsPath = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last!

        //: let stickerNewPath = strDocumentsPath.appending("new_sticker")
        let stickerNewPath = strDocumentsPath.appending((String(noti_hangPath) + String(constClingLocalMessage)))
        //: let sticker2dPath = strDocumentsPath.appending("2d_sticker")
        let sticker2dPath = strDocumentsPath.appending((String(appSuitWaterFormat.prefix(7)) + userSecureStr.replacingOccurrences(of: "explore", with: "r")))
        //: let stickerAvatarPath = strDocumentsPath.appending("avatar_sticker")
        let stickerAvatarPath = strDocumentsPath.appending((String(constTrackKey) + notiSuspendText.replacingOccurrences(of: "express", with: "r")))
        //: let sticker3dPath = strDocumentsPath.appending("3d_sticker")
        let sticker3dPath = strDocumentsPath.appending((String(k_mResourceStr.prefix(4)) + "ticker"))
        //: let stickerHandGesturePath = strDocumentsPath.appending("hand_gesture_sticker")
        let stickerHandGesturePath = strDocumentsPath.appending((String(show_keepReserveValue) + user_waterGameStr.replacingOccurrences(of: "personal", with: "e") + String(const_sitIgnoreMessage.suffix(8))))
        //: let stickerSegmentPath = strDocumentsPath.appending("segment_sticker")
        let stickerSegmentPath = strDocumentsPath.appending((show_dueMsg.replacingOccurrences(of: "what", with: "t") + String(data_minimumUrl.suffix(8))))
        //: let stickerDeformationPath = strDocumentsPath.appending("deformation_sticker")
        let stickerDeformationPath = strDocumentsPath.appending((notiPlainMsg.replacingOccurrences(of: "supposed", with: "o") + "rmat" + String(notiSeveralMessage.suffix(4)) + "sticker"))
        //: let stickerFaceChangePath = strDocumentsPath.appending("face_change_sticker")
        let stickerFaceChangePath = strDocumentsPath.appending((String(data_dominantFormat.suffix(5)) + String(main_trustMsg)))
        //: let stickerParticlePath = strDocumentsPath.appending("particle_sticker")
        let stickerParticlePath = strDocumentsPath.appending((String(show_galleryAnyoneFormat) + String(dataHourId)))

        //: if !FileManager.default.fileExists(atPath: stickerNewPath) {
        if !FileManager.default.fileExists(atPath: stickerNewPath) {
            //: try? fileManger.createDirectory(atPath: stickerNewPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerNewPath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: sticker2dPath) {
        if !FileManager.default.fileExists(atPath: sticker2dPath) {
            //: try? fileManger.createDirectory(atPath: sticker2dPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: sticker2dPath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: stickerAvatarPath) {
        if !FileManager.default.fileExists(atPath: stickerAvatarPath) {
            //: try? fileManger.createDirectory(atPath: stickerAvatarPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerAvatarPath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: sticker3dPath) {
        if !FileManager.default.fileExists(atPath: sticker3dPath) {
            //: try? fileManger.createDirectory(atPath: sticker3dPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: sticker3dPath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: stickerHandGesturePath) {
        if !FileManager.default.fileExists(atPath: stickerHandGesturePath) {
            //: try? fileManger.createDirectory(atPath: stickerHandGesturePath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerHandGesturePath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: stickerSegmentPath) {
        if !FileManager.default.fileExists(atPath: stickerSegmentPath) {
            //: try? fileManger.createDirectory(atPath: stickerSegmentPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerSegmentPath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: stickerDeformationPath) {
        if !FileManager.default.fileExists(atPath: stickerDeformationPath) {
            //: try? fileManger.createDirectory(atPath: stickerDeformationPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerDeformationPath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: stickerFaceChangePath) {
        if !FileManager.default.fileExists(atPath: stickerFaceChangePath) {
            //: try? fileManger.createDirectory(atPath: stickerFaceChangePath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerFaceChangePath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: stickerParticlePath) {
        if !FileManager.default.fileExists(atPath: stickerParticlePath) {
            //: try? fileManger.createDirectory(atPath: stickerParticlePath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerParticlePath, withIntermediateDirectories: true, attributes: nil)
        }

        //: let stickerPath = strDocumentsPath.appending(strPrefix)
        let stickerPath = strDocumentsPath.appending(strPrefix)

        //: do {
        do {
            //: arrFileNames = try fileManger.contentsOfDirectory(atPath: stickerPath)
            arrFileNames = try fileManger.contentsOfDirectory(atPath: stickerPath)
            //: }catch {
        } catch {}

        //: for strFileName in arrFileNames {
        for strFileName in arrFileNames {
            //: if strFileName.hasPrefix("zip") {
            if strFileName.hasPrefix((const_mpTakeStr.replacingOccurrences(of: "mechanism", with: "p"))) {
                //: arrZipPaths.add(NSString.path(withComponents: [stickerPath, strFileName]))
                arrZipPaths.add(NSString.path(withComponents: [stickerPath, strFileName]))
            }
        }

        //: return arrZipPaths.copy() as! Array<Any>
        return arrZipPaths.copy() as! [Any]
    }
}
