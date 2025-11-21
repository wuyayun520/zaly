
//: Declare String Begin

/*: "filterSuite" :*/
fileprivate let dataDialogName:[Character] = ["f","i","l","t","e","r","S","u","i","t"]
fileprivate let notiManageValue:String = "advertising"

/*: "customSuite" :*/
fileprivate let const_universalId:String = "cuslateom"

/*: "App/ProviderCacheCost" :*/
fileprivate let dataMemoryUrl:[Character] = ["A","p","p","/","S","T","F","i","l"]
fileprivate let userYearName:String = "terCashall additional share"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProviderCacheCost.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: @objcMembers public class ProviderCacheCost: NSObject, NSSecureCoding {
@objcMembers public class ProviderCacheCost: NSObject, NSSecureCoding {
    //: var curBeautySuite: BeautyItemType?
    var curBeautySuite: PsychicEnergySignedCount?
    //: var curFeature: STEffectsType?
    var curFeature: LovelyCustomReflectable?
    /// 用户的滤镜设置
    //: public var filterSuite: STFilterEntiretycostModel?
    public var filterSuite: FirReactiveCompatible?
    /// 滤镜列表模型数组
    //: var filterModelArray = Array<STFilterLooksModel>.init()
    var filterModelArray = Array<RevenueThen>.init()

    //: var customSuite =  STFilterEntiretycostModel.init()
    var customSuite = FirReactiveCompatible() // 用户自定义的美颜

    //: static public let share = ProviderCacheCost()
    public static let share = ProviderCacheCost()

    //: public static var supportsSecureCoding: Bool {
    public static var supportsSecureCoding: Bool {
        //: return true
        return true
    }

    //: required public init?(coder: NSCoder) {
    public required init?(coder: NSCoder) {
        //: super.init()
        super.init()

        //: let filDict =  coder.decodeObject(forKey: "filterSuite")
        let filDict = coder.decodeObject(forKey: (String(dataDialogName) + notiManageValue.replacingOccurrences(of: "advertising", with: "e")))
        //: let custDict =  coder.decodeObject(forKey: "customSuite")
        let custDict = coder.decodeObject(forKey: (const_universalId.replacingOccurrences(of: "late", with: "t") + "Suite"))
        //: if filDict != nil {
        if filDict != nil {
            //: filterSuite = try! STFilterEntiretycostModel.init(dictionary: filDict as? [AnyHashable: Any])
            filterSuite = try! FirReactiveCompatible(dictionary: filDict as? [AnyHashable: Any])
        }
        //: if custDict != nil {
        if custDict != nil {
            //: customSuite = try! STFilterEntiretycostModel.init(dictionary: custDict as? [AnyHashable: Any])
            customSuite = try! FirReactiveCompatible(dictionary: custDict as? [AnyHashable: Any])
        }
    }

    //: public func encode(with coder: NSCoder) {
    public func encode(with coder: NSCoder) {
        //: let filDict = filterSuite?.toDictionary() ?? [:]
        let filDict = filterSuite?.toDictionary() ?? [:]
        //: let custDict = customSuite.toDictionary() ?? [:]
        let custDict = customSuite.toDictionary() ?? [:]
        //: coder.encode(filDict, forKey: "filterSuite")
        coder.encode(filDict, forKey: (String(dataDialogName) + notiManageValue.replacingOccurrences(of: "advertising", with: "e")))
        //: coder.encode(custDict, forKey: "customSuite")
        coder.encode(custDict, forKey: (const_universalId.replacingOccurrences(of: "late", with: "t") + "Suite"))
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()

        //: self.curBeautySuite = .Face
        self.curBeautySuite = .Face

        //: checkAllSuite()
        secureStart()

        //: self.curFeature = .Whiten
        self.curFeature = .Whiten // 每次打开APP，都重置
        //: NotificationCenter.default.addObserver(self, selector: #selector(didReceiveFeatureValueChange(sender:)), name: kNotificationBeautyFeatureModity, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(secureSender(sender:)), name: mainTableTitle, object: nil)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }
}

//: @objc extension ProviderCacheCost {
@objc extension ProviderCacheCost {
    /// 获取缓存
    //: public func getLocalModel() {
    public func simulation() {
        //: let path = self.cachePath()
        let path = self.closeicialBind()
        //: if FileManager.default.fileExists(atPath: path) {
        if FileManager.default.fileExists(atPath: path) {
            //: var obj: ProviderCacheCost?
            var obj: ProviderCacheCost?

            //: if #available(iOS 11.0, *) {
            if #available(iOS 11.0, *) {
                //: do {
                do {
                    //: let data = try Data(contentsOf: URL(fileURLWithPath: path))
                    let data = try Data(contentsOf: URL(fileURLWithPath: path))
                    //: if let model: ProviderCacheCost =  try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? ProviderCacheCost {
                    if let model: ProviderCacheCost = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? ProviderCacheCost {
                        //: obj  = model
                        obj = model
                    }
                    //: } catch {
                } catch {
                    //: print("unarchive failure in init")
                }
                //: }else {
            } else {
                //: let model: ProviderCacheCost? = NSKeyedUnarchiver.unarchiveObject(withFile: path) as? ProviderCacheCost
                let model: ProviderCacheCost? = NSKeyedUnarchiver.unarchiveObject(withFile: path) as? ProviderCacheCost
                //: if  model != nil {
                if model != nil {
                    //: obj  = model
                    obj = model
                }
            }

            //: if obj == nil {
            if obj == nil {
                //: try? FileManager.default.removeItem(atPath: path)
                try? FileManager.default.removeItem(atPath: path)
                //: }else {
            } else {
                //: self.filterSuite = obj?.filterSuite
                self.filterSuite = obj?.filterSuite
                //: self.customSuite = obj!.customSuite
                self.customSuite = obj!.customSuite
                //: initFilterData()
                filterInitData()
            }
        }
    }

    //: public func currentBeautySuite() -> STFilterEntiretycostModel {
    public func zap() -> FirReactiveCompatible {
        //: return self.customSuite
        return self.customSuite
    }

    //: func checkAllSuite() {
    func secureStart() {
        //: customSuite  = STFilterEntiretycostModel.init().initWith(suiteType: .Face)
        customSuite = FirReactiveCompatible().outlineThin(suiteType: .Face)

        //: if filterSuite == nil {
        if filterSuite == nil {
            //: filterSuite  = STFilterEntiretycostModel.init()
            filterSuite = FirReactiveCompatible()
        }
    }

    //: func store() {
    func tarBuild() {
        //: let path = cachePath()
        let path = closeicialBind()
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: let data = try? NSKeyedArchiver.archivedData(withRootObject: self, requiringSecureCoding: true)
            let data = try? NSKeyedArchiver.archivedData(withRootObject: self, requiringSecureCoding: true)
            //: try? data?.write(to: URL(fileURLWithPath: path))
            try? data?.write(to: URL(fileURLWithPath: path))
            //: print("ProviderCacheCost storeRst ")
            //: } else {
        } else {
            // Fallback on earlier versions
        }
    }

    //: func cachePath() -> String {
    func closeicialBind() -> String {
        //: let userId = 0
        let userId = 0

        //: let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appDirectoryPath = (documentDictPath as NSString).appendingPathComponent("App/ProviderCacheCost")
        let appDirectoryPath = (documentDictPath as NSString).appendingPathComponent((String(dataMemoryUrl) + String(userYearName.prefix(5)) + "cheCost"))

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appDirectoryPath) == false {
        if fm.fileExists(atPath: appDirectoryPath) == false {
            //: try? fm.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
            try? fm.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
        }
        //: let filePath = (appDirectoryPath as NSString).appendingPathComponent((userId).description)
        let filePath = (appDirectoryPath as NSString).appendingPathComponent(userId.description)
        //: return filePath
        return filePath
    }

    //: func setCurBeautySuite(curBeautySuite: BeautyItemType) {
    func canisFamiliaris(curBeautySuite: PsychicEnergySignedCount) {
        //: switch (curBeautySuite) {
        switch curBeautySuite {
        //: default:
        default:
            //: self.curBeautySuite = .Face
            self.curBeautySuite = .Face
        }
    }

    // 将用户自定义的套餐重置为默认套餐数值
    //: func resetCustomDefSuite() {
    func resetPromptFlatSuite() {
        //: self.customSuite.resetBeautySuiteValueFor()
        self.customSuite.reset()
        //: self.curBeautySuite = .Face
        self.curBeautySuite = .Face
        //: self.filterSuite = STFilterEntiretycostModel.init()
        self.filterSuite = FirReactiveCompatible()
    }

    // notification
    //: func didReceiveFeatureValueChange(sender: NSNotification) {
    func secureSender(sender: NSNotification) {
        //: var cache: STFilterEntiretycostModel?
        var cache: FirReactiveCompatible?
        //: cache = self.customSuite
        cache = self.customSuite
        //: let featureModel: STFilterLooksModel = sender.object as! STFilterLooksModel
        let featureModel: RevenueThen = sender.object as! RevenueThen
        //: handleFeatureValueChangeWith(beautySuite: cache ?? STFilterEntiretycostModel.init(), featureModel: featureModel)
        pressModel(beautySuite: cache ?? FirReactiveCompatible(), featureModel: featureModel)
    }

    //: func handleFeatureValueChangeWith(beautySuite: STFilterEntiretycostModel, featureModel: STFilterLooksModel) {
    func pressModel(beautySuite: FirReactiveCompatible, featureModel: RevenueThen) {
        //: if (self.curBeautySuite == .Face) {
        if self.curBeautySuite == .Face {
            //: if featureModel.isKind(of: STFilterLooksModel.self) == true {
            if featureModel.isKind(of: RevenueThen.self) == true {
                // [0,1]
                //: let beautyValue = featureModel.beautyValue
                let beautyValue = featureModel.beautyValue

                //: switch (featureModel.featureType) {
                switch featureModel.featureType {
                //: case .Whiten:        beautySuite.fWhitenStrength = beautyValue
                case .Whiten: beautySuite.fWhitenStrength = beautyValue // 美白

                //: case .Ruddy:         beautySuite.fReddenStrength = beautyValue
                case .Ruddy: beautySuite.fReddenStrength = beautyValue // 红润

                //: case .Dermabrasion:  beautySuite.fSmoothStrength = beautyValue
                case .Dermabrasion: beautySuite.fSmoothStrength = beautyValue // 磨皮

                //: case .ShrinkFace:    beautySuite.fShrinkFaceStrength = beautyValue
                case .ShrinkFace: beautySuite.fShrinkFaceStrength = beautyValue // 瘦脸

                //: case .EnlargeEyes:   beautySuite.fEnlargeEyeStrength = beautyValue
                case .EnlargeEyes: beautySuite.fEnlargeEyeStrength = beautyValue // 大眼

                //: case .ShrinkJaw:     beautySuite.fShrinkJawStrength = beautyValue
                case .ShrinkJaw: beautySuite.fShrinkJawStrength = beautyValue // 小脸

                //: case .NarrowFace:    beautySuite.fNarrowFaceStrength = beautyValue
                case .NarrowFace: beautySuite.fNarrowFaceStrength = beautyValue // 窄脸

                //: case .RoundEye:      beautySuite.fRoundEyeStrength = beautyValue
                case .RoundEye: beautySuite.fRoundEyeStrength = beautyValue // 圆眼

                //: case .ThinFaceShape: beautySuite.fThinFaceShapeStrength = beautyValue
                case .ThinFaceShape: beautySuite.fThinFaceShapeStrength = beautyValue // 瘦脸型

                //: case .Chin:          beautySuite.fChinStrength = beautyValue
                case .Chin: beautySuite.fChinStrength = beautyValue // 下巴

                //: case .HairLine:      beautySuite.fHairLineStrength = beautyValue
                case .HairLine: beautySuite.fHairLineStrength = beautyValue // 额头

                //: case .AppleMusle:    beautySuite.fAppleMusleStrength = beautyValue
                case .AppleMusle: beautySuite.fAppleMusleStrength = beautyValue // 苹果肌

                //: case .NarrowNose:    beautySuite.fNarrowNoseStrength = beautyValue
                case .NarrowNose: beautySuite.fNarrowNoseStrength = beautyValue // 瘦鼻翼

                //: case .LengthNose:    beautySuite.fLongNoseStrength = beautyValue
                case .LengthNose: beautySuite.fLongNoseStrength = beautyValue // 长鼻

                //: case .ProfileRhinoplasty: beautySuite.fProfileRhinoplastyStrength = beautyValue
                case .ProfileRhinoplasty: beautySuite.fProfileRhinoplastyStrength = beautyValue // 侧脸隆鼻

                //: case .MouthSize:         beautySuite.fMouthStrength = beautyValue
                case .MouthSize: beautySuite.fMouthStrength = beautyValue // 嘴形

                //: case .LengthPhiltrum:    beautySuite.fPhiltrumStrength = beautyValue
                case .LengthPhiltrum: beautySuite.fPhiltrumStrength = beautyValue // 缩人中

                //: case .EyeDistance:       beautySuite.fEyeDistanceStrength = beautyValue
                case .EyeDistance: beautySuite.fEyeDistanceStrength = beautyValue // 眼距

                //: case .EyeAngle:          beautySuite.fEyeAngleStrength = beautyValue
                case .EyeAngle: beautySuite.fEyeAngleStrength = beautyValue // 眼睛角度

                //: case .OpenCanthus:       beautySuite.fOpenCanthusStrength = beautyValue
                case .OpenCanthus: beautySuite.fOpenCanthusStrength = beautyValue // 开眼角

                //: case .BrightEye:         beautySuite.fBrightEyeStrength = beautyValue
                case .BrightEye: beautySuite.fBrightEyeStrength = beautyValue // 亮眼

                //: case .RemoveDarkCircles: beautySuite.fRemoveDarkCirclesStrength = beautyValue
                case .RemoveDarkCircles: beautySuite.fRemoveDarkCirclesStrength = beautyValue // 祛黑眼圈

                //: case .RemoveNasolabialFolds: beautySuite.fRemoveNasolabialFoldsStrength = beautyValue
                case .RemoveNasolabialFolds: beautySuite.fRemoveNasolabialFoldsStrength = beautyValue // 祛法令纹

                //: case .WhiteTeeth:        beautySuite.fWhiteTeethStrength = beautyValue
                case .WhiteTeeth: beautySuite.fWhiteTeethStrength = beautyValue // 亮牙

                //: case .ShrinkCheekbone:   beautySuite.fShrinkCheekboneStrength = beautyValue
                case .ShrinkCheekbone: beautySuite.fShrinkCheekboneStrength = beautyValue // 瘦颧骨

                //: case .Contrast:
                case .Contrast: // 对比度
                    //: break
                    break
                //: case .Saturation:
                case .Saturation: // 饱和度
                    //: break
                    break
                //: case .Sharpen:
                case .Sharpen: // 锐化
                    //: break
                    break

                //: case .STBMPTYPE_LIP, .STBMPTYPE_BROW, .STBMPTYPE_FACE, .STBMPTYPE_BLUSH, .STBMPTYPE_EYE, .STBMPTYPE_EYELINER, .STBMPTYPE_EYELASH, .STBMPTYPE_EYEBALL:
                case .STBMPTYPE_LIP, .STBMPTYPE_BROW, .STBMPTYPE_FACE, .STBMPTYPE_BLUSH, .STBMPTYPE_EYE, .STBMPTYPE_EYELINER, .STBMPTYPE_EYELASH, .STBMPTYPE_EYEBALL:
                    //: break
                    break
                //: default:
                default:
                    //: break
                    break
                }
            }
        }
    }

    /// -------初始化滤镜资源
    //: func reloadFilterData(model: STFilterLooksModel) {
    func perceive(model: RevenueThen) {
        //: self.filterSuite?.fFilterStrength = model.beautyValue
        self.filterSuite?.fFilterStrength = model.beautyValue
        //: self.filterSuite?.filterName = model.strName
        self.filterSuite?.filterName = model.strName
        //: self.filterSuite?.filterModelPath = model.strPath
        self.filterSuite?.filterModelPath = model.strPath
    }

    //: public func getFilterDataModel() -> STFilterLooksModel? {
    public func modelThe() -> RevenueThen? {
        //: if (self.filterSuite?.filterModelPath.count == 0) {
        if self.filterSuite?.filterModelPath.count == 0 {
            //: return nil
            return nil
        }

        //: for model in self.filterModelArray {
        for model in self.filterModelArray {
            //: if model.strName == self.filterSuite?.filterName {
            if model.strName == self.filterSuite?.filterName {
                //: model.beautyValue = self.filterSuite?.fFilterStrength ?? 0.0
                model.beautyValue = self.filterSuite?.fFilterStrength ?? 0.0
                //: return model
                return model
            }
        }

        //: return nil
        return nil
    }

    //: func rangeMappedValueFrom(rawValue: Float)-> Float {
    func rangeFromValueMappedRaw(rawValue: Float) -> Float {
        // 下面几个情况的商汤SDK值域为【-1,1】，将UI上原始的【0,1】值域转化
        // [0,1] -> [-1,1]
        //    case STBeautyTypeLengthNose:
        //    case STBeautyTypeMouthSize:
        //    case STBeautyTypeChin:
        //    case STBeautyTypeHairLine:
        //    case STBeautyTypeLengthPhiltrum:
        //    case STBeautyTypeEyeDistance:
        //    case STBeautyTypeEyeAngle:

        //: return max(-1.0, min(1.0, rawValue * 2 - 1.0))
        return max(-1.0, min(1.0, rawValue * 2 - 1.0))
    }

    //: func initFilterData() {
    func filterInitData() {
        //: let orignArray  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .Filter)
        let orignArray = RevenueThen().sortMoment(categoryType: .Filter)

        //: if (orignArray.count > 0) {
        if orignArray.count > 0 {
            //: let model = orignArray.first
            let model = orignArray.first
            //: self.filterModelArray = NSMutableArray.init(array: model?.subFilterItemsArr ?? [STFilterLooksModel].init()) as! [STFilterLooksModel]
            self.filterModelArray = NSMutableArray(array: model?.subFilterItemsArr ?? [RevenueThen].init()) as! [RevenueThen]
        }
    }
}
