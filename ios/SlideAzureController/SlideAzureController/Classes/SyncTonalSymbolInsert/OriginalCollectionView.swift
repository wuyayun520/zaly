
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainBetterName:[UInt8] = [0x10,0x17,0x10,0xd,0x51,0x1a,0x16,0x1d,0x1c,0xb,0x43,0x50,0x59,0x11,0x18,0xa,0x59,0x17,0x16,0xd,0x59,0x1b,0x1c,0x1c,0x17,0x59,0x10,0x14,0x9,0x15,0x1c,0x14,0x1c,0x17,0xd,0x1c,0x1d]

/*: "featureCell" :*/
fileprivate let show_handleId:[Character] = ["f"]
fileprivate let appDocTooPath:String = "EATURE"

/*: "placeholder" :*/
fileprivate let dataRootStr:String = "plholdc"

/*: "suiteCell" :*/
fileprivate let notiDialogId:String = "select spacesuiteCel"
fileprivate let data_recentMsg:[Character] = ["l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OriginalCollectionView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: typealias DidSelectHandler = (_ featureItem: STFilterLooksModel) -> Void
typealias DidSelectHandler = (_ featureItem: RevenueThen) -> Void

//: class STBeautyCollectionView: UICollectionView {
class OriginalCollectionView: UICollectionView {
    //: var curSuiteType = BeautyItemType.Face
    var curSuiteType = PsychicEnergySignedCount.Face
    //: var featureItems = Array<Any>()
    var featureItems = [Any]()
    //: var curItem: STFilterLooksModel?
    var curItem: RevenueThen?
    //: var selectBeautyBlock: SelectFilterBlock?
    var selectBeautyBlock: SelectFilterBlock?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainBetterName.map{$0^121}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    override init(frame: CGRect, collectionViewLayout _: UICollectionViewLayout) {
        //: let layout = STBeautyLayout.init()
        let layout = KingImpressionViewLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal

        //: super.init(frame: frame, collectionViewLayout: layout)
        super.init(frame: frame, collectionViewLayout: layout)

        //: setupSubviews()
        betweenFollow()
    }

    //: deinit {
    deinit {}
}

//: extension STBeautyCollectionView {
extension OriginalCollectionView {
    //: func setupData() {
    func keepFee() {
        //: let tmp = NSMutableArray.init()
        let tmp = NSMutableArray()
        //: switch (self.curSuiteType) {
        switch self.curSuiteType {
        //: case .Face:
        case .Face:
            //: let faceArr  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .Base)
            let faceArr = RevenueThen().sortMoment(categoryType: .Base)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Eyes:
        case .Eyes:
            //: let faceArr  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .Shape)
            let faceArr = RevenueThen().sortMoment(categoryType: .Shape)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Nose:
        case .Nose:
            //: let faceArr  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .MicroSurgery)
            let faceArr = RevenueThen().sortMoment(categoryType: .MicroSurgery)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Lip:
        case .Lip:
            //: let faceArr  = STFilterLooksModel.init().arrayOfFeatureModelWith(categoryType: .MakeUp)
            let faceArr = RevenueThen().sortMoment(categoryType: .MakeUp)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: default:
        default:
            //: featureItems = Array()
            featureItems = Array()
            //: break
        }

        //: featureItems = tmp as! [Any]
        featureItems = tmp as! [Any]
        //: configDefaultSelectItem()
        translationItem()

        //: let layout: STBeautyLayout = self.collectionViewLayout as! STBeautyLayout
        let layout: KingImpressionViewLayout = self.collectionViewLayout as! KingImpressionViewLayout
        //: layout.dataArr = featureItems
        layout.dataArr = featureItems
        //: self.reloadData()
        self.reloadData()
    }

    //: func configDefaultSelectItem() {
    func translationItem() {
        /*!
         * 1、找到当前featureType对应的item
         * 2、没有找到，就使用数组firstObject
         */
        //: var curFeature = ProviderCacheCost.share.curFeature
        var curFeature = ProviderCacheCost.share.curFeature
        //: self.curItem?.isSelected = false
        self.curItem?.isSelected = false
        //: curFeature = self.curItem?.featureType
        curFeature = self.curItem?.featureType

        // 1
        //: for aFeature in featureItems {
        for aFeature in featureItems {
            //: let tfeature = aFeature as! STFilterLooksModel
            let tfeature = aFeature as! RevenueThen
            //: if (curFeature == tfeature.featureType) {
            if curFeature == tfeature.featureType {
                //: tfeature.isSelected = true
                tfeature.isSelected = true
                //: self.curItem = tfeature
                self.curItem = tfeature
                //: break
                break
            }
        }

        // 2
        //: if (self.curItem == nil) {
        if self.curItem == nil {
            //: let aFeature: STFilterLooksModel = featureItems.first as! STFilterLooksModel
            let aFeature: RevenueThen = featureItems.first as! RevenueThen
            //: aFeature.isSelected = true
            aFeature.isSelected = true
            //: self.curItem = aFeature
            self.curItem = aFeature
        }
    }

    //: func setCurSuiteType(curSuiteType: BeautyItemType) {
    func perchWithoutSort(curSuiteType: PsychicEnergySignedCount) {
        //: self.curSuiteType = curSuiteType
        self.curSuiteType = curSuiteType
        //: setupData()
        keepFee()
    }

    //: func resetDefaultBeautySuite() {
    func formation() {
        //: self.curSuiteType = .Face
        self.curSuiteType = .Face
        //: setupData()
        keepFee()
        //: let aFeature: STFilterLooksModel = featureItems.first as! STFilterLooksModel
        let aFeature: RevenueThen = featureItems.first as! RevenueThen
        //: aFeature.isSelected = true
        aFeature.isSelected = true
        //: self.curItem = aFeature
        self.curItem = aFeature
    }
}

//: extension STBeautyCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
extension OriginalCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return featureItems.count
        return featureItems.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: STBeautyIconTitleCell = collectionView.dequeueReusableCell(withReuseIdentifier: "featureCell", for: indexPath) as! STBeautyIconTitleCell
        let cell: IconReactiveCompatible = collectionView.dequeueReusableCell(withReuseIdentifier: (String(show_handleId) + appDocTooPath.lowercased() + "Cell"), for: indexPath) as! IconReactiveCompatible

        //: let item: STFilterLooksModel = featureItems[indexPath.row] as! STFilterLooksModel
        let item: RevenueThen = featureItems[indexPath.row] as! RevenueThen
        //: item.isSelected  = (item.featureType == self.curItem?.featureType)
        item.isSelected = (item.featureType == self.curItem?.featureType)
        //: cell.setFeatureItem(featureItem: item)
        cell.coffin(featureItem: item)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: if (indexPath.row < featureItems.count) {
        if indexPath.row < featureItems.count {
            //: let item: STFilterLooksModel = featureItems[indexPath.row] as! STFilterLooksModel
            let item: RevenueThen = featureItems[indexPath.row] as! RevenueThen
            //: self.curItem?.isSelected = false
            self.curItem?.isSelected = false
            //: item.isSelected = true
            item.isSelected = true

            //: self.curItem = item
            self.curItem = item // setter
            //: if self.selectBeautyBlock != nil {
            if self.selectBeautyBlock != nil {
                //: self.selectBeautyBlock!(self.curItem ?? STFilterLooksModel.init())
                self.selectBeautyBlock!(self.curItem ?? RevenueThen())
            }
            //: self.reloadData()
            self.reloadData()
        }
    }
}

//: extension STBeautyCollectionView {
extension OriginalCollectionView {
    //: func setupSubviews() {
    func betweenFollow() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.isPagingEnabled = true
        self.isPagingEnabled = true
        //: self.showsHorizontalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        //: self.showsVerticalScrollIndicator = false
        self.showsVerticalScrollIndicator = false
        //: self.delegate = self
        self.delegate = self
        //: self.dataSource = self
        self.dataSource = self
//        self.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        //: self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "placeholder")
        self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: (dataRootStr.replacingOccurrences(of: "hold", with: "a") + "eholder"))
        //: self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "featureCell")
        self.register(IconReactiveCompatible.self, forCellWithReuseIdentifier: (String(show_handleId) + appDocTooPath.lowercased() + "Cell"))
        //: self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "suiteCell")
        self.register(IconReactiveCompatible.self, forCellWithReuseIdentifier: (String(notiDialogId.suffix(8)) + String(data_recentMsg)))
    }
}
