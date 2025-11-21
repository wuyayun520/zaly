
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_nagBindOriginalStr:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "171615" :*/
fileprivate let mainResistanceRankFeatureMessage:[Character] = ["1","7","1","6","1"]
fileprivate let appAssistFormat:[Character] = ["5"]

/*: "st_slider_thumb" :*/
fileprivate let noti_signalName:String = "st_slilimited inner mirror"
fileprivate let kAttentionHeartMsg:String = "tablehumb"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeauteousnessSmallAdjustView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: class STBeautyAdjustView: UIView {
class BeauteousnessSmallAdjustView: UIView {
    //: var currentItemType = BeautyItemType.Face
    var currentItemType = PsychicEnergySignedCount.Face
    //: var popView: TalkingPopView?
    var popView: TransferPopView?

    //: var curFeatureItem: STFilterLooksModel?
    var curFeatureItem: RevenueThen?

    //: var faceItem: STFilterLooksModel?
    var faceItem: RevenueThen?

    //: var eyesItem: STFilterLooksModel?
    var eyesItem: RevenueThen?

    //: var noseItem: STFilterLooksModel?
    var noseItem: RevenueThen?

    //: var lipItem: STFilterLooksModel?
    var lipItem: RevenueThen?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_nagBindOriginalStr.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        insertSubviews()
        //: changeTopItem(senderTag: BeautyItemType.Face.rawValue)
        designFor(senderTag: PsychicEnergySignedCount.Face.rawValue)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var beautyContainerView: UIScrollView = {
    private lazy var beautyContainerView: UIScrollView = {
        //: let sview = UIScrollView()
        let sview = UIScrollView()
        //: sview.backgroundColor = UIColor(hex: "171615")?.withAlphaComponent(0.9)
        sview.backgroundColor = UIColor(hex: (String(mainResistanceRankFeatureMessage) + String(appAssistFormat)))?.withAlphaComponent(0.9)
        //: return sview
        return sview
        //: }()
    }()

    //: private lazy var topItemView: STBeautyTopItemView = {
    private lazy var topItemView: TextureItemView = {
        //: let view = STBeautyTopItemView()
        let view = TextureItemView()
        //: view.frame = CGRect.init(x: 0, y: 50, width: ScreenWidth, height: 50)
        view.frame = CGRect(x: 0, y: 50, width: main_logStr, height: 50)
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var itemCollectionView: STBeautyCollectionView = {
    private lazy var itemCollectionView: OriginalCollectionView = {
        //: let view = STBeautyCollectionView.init(frame: CGRect.init(x: 0, y: 50+18, width: ScreenWidth, height: beautyContainerView.height-50-18-kDeviceSafeBottomHeight), collectionViewLayout: UICollectionViewLayout())
        let view = OriginalCollectionView(frame: CGRect(x: 0, y: 50 + 18, width: main_logStr, height: beautyContainerView.height - 50 - 18 - appInviteValue), collectionViewLayout: UICollectionViewLayout())
        //: return view
        return view
        //: }()
    }()

    ///  滤镜列表
    //: private lazy var filterListView: STFilterListView = {
    private lazy var filterListView: FilterReactiveCompatible = {
        //: let view = STFilterListView.init(frame: CGRect.init(x: ScreenWidth, y: 50+18, width: ScreenWidth, height: beautyContainerView.height-50-18-kDeviceSafeBottomHeight))
        let view = FilterReactiveCompatible(frame: CGRect(x: main_logStr, y: 50 + 18, width: main_logStr, height: beautyContainerView.height - 50 - 18 - appInviteValue))
        //: return view
        return view
        //: }()
    }()

    //: private lazy var beautySlider: STBeautySlider = {
    private lazy var beautySlider: BankTitleureBeautySlider = {
        //: let view = STBeautySlider.init(frame: CGRect.init(x: 22, y: 0, width: ScreenWidth-44, height: 40))
        let view = BankTitleureBeautySlider(frame: CGRect(x: 22, y: 0, width: main_logStr - 44, height: 40))
        //: view.minimumTrackTintColor = UIColor.appThemeColor()
        view.minimumTrackTintColor = UIColor.attractiveIn()
        //: view.maximumTrackTintColor = .white
        view.maximumTrackTintColor = .white
        //: view.minimumValue = 0
        view.minimumValue = 0
        //: view.maximumValue = 1.0
        view.maximumValue = 1.0
        //: view.value  = 0
        view.value = 0
        //: view.addTarget(self, action: #selector(beautySliderValueChanged(sender:)), for: .valueChanged)
        view.addTarget(self, action: #selector(viaUniversal(sender:)), for: .valueChanged)
        //: view.setThumbImage(UIImage.BundleImageNamed(name: "st_slider_thumb"), for: .normal)
        view.setThumbImage(UIImage.locationName(name: (String(noti_signalName.prefix(6)) + "der_" + kAttentionHeartMsg.replacingOccurrences(of: "table", with: "t"))), for: .normal)

        //: return view
        return view
        //: }()
    }()
}

//: extension STBeautyAdjustView: STBeautyTopItemViewDelegate {
extension BeauteousnessSmallAdjustView: SumensityObjectProtocol {
    //: func show() {
    func towardSendTalk() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TransferPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.streetSmart(view: self)
        //: popView?.showInView(view: DepictionThen.getWindow())
        popView?.withoutView(view: DepictionThen.fossilization())
    }

    /// 重置
    //: func ResetBeauty() {
    func wisecrack() {
        //: self.faceItem = nil
        self.faceItem = nil
        //: self.eyesItem = nil
        self.eyesItem = nil
        //: self.noseItem = nil
        self.noseItem = nil
        //: self.lipItem = nil
        self.lipItem = nil

        //: ProviderCacheCost.share.resetCustomDefSuite()
        ProviderCacheCost.share.resetPromptFlatSuite()
        //: self.itemCollectionView.resetDefaultBeautySuite()
        self.itemCollectionView.formation()
        //: if (self.currentItemType == .Filter) {
        if self.currentItemType == .Filter {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
        }

        //: ProviderCacheCost.share.initFilterData()
        ProviderCacheCost.share.filterInitData()
        //: ProviderCacheCost.share.reloadFilterData(model: ProviderCacheCost.share.filterModelArray.first!)
        ProviderCacheCost.share.perceive(model: ProviderCacheCost.share.filterModelArray.first!)
        //: filterListView.reLoadSetFilter(model: ProviderCacheCost.share.filterSuite ?? STFilterEntiretycostModel.init())
        filterListView.planRange(model: ProviderCacheCost.share.filterSuite ?? FirReactiveCompatible())
        //: NotificationCenter.default.post(name: kNotificationSelectBeautyFilter, object: ProviderCacheCost.share.filterModelArray.first, userInfo: nil)
        NotificationCenter.default.post(name: showCreateFormat, object: ProviderCacheCost.share.filterModelArray.first, userInfo: nil)

        //: let value = Float(ProviderCacheCost.share.customSuite.fWhitenStrength/0.9)
        let value = Float(ProviderCacheCost.share.customSuite.fWhitenStrength / 0.9)
        //: self.beautySlider.value = value
        self.beautySlider.value = value
        //: self.beautySlider.configShowValue(value: Float(ProviderCacheCost.share.customSuite.fWhitenStrength*100))
        self.beautySlider.eigenvalueOfAMatrix(value: Float(ProviderCacheCost.share.customSuite.fWhitenStrength * 100))
    }

    //: func setBeautySetSuiteType(afterSuiteType: Int) {
    func translateType(afterSuiteType: Int) {
        //: let type = BeautyItemType(rawValue: afterSuiteType) ?? .Face
        let type = PsychicEnergySignedCount(rawValue: afterSuiteType) ?? .Face

        //: ProviderCacheCost.share.curBeautySuite = type
        ProviderCacheCost.share.curBeautySuite = type

        //: self.itemCollectionView.setCurSuiteType(curSuiteType: type)
        self.itemCollectionView.perchWithoutSort(curSuiteType: type)
    }

    //: func handleSelectFeatureItem(featureItem: STFilterLooksModel, category: STBeautyCategory) {
    func namesColor(featureItem: RevenueThen, category _: ProgValueConvertible) {
        //: self.curFeatureItem = featureItem
        self.curFeatureItem = featureItem
        //: if featureItem.canEdit() {
        if featureItem.marginEdit() {
            //: self.beautySlider.isEnabled = true
            self.beautySlider.isEnabled = true
            //: self.beautySlider.halfMode = !featureItem.isOnlyPositiveValue()
            self.beautySlider.halfMode = !featureItem.iconEarly()
            //: if featureItem.isLimitMaxNightValue() {
            if featureItem.distance() {
                //: self.beautySlider.value = Float(featureItem.beautyValue/0.9)
                self.beautySlider.value = Float(featureItem.beautyValue / 0.9)
                //: }else {
            } else {
                //: self.beautySlider.value = Float(featureItem.beautyValue)
                self.beautySlider.value = Float(featureItem.beautyValue)
            }
            //: self.beautySlider.configShowValue(value: self.curFeatureItem?.showBeautyValue() ?? 0.0)
            self.beautySlider.eigenvalueOfAMatrix(value: self.curFeatureItem?.aboard() ?? 0.0)

            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: } else {
        } else {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
        }
    }

    //: @objc func beautySliderValueChanged(sender: STBeautySlider) {
    @objc func viaUniversal(sender: BankTitleureBeautySlider) {
        //: if (self.currentItemType == .Filter) {
        if self.currentItemType == .Filter {
            // 滤镜
            //: self.filterListView.selectModel?.beautyValue = Double(sender.value)
            self.filterListView.selectModel?.beautyValue = Double(sender.value)
            //: self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
            self.beautySlider.eigenvalueOfAMatrix(value: self.filterListView.selectModel?.aboard() ?? 0.0)

            //: NotificationCenter.default.post(name: kNotificationBeautyFilterValueChange, object: self.filterListView.selectModel, userInfo: nil)
            NotificationCenter.default.post(name: noti_infoRouteTitle, object: self.filterListView.selectModel, userInfo: nil)

            //: ProviderCacheCost.share.reloadFilterData(model: self.filterListView.selectModel ?? STFilterLooksModel.init())
            ProviderCacheCost.share.perceive(model: self.filterListView.selectModel ?? RevenueThen())
            //: }else {
        } else {
            //: if self.curFeatureItem != nil {
            if self.curFeatureItem != nil {
                //: if self.curFeatureItem?.isLimitMaxNightValue() == true {
                if self.curFeatureItem?.distance() == true {
                    //: self.curFeatureItem?.beautyValue = Double(sender.value*0.9)
                    self.curFeatureItem?.beautyValue = Double(sender.value * 0.9)
                    //: }else {
                } else {
                    //: self.curFeatureItem?.beautyValue = Double(sender.value)
                    self.curFeatureItem?.beautyValue = Double(sender.value)
                }
                //: self.beautySlider.configShowValue(value: self.curFeatureItem?.showBeautyValue() ?? 0.0)
                self.beautySlider.eigenvalueOfAMatrix(value: self.curFeatureItem?.aboard() ?? 0.0)

                //: NotificationCenter.default.post(name: kNotificationBeautyFeatureModity, object: self.curFeatureItem, userInfo: nil)
                NotificationCenter.default.post(name: mainTableTitle, object: self.curFeatureItem, userInfo: nil)

                //: } else {
            } else {
                //: sender.isEnabled = false
                sender.isEnabled = false
                //: sender.isHidden  = true
                sender.isHidden = true
            }
        }
    }

    /// 切换item
    /// @param itemType

    //: func changeTopItem(senderTag: Int) {
    func designFor(senderTag: Int) {
        //: let itemType = BeautyItemType(rawValue: senderTag) ?? .Face
        let itemType = PsychicEnergySignedCount(rawValue: senderTag) ?? .Face
        //: self.currentItemType = itemType
        self.currentItemType = itemType

        //: if itemType == .Filter {
        if itemType == .Filter {
            //: self.beautyContainerView.setContentOffset(CGPoint.init(x: ScreenWidth, y: 0), animated: true)
            self.beautyContainerView.setContentOffset(CGPoint(x: main_logStr, y: 0), animated: true)
            //: if self.filterListView.selectModel?.strPath.count == 0 {
            if self.filterListView.selectModel?.strPath.count == 0 {
                //: self.beautySlider.isHidden = true
                self.beautySlider.isHidden = true
                //: }else {
            } else {
                //: self.beautySlider.isHidden = false
                self.beautySlider.isHidden = false
                //: self.beautySlider.isEnabled = true
                self.beautySlider.isEnabled = true
                //: self.beautySlider.halfMode = false
                self.beautySlider.halfMode = false
                //: self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
                self.beautySlider.eigenvalueOfAMatrix(value: self.filterListView.selectModel?.aboard() ?? 0.0)
                //: self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
                self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
            }
            //: }else {
        } else {
            //: itemCollectionView.setCurSuiteType(curSuiteType: itemType)
            itemCollectionView.perchWithoutSort(curSuiteType: itemType)
            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: self.beautyContainerView.setContentOffset(CGPoint.init(x: 0, y: 0), animated: true)
            self.beautyContainerView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)

            //: var  model = itemCollectionView.featureItems.first as? STFilterLooksModel
            var model = itemCollectionView.featureItems.first as? RevenueThen
            //: switch itemType {
            switch itemType {
            //: case .Face:
            case .Face:
                //: if self.faceItem != nil {
                if self.faceItem != nil {
                    //: model = self.faceItem
                    model = self.faceItem
                }
            //: case .Eyes:
            case .Eyes:
                //: if self.eyesItem != nil {
                if self.eyesItem != nil {
                    //: model = self.eyesItem
                    model = self.eyesItem
                }
            //: case .Nose:
            case .Nose:
                //: if self.noseItem != nil {
                if self.noseItem != nil {
                    //: model = self.noseItem
                    model = self.noseItem
                }
            //: case .Lip:
            case .Lip:
                //: if self.lipItem != nil {
                if self.lipItem != nil {
                    //: model = self.lipItem
                    model = self.lipItem
                }
            //: default:
            default:
                //: break
                break
            }

            //: handleSelectFeatureItem(featureItem: model ?? STFilterLooksModel.init(), category: self.curFeatureItem?.category ?? .Base)
            namesColor(featureItem: model ?? RevenueThen(), category: self.curFeatureItem?.category ?? .Base)
            //: self.itemCollectionView.curItem = model
            self.itemCollectionView.curItem = model
            //: self.itemCollectionView.reloadData()
            self.itemCollectionView.reloadData()
        }
    }

    /// 选择滤镜
    /// @param featureModel _
    //: func selectFilter(featureModel: STFilterLooksModel) {
    func yearApp(featureModel _: RevenueThen) {
        //: if self.filterListView.selectModel?.strPath.count == 0 {
        if self.filterListView.selectModel?.strPath.count == 0 {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
            //: }else {
        } else {
            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: self.beautySlider.isEnabled = true
            self.beautySlider.isEnabled = true
            //: self.beautySlider.halfMode = false
            self.beautySlider.halfMode = false
            //: self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
            self.beautySlider.eigenvalueOfAMatrix(value: self.filterListView.selectModel?.aboard() ?? 0.0)
            //: self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
            self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
        }
        //: ProviderCacheCost.share.reloadFilterData(model: self.filterListView.selectModel ?? STFilterLooksModel.init())
        ProviderCacheCost.share.perceive(model: self.filterListView.selectModel ?? RevenueThen())
        //: NotificationCenter.default.post(name: kNotificationSelectBeautyFilter, object: self.filterListView.selectModel, userInfo: nil)
        NotificationCenter.default.post(name: showCreateFormat, object: self.filterListView.selectModel, userInfo: nil)
    }

    //: func selectBeauty(model: STFilterLooksModel) {
    func windowDoing(model: RevenueThen) {
        //: if itemCollectionView.curItem == nil {
        if itemCollectionView.curItem == nil {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
            //: }else {
        } else {
            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: self.beautySlider.isEnabled = true
            self.beautySlider.isEnabled = true
            //: self.beautySlider.halfMode = false
            self.beautySlider.halfMode = false
            //: self.beautySlider.configShowValue(value: itemCollectionView.curItem?.showBeautyValue() ?? 0.0)
            self.beautySlider.eigenvalueOfAMatrix(value: itemCollectionView.curItem?.aboard() ?? 0.0)
            //: self.beautySlider.value = Float(itemCollectionView.curItem?.beautyValue ?? 0.0)
            self.beautySlider.value = Float(itemCollectionView.curItem?.beautyValue ?? 0.0)
            //: self.curFeatureItem = model
            self.curFeatureItem = model
            //: switch self.currentItemType {
            switch self.currentItemType {
            //: case .Face:
            case .Face:
                //: self.faceItem = model
                self.faceItem = model
            //: case .Eyes:
            case .Eyes:
                //: self.eyesItem = model
                self.eyesItem = model
            //: case .Nose:
            case .Nose:
                //: self.noseItem = model
                self.noseItem = model
            //: case .Lip:
            case .Lip:
                //: self.lipItem = model
                self.lipItem = model
            //: default:
            default:
                //: break
                break
            }
        }
    }
}

//: extension STBeautyAdjustView {
extension BeauteousnessSmallAdjustView {
    //: func setupSubviews() {
    func insertSubviews() {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: self.currentItemType = .Face
        self.currentItemType = .Face
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: beautyContainerView.frame = CGRect.init(x: 0, y: 50, width: ScreenWidth, height: self.height - 50)
        beautyContainerView.frame = CGRect(x: 0, y: 50, width: main_logStr, height: self.height - 50)
        //: self.addSubview(beautyContainerView)
        self.addSubview(beautyContainerView)
        //: self.addSubview(topItemView)
        self.addSubview(topItemView)
        //: self.addSubview(beautySlider)
        self.addSubview(beautySlider)
        //: beautyContainerView.addSubview(itemCollectionView)
        beautyContainerView.addSubview(itemCollectionView)

        //: itemCollectionView.setCurSuiteType(curSuiteType: ProviderCacheCost.share.curBeautySuite ?? .Face)
        itemCollectionView.perchWithoutSort(curSuiteType: ProviderCacheCost.share.curBeautySuite ?? .Face)
        //: itemCollectionView.selectBeautyBlock = {[weak self] bmodel in
        itemCollectionView.selectBeautyBlock = { [weak self] bmodel in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.selectBeauty(model: bmodel)
            self.windowDoing(model: bmodel)
        }
        // 添加滤镜
        //: beautyContainerView.addSubview(filterListView)
        beautyContainerView.addSubview(filterListView)
        //: filterListView.selectFilterBlock = { [weak self] featureItem in
        filterListView.selectFilterBlock = { [weak self] featureItem in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.selectFilter(featureModel: featureItem)
            self.yearApp(featureModel: featureItem)
        }
        //: filterListView.reLoadSetFilter(model: ProviderCacheCost.share.filterSuite ?? STFilterEntiretycostModel.init())
        filterListView.planRange(model: ProviderCacheCost.share.filterSuite ?? FirReactiveCompatible())
    }
}
