
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let userPrivacyKey:[UInt8] = [0xae,0xa9,0xae,0xb3,0xef,0xa4,0xa8,0xa3,0xa2,0xb5,0xfd,0xee,0xe7,0xaf,0xa6,0xb4,0xe7,0xa9,0xa8,0xb3,0xe7,0xa5,0xa2,0xa2,0xa9,0xe7,0xae,0xaa,0xb7,0xab,0xa2,0xaa,0xa2,0xa9,0xb3,0xa2,0xa3]

/*: "StrengthReactiveCompatible" :*/
fileprivate let main_quoteData:[Character] = ["S","T","F","i","l","t"]
fileprivate let show_systemFormat:[Character] = ["e","r","L"]
fileprivate let dataExhibitDotMessage:String = "global unionistIt"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FilterReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: typealias SelectFilterBlock = (_ model: STFilterLooksModel) -> Void
typealias SelectFilterBlock = (_ model: RevenueThen) -> Void

//: class STFilterListView: UIView {
class FilterReactiveCompatible: UIView {
    //: var selectModel: STFilterLooksModel?
    var selectModel: RevenueThen?

    //: var selectFilterBlock: SelectFilterBlock?
    var selectFilterBlock: SelectFilterBlock?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: userPrivacyKey.map{$0^199}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: ProviderCacheCost.share.initFilterData()
        ProviderCacheCost.share.filterInitData()
        //: self.selectModel = ProviderCacheCost.share.filterModelArray.first
        self.selectModel = ProviderCacheCost.share.filterModelArray.first
        //: self.selectModel?.isSelected = true
        self.selectModel?.isSelected = true
        //: self.addSubview(collectionView)
        self.addSubview(collectionView)
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: let layout: STBeautyLayout = collectionView.collectionViewLayout as! STBeautyLayout
        let layout: KingImpressionViewLayout = collectionView.collectionViewLayout as! KingImpressionViewLayout
        //: layout.dataArr = ProviderCacheCost.share.filterModelArray
        layout.dataArr = ProviderCacheCost.share.filterModelArray
        //: collectionView.reloadData()
        collectionView.reloadData()
    }

    //: deinit {
    deinit {}

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = STBeautyLayout.init()
        let layout = KingImpressionViewLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal
        //: let View = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        let View = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: View.backgroundColor = .clear
        View.backgroundColor = .clear
        //: View.showsVerticalScrollIndicator = false
        View.showsVerticalScrollIndicator = false
        //: View.delegate = self
        View.delegate = self
        //: View.dataSource = self
        View.dataSource = self
        //: View.register(STFilterListItemCell.self, forCellWithReuseIdentifier: "STFilterListItemCell")
        View.register(StrengthReactiveCompatible.self, forCellWithReuseIdentifier: (String(main_quoteData) + String(show_systemFormat) + String(dataExhibitDotMessage.suffix(5)) + "emCell"))
        //: return View
        return View
        //: }()
    }()
}

//: extension STFilterListView {
extension FilterReactiveCompatible {
    //: func reLoadSetFilter(model: STFilterEntiretycostModel) {
    func planRange(model: FirReactiveCompatible) {
        //: if self.selectModel?.strName == model.filterName {
        if self.selectModel?.strName == model.filterName {
            //: return
            return
        }

        //: for (i, childM) in ProviderCacheCost.share.filterModelArray.enumerated() {
        for (i, childM) in ProviderCacheCost.share.filterModelArray.enumerated() {
            //: var index = i
            var index = i
            //: if childM.strName == model.filterName {
            if childM.strName == model.filterName {
                //: self.selectModel?.isSelected = false
                self.selectModel?.isSelected = false
                //: childM.isSelected = true
                childM.isSelected = true
                //: childM.beautyValue = model.fFilterStrength
                childM.beautyValue = model.fFilterStrength
                //: self.selectModel = childM
                self.selectModel = childM
                //: self.collectionView.reloadData()
                self.collectionView.reloadData()

                //: if (index >= 10) {
                if index >= 10 {
                    //: index = ProviderCacheCost.share.filterModelArray.count-1
                    index = ProviderCacheCost.share.filterModelArray.count - 1
                }
                //: let indexp = NSIndexPath.init(item: index, section: 0)
                let indexp = NSIndexPath(item: index, section: 0)

                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: self.collectionView.scrollToItem(at: indexp as IndexPath, at: .bottom, animated: false)
                    self.collectionView.scrollToItem(at: indexp as IndexPath, at: .bottom, animated: false)
                }
                //: break
                break
            }
        }
    }
}

//: extension STFilterListView: UICollectionViewDelegate, UICollectionViewDataSource {
extension FilterReactiveCompatible: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return ProviderCacheCost.share.filterModelArray.count
        return ProviderCacheCost.share.filterModelArray.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: STFilterListItemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "STFilterListItemCell", for: indexPath) as! STFilterListItemCell
        let cell: StrengthReactiveCompatible = collectionView.dequeueReusableCell(withReuseIdentifier: (String(main_quoteData) + String(show_systemFormat) + String(dataExhibitDotMessage.suffix(5)) + "emCell"), for: indexPath) as! StrengthReactiveCompatible

        //: cell.setCellModel(model: ProviderCacheCost.share.filterModelArray[indexPath.item])
        cell.chinDown(model: ProviderCacheCost.share.filterModelArray[indexPath.item])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let model = ProviderCacheCost.share.filterModelArray[indexPath.item]
        let model = ProviderCacheCost.share.filterModelArray[indexPath.item]
        //: if self.selectModel == model {
        if self.selectModel == model {
            //: return
            return
        }
        //: self.selectModel?.isSelected = false
        self.selectModel?.isSelected = false
        //: self.selectModel = model
        self.selectModel = model
        //: self.selectModel?.isSelected = true
        self.selectModel?.isSelected = true
        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: if self.selectFilterBlock != nil {
        if self.selectFilterBlock != nil {
            //: self.selectFilterBlock!(self.selectModel ?? STFilterLooksModel.init())
            self.selectFilterBlock!(self.selectModel ?? RevenueThen())
        }
    }
}
