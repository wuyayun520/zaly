
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let app_threadUrl:[UInt8] = [0x77,0x70,0x77,0x6a,0x36,0x7d,0x71,0x7a,0x7b,0x6c,0x24,0x37,0x3e,0x76,0x7f,0x6d,0x3e,0x70,0x71,0x6a,0x3e,0x7c,0x7b,0x7b,0x70,0x3e,0x77,0x73,0x6e,0x72,0x7b,0x73,0x7b,0x70,0x6a,0x7b,0x7a]

private func acrylonitrileButadieneStyrene(forehead num: UInt8) -> UInt8 {
    return num ^ 30
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ArmThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: typealias DeleteTagBlock = (UserSeleteTagModel) ->()
typealias DeleteTagBlock = (TapHandyJSON) -> Void

//: class TalkingTagView: UIView {
class ArmThen: UIView {
    //: var deleteBlock: DeleteTagBlock!
    var deleteBlock: DeleteTagBlock!
    //: var titles = [UserSeleteTagModel]()
    var titles = [TapHandyJSON]()
    //: var tagContentAlignment = TagContentAlignment.left {
    var tagContentAlignment = ProcessingNameAlignment.left {
        //: didSet {
        didSet {
            //: self.layout.contentAlignment = tagContentAlignment
            self.layout.contentAlignment = tagContentAlignment
        }
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: app_threadUrl.map{acrylonitrileButadieneStyrene(forehead: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var layout: TalkingTagLayout = {
    lazy var layout: ExecuteViewLayout = {
        //: let lay = TalkingTagLayout()
        let lay = ExecuteViewLayout()
        //: lay.contentAlignment = .left
        lay.contentAlignment = .left
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: lay.contentAlignment = .right
            lay.contentAlignment = .right
        }
        //: lay.delegate = self
        lay.delegate = self
        //: return lay
        return lay
        //: }()
    }()

    //: private(set) lazy var collectionView: UICollectionView = {
    private(set) lazy var collectionView: UICollectionView = {
        //: let layout = self.layout
        let layout = self.layout //
        //: let temp =  UICollectionView(frame: .zero, collectionViewLayout: layout)
        let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)

        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - UICollectionViewDataSource, UICollectionViewDelegate

//: extension TalkingTagView: UICollectionViewDataSource, UICollectionViewDelegate {
extension ArmThen: UICollectionViewDataSource, UICollectionViewDelegate {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.titles.count
        return self.titles.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingTagCell.className(), for: indexPath) as! TalkingTagCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IceReusableView.className(), for: indexPath) as! IceReusableView
        //: let title = self.titles[indexPath.row]
        let title = self.titles[indexPath.row]
        //: var tag_name = ""
        var tag_name = ""
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        if ManufacturerThen.share.interfaceLang == ImpressionName.ar.rawValue {
            //: tag_name = title.tag_name_ar
            tag_name = title.tag_name_ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if ManufacturerThen.share.interfaceLang == ImpressionName.es.rawValue {
            //: tag_name = title.tag_name_es
            tag_name = title.tag_name_es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if ManufacturerThen.share.interfaceLang == ImpressionName.pt.rawValue {
            //: tag_name = title.tag_name_pt
            tag_name = title.tag_name_pt
        }
        //: if tag_name.count <= 0 {
        if tag_name.count <= 0 {
            //: tag_name = title.tag_name
            tag_name = title.tag_name
        }
        //: cell.fill(title: tag_name)
        cell.swamp(title: tag_name)
        //: cell.tagBtnselete()
        cell.always()
        //: cell.DeleteBtnSelete()
        cell.capacitySelete()
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt _: IndexPath) {}
}

// MARK: - ManufacturerReactiveCompatible

//: extension TalkingTagView: TagLayoutDelegate {
extension ArmThen: ManufacturerReactiveCompatible {
    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, heightBottomAt section: Int) -> CGFloat {
    func onicial(_: ExecuteViewLayout, collectionView _: UICollectionView, heightBottomAt _: Int) -> CGFloat {
        //: return 12
        return 12
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, leftSapceAt section: Int) -> CGFloat {
    func common(_: ExecuteViewLayout, collectionView _: UICollectionView, leftSapceAt _: Int) -> CGFloat {
        //: return 12
        return 12
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at section: Int) -> CGSize {
    func key(_: ExecuteViewLayout, collectionView _: UICollectionView, sizeForSupplementaryElementOfKind _: String, at _: Int) -> CGSize {
        //: return CGSize(width: 50, height: 0)
        return CGSize(width: 50, height: 0)
    }

    /// 标签内边距
    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, tagInnerMarginForItemAt indexPath: IndexPath) -> CGFloat {
    func ii(_: ExecuteViewLayout, collectionView _: UICollectionView, tagInnerMarginForItemAt _: IndexPath) -> CGFloat {
        //: return CGFloat(30)
        return CGFloat(30)
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
    func contentualMatter(_: ExecuteViewLayout, collectionView _: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
        //: let title = self.titles[indexPath.row]
        let title = self.titles[indexPath.row]
        //: var tag_name = ""
        var tag_name = ""
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        if ManufacturerThen.share.interfaceLang == ImpressionName.ar.rawValue {
            //: tag_name = title.tag_name_ar
            tag_name = title.tag_name_ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if ManufacturerThen.share.interfaceLang == ImpressionName.es.rawValue {
            //: tag_name = title.tag_name_es
            tag_name = title.tag_name_es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if ManufacturerThen.share.interfaceLang == ImpressionName.pt.rawValue {
            //: tag_name = title.tag_name_pt
            tag_name = title.tag_name_pt
        }
        //: if tag_name.count <= 0 {
        if tag_name.count <= 0 {
            //: tag_name = title.tag_name
            tag_name = title.tag_name
        }
        //: return tag_name
        return tag_name
    }
}

// MARK: - UI

//: extension TalkingTagView {
extension ArmThen {
    //: func setframe(frame: CGRect) {
    func recording(frame _: CGRect) {
        //: collectionView.frame = self.bounds
        collectionView.frame = self.bounds
        //: collectionView.backgroundColor = .white
        collectionView.backgroundColor = .white
        //: collectionView.register(TalkingTagCell.self, forCellWithReuseIdentifier: TalkingTagCell.className())
        collectionView.register(IceReusableView.self, forCellWithReuseIdentifier: IceReusableView.className())
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.isScrollEnabled = false
        collectionView.isScrollEnabled = false
        //: self.addSubview(collectionView)
        self.addSubview(collectionView)
    }

    //: func freshView() {
    func wordForm() {
        //: collectionView.reloadData()
        collectionView.reloadData()
    }
}
