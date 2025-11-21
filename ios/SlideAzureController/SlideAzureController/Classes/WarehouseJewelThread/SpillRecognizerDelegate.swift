
//: Declare String Begin

/*: "AreaCodeChoiceCellID" :*/
fileprivate let data_agencyKey:String = "mention lie othersAreaCo"
fileprivate let mainUnitHopFormationStr:String = "iceCellIprecedent who red"
fileprivate let const_boundData:String = "nothing"

/*: "init(coder:) has not been implemented" :*/
fileprivate let dataTopKey:[UInt8] = [0x9e,0x99,0x9e,0x83,0xdf,0x94,0x98,0x93,0x92,0x85,0xcd,0xde,0xd7,0x9f,0x96,0x84,0xd7,0x99,0x98,0x83,0xd7,0x95,0x92,0x92,0x99,0xd7,0x9e,0x9a,0x87,0x9b,0x92,0x9a,0x92,0x99,0x83,0x92,0x93]

private func bothBorder(comment num: UInt8) -> UInt8 {
    return num ^ 247
}

/*: "Select Country Code" :*/
fileprivate let kMatePath:String = "particle fair trigger import boltSelect Co"
fileprivate let notiSquareName:String = "tail"
fileprivate let kGroupValue:String = "ntproposal"

/*: "#F4F6FA" :*/
fileprivate let data_easeMsg:[Character] = ["#","F","4","F","6","F","A"]

/*: "type" :*/
fileprivate let app_forceText:[Character] = ["t","y","p","e"]

/*: "content" :*/
fileprivate let main_captureStonePath:String = "cotalktetalkt"

/*: "mf/user/editCountryLang" :*/
fileprivate let const_alreadyMsg:String = "mf/ufunction label reply"
fileprivate let noti_shapeData:String = "ditCtrue city"
fileprivate let k_expensePath:String = "system southwest too blue translateryLang"

/*: "Done" :*/
fileprivate let data_absValue:String = "Donedirect into numb"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpillRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/29.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

//: class EditAreaCodeChoiceVC: TalkingBaseViewController {
class SpillRecognizerDelegate: WeddingLovelyRecognizerDelegate {
    //: public var backCountryCode: (() -> Void)?
    public var backCountryCode: (() -> Void)?

    //: private let TalkingAreaCodeChoiceCellID = "AreaCodeChoiceCellID"
    private let TalkingAreaCodeChoiceCellID = (String(data_agencyKey.suffix(6)) + "deCho" + String(mainUnitHopFormationStr.prefix(8)) + const_boundData.replacingOccurrences(of: "nothing", with: "D"))

    //: private var sectionTitlesArray = [String]()
    private var sectionTitlesArray = [String]()
    //: private var sectionArray = [Array<Any>]()
    private var sectionArray = [[Any]]()
    //: private var lastIndex: IndexPath?
    private var lastIndex: IndexPath?
    //: private var seleteName = ""
    private var seleteName = ""

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: dataTopKey.map{bothBorder(comment: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Select Country Code".localized
        self.title = (String(kMatePath.suffix(9)) + notiSquareName.replacingOccurrences(of: "tail", with: "u") + kGroupValue.replacingOccurrences(of: "proposal", with: "ry") + " Code").localized

        //: createDefaultData()
        star()
        //: self.setupSubviews()
        self.deIonate()
        //: self.setupSubViewsConstraint()
        self.moveBarrier()
        //: self.bindInteraction()
        self.via()
    }

    //: deinit {
    deinit {}

    //: lazy var tableView: UITableView = {
    lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .plain)
        let tableView = UITableView(frame: .zero, style: .plain)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.register(EditAreaCodeChoiceCell.classForCoder(), forCellReuseIdentifier: TalkingAreaCodeChoiceCellID)
        tableView.register(TapThen.classForCoder(), forCellReuseIdentifier: TalkingAreaCodeChoiceCellID)
        //: tableView.sectionIndexColor = .appValueColor()
        tableView.sectionIndexColor = .ownLight()
        //: tableView.backgroundColor  = UIColor.init(hex: "#F4F6FA")
        tableView.backgroundColor = UIColor(hex: (String(data_easeMsg)))
        //: return tableView
        return tableView
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension EditAreaCodeChoiceVC {
extension SpillRecognizerDelegate {
    //: private func createDefaultData() {
    private func star() {
        //: let arr = TalkingLocationTool.share.areaArr
        let arr = SmallishThen.share.areaArr
        //: if arr.count > 0 {
        if arr.count > 0 {
            //: self.setData(arr: arr)
            self.collection(arr: arr)
        }
        //: TalkingLocationTool.share.reqSuccessBlock = { [weak self] in
        SmallishThen.share.reqSuccessBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let arr = TalkingLocationTool.share.areaArr
            let arr = SmallishThen.share.areaArr
            //: self.setData(arr: arr)
            self.collection(arr: arr)
        }
    }

    //: func setData(arr: [TalkingAreaModel]) {
    func collection(arr: [ImpressionAreaModel]) {
        //: let collation = UILocalizedIndexedCollation.current()
        let collation = UILocalizedIndexedCollation.current()

        //: let sectionNumb = collation.sectionTitles.count
        let sectionNumb = collation.sectionTitles.count

        //: var sectionTempArray = [Array<Any>]()
        var sectionTempArray = [[Any]]()

        //: for _ in 0..<sectionNumb {
        for _ in 0 ..< sectionNumb {
            //: sectionTempArray.append([])
            sectionTempArray.append([])
        }

        //: for areaModel: TalkingAreaModel in arr {
        for areaModel: ImpressionAreaModel in arr {
            //: let sectionIndex =  collation.section(for: areaModel, collationStringSelector: #selector(getter: areaModel.areaName))
            let sectionIndex = collation.section(for: areaModel, collationStringSelector: #selector(getter: areaModel.areaName))
            //: sectionTempArray[sectionIndex].append(areaModel)
            sectionTempArray[sectionIndex].append(areaModel)
        }

        //: for index in 0..<sectionNumb {
        for index in 0 ..< sectionNumb {
            //: let tempArr = sectionTempArray[index]
            let tempArr = sectionTempArray[index]
            //: let sortArr = collation.sortedArray(from: tempArr, collationStringSelector: #selector(getter: TalkingAreaModel().areaName))
            let sortArr = collation.sortedArray(from: tempArr, collationStringSelector: #selector(getter: ImpressionAreaModel().areaName))
            //: sectionTempArray[index] = sortArr
            sectionTempArray[index] = sortArr
        }

        //: for (index, value) in sectionTempArray.enumerated() {
        for (index, value) in sectionTempArray.enumerated() {
            //: if value.count > 0 {
            if value.count > 0 {
                //: let titleStr = collation.sectionTitles[index]
                let titleStr = collation.sectionTitles[index]
                //: self.sectionTitlesArray.append(titleStr)
                self.sectionTitlesArray.append(titleStr)
                //: self.sectionArray.append(value)
                self.sectionArray.append(value)
            }
        }
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }

    //: @objc func doneBtnClick() {
    @objc func flowBoard() {
        //: uploadTag()
        bank()
    }

    //: func uploadTag() {
    func bank() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 1
        dict[(String(app_forceText))] = 1
        //: dict["content"] = self.seleteName
        dict[(main_captureStonePath.replacingOccurrences(of: "talk", with: "n"))] = self.seleteName

        //: let reqModel = TalkingRequestModel.init()
        let reqModel = ProcessingThen()
        //: reqModel.requestPath = "mf/user/editCountryLang"
        reqModel.requestPath = (String(const_alreadyMsg.prefix(4)) + "ser/e" + String(noti_shapeData.prefix(4)) + "ount" + String(k_expensePath.suffix(6)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = dict
        reqModel.params = dict
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        const_backRateStr.lumbarVertebraContainer(model: reqModel) { succeed, _, _ in

            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                //: DismissReactiveCompatible.share.loginUserMode.customCountry = self.seleteName
                DismissReactiveCompatible.share.loginUserMode.customCountry = self.seleteName
                //: if self.backCountryCode != nil {
                if self.backCountryCode != nil {
                    //: self.backCountryCode!()
                    self.backCountryCode!()
                }
                //: self.navigationController!.popViewController(animated: true)
                self.navigationController!.popViewController(animated: true)
            }
        }
    }
}

// MARK: - Delegate

//: extension EditAreaCodeChoiceVC: UITableViewDelegate, UITableViewDataSource {
extension SpillRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return sectionTitlesArray.count
        return sectionTitlesArray.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if sectionArray.count > section {
        if sectionArray.count > section {
            //: let array: [TalkingAreaModel] = sectionArray[section] as! [TalkingAreaModel]
            let array: [ImpressionAreaModel] = sectionArray[section] as! [ImpressionAreaModel]
            //: return array.count
            return array.count
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell: EditAreaCodeChoiceCell = tableView.dequeueReusableCell(withIdentifier: TalkingAreaCodeChoiceCellID, for: indexPath) as! EditAreaCodeChoiceCell
        let cell: TapThen = tableView.dequeueReusableCell(withIdentifier: TalkingAreaCodeChoiceCellID, for: indexPath) as! TapThen
        //: let array: [TalkingAreaModel] = sectionArray[indexPath.section] as! [TalkingAreaModel]
        let array: [ImpressionAreaModel] = sectionArray[indexPath.section] as! [ImpressionAreaModel]
        //: cell.func__updateUIWithModel(areaModel: array[indexPath.row])
        cell.everyDeadline(areaModel: array[indexPath.row])
        //: cell.accessoryType = indexPath == self.lastIndex ? .checkmark : .none
        cell.accessoryType = indexPath == self.lastIndex ? .checkmark : .none

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 50
        return 50
    }

    //: func sectionIndexTitles(for tableView: UITableView) -> [String]? {
    func sectionIndexTitles(for _: UITableView) -> [String]? {
        //: return sectionTitlesArray
        return sectionTitlesArray
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headView = UIView.init()
        let headView = UIView()
        //: headView.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: 30)
        headView.frame = CGRect(x: 0, y: 0, width: main_logStr, height: 30)
        //: headView.backgroundColor = .white
        headView.backgroundColor = .white

        //: let label = UILabel.init()
        let label = UILabel()
        //: label.frame = CGRect(x: 15, y: 0, width: ScreenWidth-30, height: 30)
        label.frame = CGRect(x: 15, y: 0, width: main_logStr - 30, height: 30)
        //: label.text = sectionTitlesArray[section]
        label.text = sectionTitlesArray[section]
        //: label.font = .pingfangFont(type: .Semibold, fontSize: 17)
        label.font = .bigGallery(type: .Semibold, fontSize: 17)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()
        //: headView.addSubview(label)
        headView.addSubview(label)
        //: return headView
        return headView
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 30
        return 30
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let array: [TalkingAreaModel] = sectionArray[indexPath.section] as! [TalkingAreaModel]
        let array: [ImpressionAreaModel] = sectionArray[indexPath.section] as! [ImpressionAreaModel]
        //: let areaModel = array[indexPath.row]
        let areaModel = array[indexPath.row]
        //: self.seleteName = areaModel.areaName
        self.seleteName = areaModel.areaName
        //: var newcell = tableView.cellForRow(at: indexPath)
        var newcell = tableView.cellForRow(at: indexPath)
        //: newcell?.accessoryType = .checkmark
        newcell?.accessoryType = .checkmark
        //: if self.lastIndex != nil && indexPath != self.lastIndex {
        if self.lastIndex != nil && indexPath != self.lastIndex {
            //: var oldcell = tableView.cellForRow(at: self.lastIndex!)
            var oldcell = tableView.cellForRow(at: self.lastIndex!)
            //: oldcell?.accessoryType = .none
            oldcell?.accessoryType = .none
        }
        //: self.lastIndex = indexPath
        self.lastIndex = indexPath
    }
}

// MARK: - Layout

//: extension EditAreaCodeChoiceVC {
extension SpillRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func deIonate() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)

        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        //: btn.setTitle("Done".localized, for: .normal)
        btn.setTitle((String(data_absValue.prefix(4))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.attractiveIn(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangFont(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.bigGallery(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(flowBoard), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func moveBarrier() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalToSuperview()
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func via() {}
}
