// __DEBUG__
// __CLOSE_PRINT__
//
//  KingImpressionViewLayout.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/1.
//

//: import UIKit
import UIKit

//: class STBeautyLayout: UICollectionViewFlowLayout {
class KingImpressionViewLayout: UICollectionViewFlowLayout {
    //: var GiftItemHeight  =   90
    var GiftItemHeight  =   90
    //: let GiftItemColumn  =   5
    let GiftItemColumn  =   5
    //: let GiftItemRow     =   2
    let GiftItemRow     =   2
    //: let USE_DEFAULT_SELECT   =   1
    let USE_DEFAULT_SELECT   =   1
    
    //: var dataArr = Array<Any>()
    var dataArr = Array<Any>()
    //: var layoutArr = Array<UICollectionViewLayoutAttributes>()
    var layoutArr = Array<UICollectionViewLayoutAttributes>()
    
    //: var  layoutContentSize = CGSize()
    var  layoutContentSize = CGSize()
    
    //: override func prepare() {
    override func prepare() {
        
        //: super.prepare()
        super.prepare()
        
        //: layoutArr.removeAll()
        layoutArr.removeAll()
        
        //: for i in 0..<dataArr.count {
        for i in 0..<dataArr.count {
          
            //: let itemAttr = self.layoutAttributesForItem(at: IndexPath.init(item: i, section: 0))
            let itemAttr = self.layoutAttributesForItem(at: IndexPath.init(item: i, section: 0))
            //: layoutArr.append(itemAttr!)
            layoutArr.append(itemAttr!)
        }
        //: var page = dataArr.count/(GiftItemRow*GiftItemColumn)
        var page = dataArr.count/(GiftItemRow*GiftItemColumn)
        //: page = dataArr.count % (GiftItemRow*GiftItemColumn) == 0 ? page : (page + 1)
        page = dataArr.count % (GiftItemRow*GiftItemColumn) == 0 ? page : (page + 1)
        //: page = max(page, 1)
        page = max(page, 1)
        //: layoutContentSize = CGSize(width: Int(ScreenWidth) * page, height: 2*GiftItemHeight)
        layoutContentSize = CGSize(width: Int(main_logStr) * page, height: 2*GiftItemHeight)
    }

    //: override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        //: let page = indexPath.item / (GiftItemRow*GiftItemColumn)
        let page = indexPath.item / (GiftItemRow*GiftItemColumn)
        //: let pageIndex = indexPath.item % (GiftItemRow*GiftItemColumn)
        let pageIndex = indexPath.item % (GiftItemRow*GiftItemColumn)
        //: let pageRow = pageIndex / GiftItemColumn
        let pageRow = pageIndex / GiftItemColumn
        //: let pageCol = pageIndex % GiftItemColumn
        let pageCol = pageIndex % GiftItemColumn
        //: let itemWidth = 76
        let itemWidth = 76
        //: let x = page * Int(ScreenWidth) + pageCol * (itemWidth )
        let x = page * Int(main_logStr) + pageCol * (itemWidth )
        //: let y = pageRow * GiftItemHeight
        let y = pageRow * GiftItemHeight
        //: let layoutAttr = UICollectionViewLayoutAttributes.init(forCellWith: indexPath)
        let layoutAttr = UICollectionViewLayoutAttributes.init(forCellWith: indexPath)
        //: layoutAttr.frame = CGRect(x: 10+x, y: y, width: itemWidth, height: GiftItemHeight)
        layoutAttr.frame = CGRect(x: 10+x, y: y, width: itemWidth, height: GiftItemHeight)
        
        //: return layoutAttr
        return layoutAttr

    }
    //: override var collectionViewContentSize: CGSize {
    override var collectionViewContentSize: CGSize {
        //: return layoutContentSize
        return layoutContentSize
    }
    //: override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        //: return layoutArr
        return layoutArr
    }
    
    //: override var flipsHorizontallyInOppositeLayoutDirection: Bool {
    override var flipsHorizontallyInOppositeLayoutDirection: Bool {
        //: return true
        return true
    }
}