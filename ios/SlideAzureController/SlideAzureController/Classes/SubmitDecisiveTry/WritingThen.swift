
//: Declare String Begin

/*: "About me" :*/
fileprivate let notiNaturalValue:String = "analyze word publish launch simultaneouslyAbout m"
fileprivate let const_currentMsg:[Character] = ["e"]

/*: "My interests" :*/
fileprivate let showJobText:String = "minimum yesterday makeup vehicle bulletMy i"

/*: "Done" :*/
fileprivate let const_pageKey:String = "Donefee blank pack white replace"

/*: "aboutMe" :*/
fileprivate let showWeekId:String = "aboutMetelephone nap story"

/*: "interest" :*/
fileprivate let constDecideActualUrl:[Character] = ["i"]
fileprivate let user_specUrl:String = "ntedistributionest"

/*: "tagIds" :*/
fileprivate let data_formatName:String = "option i ski interest wholetagIds"

/*: "category" :*/
fileprivate let k_serveText:String = "canameeg"
fileprivate let showAnimalPath:String = "orquestion"

/*: "Save the change?" :*/
fileprivate let const_triggerMsg:String = "Save tside wall transport multiple"
fileprivate let noti_gestureMessage:[Character] = ["h"]
fileprivate let showMerelyStr:[Character] = ["e"," ","c","h","a","n","g","e","?"]

/*: "Cancel" :*/
fileprivate let user_fortMessage:[Character] = ["C","a","n","c","e","l"]

/*: "Save" :*/
fileprivate let const_fairValue:String = "Savefire restore discourse"

/*: "No more than 10 tags" :*/
fileprivate let main_storyStr:String = "No modevelopment user"
fileprivate let data_tellContent:String = "han 1program accommodate corrupt count upper"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WritingThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: public protocol EditTagDelegate: NSObject {
public protocol CoverThen: NSObject {
    //: func freshSeleteTag()
    func averageOut()
}

//: class TalkingEditTagVC: TalkingBaseViewController {
class WritingThen: WeddingLovelyRecognizerDelegate {
    //: open weak var delegate: EditTagDelegate?
    open weak var delegate: CoverThen?
    //: var tagtype: TagType = .AboutMe
    var tagtype: TrailerBinarySum = .AboutMe
    //: var seleteCellArray: [UserSeleteTagModel] = []
    var seleteCellArray: [TapHandyJSON] = []
    //: var isChange = false
    var isChange = false
    //: var titles: Array<UserTagTypeModel> = Array()
    var titles: [AfterTypeModel] = Array()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: self.title = "About me".localized
            self.title = (String(notiNaturalValue.suffix(7)) + String(const_currentMsg)).localized
        //: break
        //: case .Interests:
        case .Interests:
            //: self.title = "My interests".localized
            self.title = (String(showJobText.suffix(4)) + "nterests").localized
            //: break

        //: case .Language:
        case .Language:
            //: break
            break
        //: case .Country:
        case .Country:
            //: break
            break
        }

        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        //: btn.setTitle("Done".localized, for: .normal)
        btn.setTitle((String(const_pageKey.prefix(4))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.attractiveIn(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(move), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: collectionView.register(TalkingTagCell.self, forCellWithReuseIdentifier: TalkingTagCell.className())
        collectionView.register(IceReusableView.self, forCellWithReuseIdentifier: IceReusableView.className())
        //: collectionView.register(TalkingTagHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: TalkingTagHeaderView.className())
        collectionView.register(ArtThen.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: ArtThen.className())
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
        //: collectionView.snp.makeConstraints {
        collectionView.snp.makeConstraints {
            //: $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
            $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }

        //: reqdata()
        be()
    }

    // MARK: - Lazy load

    //: lazy var layout: TalkingTagLayout = {
    lazy var layout: ExecuteViewLayout = {
        //: let temp = TalkingTagLayout()
        let temp = ExecuteViewLayout()
        //: temp.delegate = self
        temp.delegate = self
        //: return temp
        return temp
        //: }()
    }()

    //: private(set) lazy var collectionView: UICollectionView = {
    private(set) lazy var collectionView: UICollectionView = {
        //: let layout = self.layout
        let layout = self.layout
        //: let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingEditTagVC {
extension WritingThen {
    //: func reqdata() {
    func be() {
        //: if DismissReactiveCompatible.share.func__loadUserTagCacheData() == nil {
        if DismissReactiveCompatible.share.serve() == nil {
            //: } else {
        } else {
            //: let tagModel: UserTagModel=DismissReactiveCompatible.share.func__loadUserTagCacheData() as! UserTagModel
            let tagModel: RangeHandyJSON = DismissReactiveCompatible.share.serve() as! RangeHandyJSON
            //: switch tagtype {
            switch tagtype {
            //: case .AboutMe:
            case .AboutMe:
                //: titles = tagModel.aboutMe
                titles = tagModel.aboutMe
                //: setLastSelete(type: 1)
                second(type: 1)
            //: break
            //: case .Interests:
            case .Interests:
                //: titles = tagModel.interest
                titles = tagModel.interest
                //: setLastSelete(type: 2)
                second(type: 2)
            //: break
            //: case .Language:
            case .Language:
                //: break
                break
            //: case .Country:
            case .Country:
                //: break
                break
            }
        }
    }

    //: func uploadTag() {
    func uploadChoiceTheaterTicket() {
        //: guard let customDelegate = self.delegate else {
        guard let customDelegate = self.delegate else {
            //: return
            return
        }
        //: var category = ""
        var category = ""
        //: if self.tagtype == .AboutMe {
        if self.tagtype == .AboutMe {
            //: category = "aboutMe"
            category = (String(showWeekId.prefix(7)))
            //: } else {
        } else {
            //: category = "interest"
            category = (String(constDecideActualUrl) + user_specUrl.replacingOccurrences(of: "distribution", with: "r"))
        }
        //: var str = ""
        var str = ""
        //: for i in 0..<self.seleteCellArray.count {
        for i in 0 ..< self.seleteCellArray.count {
            //: let model = self.seleteCellArray[i]
            let model = self.seleteCellArray[i]
            //: str += model.tag_id!
            str += model.tag_id!
            //: if i<self.seleteCellArray.count-1 {
            if i < self.seleteCellArray.count - 1 {
                //: str += ","
                str += ","
            }
        }
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["tagIds"] = str
        dict[(String(data_formatName.suffix(6)))] = str
        //: dict["category"] = category
        dict[(k_serveText.replacingOccurrences(of: "name", with: "t") + showAnimalPath.replacingOccurrences(of: "question", with: "y"))] = category
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingMeRequestTool.req_EditTag(params: dict) { [self] succeed, result, errorModel in
        FlyerThen.combine(params: dict) { [self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                //: if self.tagtype == .AboutMe {
                if self.tagtype == .AboutMe {
                    //: DismissReactiveCompatible.share.loginUserMode.aboutMe = self.seleteCellArray
                    DismissReactiveCompatible.share.loginUserMode.aboutMe = self.seleteCellArray
                    //: } else {
                } else {
                    //: DismissReactiveCompatible.share.loginUserMode.interest = self.seleteCellArray
                    DismissReactiveCompatible.share.loginUserMode.interest = self.seleteCellArray
                }
                //: customDelegate.freshSeleteTag()
                customDelegate.averageOut()
                //: self.navigationController!.popViewController(animated: true)
                self.navigationController!.popViewController(animated: true)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingEditTagVC {
extension WritingThen {
    //: override func naviPopback() {
    override func popbackResult() {
        //: var modelArray: Array<UserSeleteTagModel> = []
        var modelArray: [TapHandyJSON] = []
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: modelArray = DismissReactiveCompatible.share.loginUserMode.aboutMe!
            modelArray = DismissReactiveCompatible.share.loginUserMode.aboutMe!
        //: break
        //: case .Interests:
        case .Interests:
            //: modelArray = DismissReactiveCompatible.share.loginUserMode.interest!
            modelArray = DismissReactiveCompatible.share.loginUserMode.interest!
        //: break
        //: case .Language:
        case .Language:
            //: break
            break
        //: case .Country:
        case .Country:
            //: break
            break
        }

        //: if !isChange {
        if !isChange {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: } else {
        } else {
            //: let config = ShowAlertConfig()
            let config = PortraitAlertConfig()
            //: config.alignment = .center
            config.alignment = .center
            //: TalkingAlertShow.customAlert(message: "Save the change?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Save".localized, leftBlock: {
            AllowanceReactiveCompatible.dateConfig(message: (String(const_triggerMsg.prefix(6)) + String(noti_gestureMessage) + String(showMerelyStr)).localized, leftBtnTitle: (String(user_fortMessage)).localized, rightBtnTitle: (String(const_fairValue.prefix(4))).localized, leftBlock: {
                //: TalkingAlertShow.hideAlert()
                AllowanceReactiveCompatible.minuteOriginBridge()
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
                //: }, rightBlock: {
            }, rightBlock: {
                //: TalkingAlertShow.hideAlert()
                AllowanceReactiveCompatible.minuteOriginBridge()
                //: self.uploadTag()
                self.uploadChoiceTheaterTicket()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func setLastSelete(type: Int) {
    func second(type: Int) {
        //: var modelArray: Array<UserSeleteTagModel> = []
        var modelArray: [TapHandyJSON] = []
        //: if type == 1 {
        if type == 1 {
            //: modelArray = DismissReactiveCompatible.share.loginUserMode.aboutMe!
            modelArray = DismissReactiveCompatible.share.loginUserMode.aboutMe!
            //: } else {
        } else {
            //: modelArray = DismissReactiveCompatible.share.loginUserMode.interest!
            modelArray = DismissReactiveCompatible.share.loginUserMode.interest!
        }
        //: for i in 0..<modelArray.count {
        for i in 0 ..< modelArray.count {
            //: let modeli = modelArray[i]
            let modeli = modelArray[i]
            //: for j in 0..<titles.count {
            for j in 0 ..< titles.count {
                //: let modelj = titles[j]
                let modelj = titles[j]
                //: let list = modelj.list
                let list = modelj.list
                //: for z in 0..<list!.count {
                for z in 0 ..< list!.count {
                    //: var modelz = list?[z]
                    var modelz = list?[z]
                    //: if modeli.equals(compareTo: modelz!) {
                    if modeli.animaActive(compareTo: modelz!) {
                        //: modelz?.isSelete = true
                        modelz?.isSelete = true
                        //: titles[j].list[z] = modelz!
                        titles[j].list[z] = modelz!
                        //: seleteCellArray.append(modelz!)
                        seleteCellArray.append(modelz!)
                    }
                }
            }
        }
    }

    //: @objc func doneBtnClick() {
    @objc func move() {
        //: uploadTag()
        uploadChoiceTheaterTicket()
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource

//: extension TalkingEditTagVC: UICollectionViewDelegate, UICollectionViewDataSource {
extension WritingThen: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return titles.count
        return titles.count
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //: let model = titles[section]
        let model = titles[section]
        //: return model.list.count
        return model.list.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingTagCell.className(), for: indexPath) as! TalkingTagCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IceReusableView.className(), for: indexPath) as! IceReusableView
        //: let model = self.titles[indexPath.section]
        let model = self.titles[indexPath.section]
        //: let title: UserSeleteTagModel = model.list[indexPath.row]
        let title: TapHandyJSON = model.list[indexPath.row]
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
        //: cell.fill(title: tag_name )
        cell.swamp(title: tag_name)
        //: cell.tagBtnClick(isSelete: title.isSelete)
        cell.valueSelete(isSelete: title.isSelete)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let cell: TalkingTagCell = collectionView.cellForItem(at: indexPath)as! TalkingTagCell
        let cell: IceReusableView = collectionView.cellForItem(at: indexPath) as! IceReusableView

        //: var model = self.titles[indexPath.section]
        var model = self.titles[indexPath.section]
        //: var title = model.list[indexPath.row]
        var title = model.list[indexPath.row]
        //: if  seleteCellArray.contains(where: { $0.equals(compareTo: title)}) {
        if seleteCellArray.contains(where: { $0.animaActive(compareTo: title) }) {
            //: seleteCellArray.removeAll(where: {$0.equals(compareTo: title)})
            seleteCellArray.removeAll(where: { $0.animaActive(compareTo: title) })
            //: isChange = true
            isChange = true
            //: title.isSelete =  false
            title.isSelete = false
            //: } else {
        } else {
            //: if seleteCellArray.count>=10 {
            if seleteCellArray.count >= 10 {
                //: self.func__showStatusBarErrorMsg(showMsg: "No more than 10 tags".localized)
                self.enablece(showMsg: (String(main_storyStr.prefix(5)) + "re t" + String(data_tellContent.prefix(5)) + "0 tags").localized)
                //: return
                return
            }
            //: seleteCellArray.append(title)
            seleteCellArray.append(title)
            //: isChange = true
            isChange = true
            //: title.isSelete =  true
            title.isSelete = true
        }
        //: model.list[indexPath.row] = title
        model.list[indexPath.row] = title
        //: self.titles[indexPath.section] = model
        self.titles[indexPath.section] = model
        //: cell.tagBtnClick()
        cell.input()
        //: if self.titles.count>0 {
        if self.titles.count > 0 {
            //: self.navigationItem.rightBarButtonItem?.isEnabled = true
            self.navigationItem.rightBarButtonItem?.isEnabled = true
            //: } else {
        } else {
            //: self.navigationItem.rightBarButtonItem?.isEnabled = false
            self.navigationItem.rightBarButtonItem?.isEnabled = false
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //: switch kind {
        switch kind {
        //: case UICollectionView.elementKindSectionHeader:
        case UICollectionView.elementKindSectionHeader:
            //: let headView: TalkingTagHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: TalkingTagHeaderView.className(), for: indexPath) as! TalkingTagHeaderView
            let headView: ArtThen = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: ArtThen.className(), for: indexPath) as! ArtThen
            //: headView.backgroundColor = UIColor.clear
            headView.backgroundColor = UIColor.clear
            //: let model = self.titles[indexPath.section]
            let model = self.titles[indexPath.section]
            //: var name = model.name
            var name = model.name
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
            if ManufacturerThen.share.interfaceLang == ImpressionName.ar.rawValue {
                //: name = model.name_ar
                name = model.name_ar
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
            } else if ManufacturerThen.share.interfaceLang == ImpressionName.es.rawValue {
                //: name = model.name_es
                name = model.name_es
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            } else if ManufacturerThen.share.interfaceLang == ImpressionName.pt.rawValue {
                //: name = model.name_pt
                name = model.name_pt
            }
            //: headView.label.text = name
            headView.label.text = name
            //: return headView
            return headView
        //: default:
        default:
            //: return UICollectionReusableView()
            return UICollectionReusableView()
        }
    }
}

// MARK: - ManufacturerReactiveCompatible

//: extension TalkingEditTagVC: TagLayoutDelegate {
extension WritingThen: ManufacturerReactiveCompatible {
    /// 标签内边距
    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, tagInnerMarginForItemAt indexPath: IndexPath) -> CGFloat {
    func ii(_: ExecuteViewLayout, collectionView _: UICollectionView, tagInnerMarginForItemAt _: IndexPath) -> CGFloat {
        //: return CGFloat(25)
        return CGFloat(25)
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at section: Int) -> CGSize {
    func key(_: ExecuteViewLayout, collectionView _: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at _: Int) -> CGSize {
        //: switch kind {
        switch kind {
        //: case UICollectionView.elementKindSectionHeader:
        case UICollectionView.elementKindSectionHeader:
            //: return CGSize(width: 250, height: 32)
            return CGSize(width: 250, height: 32)
        //: case UICollectionView.elementKindSectionFooter:
        case UICollectionView.elementKindSectionFooter:
            //: return CGSize(width: 250, height: 40)
            return CGSize(width: 250, height: 40)
        //: default:
        default:
            //: return CGSize(width: 250, height: 40)
            return CGSize(width: 250, height: 40)
        }
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
    func contentualMatter(_: ExecuteViewLayout, collectionView _: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
        //: let model = self.titles[indexPath.section]
        let model = self.titles[indexPath.section]
        //: let title = model.list[indexPath.row]
        let title = model.list[indexPath.row]
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

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, heightBottomAt section: Int) -> CGFloat {
    func onicial(_: ExecuteViewLayout, collectionView _: UICollectionView, heightBottomAt _: Int) -> CGFloat {
        //: return 24
        return 24
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, leftSapceAt section: Int) -> CGFloat {
    func common(_: ExecuteViewLayout, collectionView _: UICollectionView, leftSapceAt _: Int) -> CGFloat {
        //: return 15
        return 15
    }
}
