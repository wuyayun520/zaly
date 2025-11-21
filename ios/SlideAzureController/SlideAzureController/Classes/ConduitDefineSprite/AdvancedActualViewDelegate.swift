
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_anotherId:[UInt8] = [0x5,0x2,0x5,0x18,0x44,0xf,0x3,0x8,0x9,0x1e,0x56,0x45,0x4c,0x4,0xd,0x1f,0x4c,0x2,0x3,0x18,0x4c,0xe,0x9,0x9,0x2,0x4c,0x5,0x1,0x1c,0x0,0x9,0x1,0x9,0x2,0x18,0x9,0x8]

/*: "Price Settings" :*/
fileprivate let kCompositionPlaceAudienceName:[Character] = ["P","r","i","c"]
fileprivate let constEnvironmentBoundOccurId:String = "ret exposure buckete Set"

/*: "5.00" :*/
fileprivate let constKeepValue:String = "5.00"

/*: "Chat price settings" :*/
fileprivate let notiOurFormat:String = "Chroot property instance woman welcome"
fileprivate let userDisableTitle:String = "at pbroadcast narrow bounce"
fileprivate let user_speedSlideValue:String = " settingstool create height"

/*: "Video call price settings" :*/
fileprivate let kProblemKey:String = "eastern input rawVide"
fileprivate let const_slipFormat:String = "l priterms beauty popular"
fileprivate let app_needData:String = "root"
fileprivate let kMultipleId:String = "e seenter automatically"

/*: "Voice call price settings" :*/
fileprivate let mainSomewhereOrangeContinueName:String = "crop valid poVoic"
fileprivate let userWithMessage:String = "eastern hide lose printl price s"
fileprivate let data_coverAppearanceId:[Character] = ["e","t","t","i","n","g","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdvancedActualViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingFemalePriceSetVC: TalkingBaseViewController {
class AdvancedActualViewDelegate: WeddingLovelyRecognizerDelegate {
    // MARK: - 属性声明 & 生命周期方法

    //: lazy var messageArray: [ChatPriceModel] = []
    lazy var messageArray: [PriceHandyJSON] = []
    //: lazy var videoArray: [ChatPriceModel] = []
    lazy var videoArray: [PriceHandyJSON] = []
    //: lazy var voiceArray: [ChatPriceModel] = []
    lazy var voiceArray: [PriceHandyJSON] = []

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_anotherId.map{$0^108}, encoding: .utf8)!)
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

        //: self.hideNavi = false
        self.hideNavi = false
        //: self.title = "Price Settings".localized
        self.title = (String(kCompositionPlaceAudienceName) + String(constEnvironmentBoundOccurId.suffix(5)) + "tings").localized

        //: self.setupSubviews()
        self.include()
        //: self.setupSubViewsConstraint()
        self.that()
        //: self.bindInteraction()
        self.square()
        //: self.setupData()
        self.totalerpretation()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.appBgColor()
        $0.backgroundColor = UIColor.doingTo()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemalePriceSetCell.self, forCellReuseIdentifier: TalkingFemalePriceSetCell.className())
        $0.register(SolarSetCell.self, forCellReuseIdentifier: SolarSetCell.className())
        //: view.addSubview($0)
        view.addSubview($0)
        //: $0.snp.makeConstraints { make in
        $0.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}

// MARK: data

//: extension TalkingFemalePriceSetVC {
extension AdvancedActualViewDelegate {
    //: private func setupData() {
    private func totalerpretation() {
        //: for tempModel in DismissReactiveCompatible.share.appUserConfigMode.chatPriceSettings {
        for tempModel in DismissReactiveCompatible.share.appUserConfigMode.chatPriceSettings {
            //: if tempModel.price == Int(Double(DismissReactiveCompatible.share.loginUserMode.messagePrice ?? "5.00")!) {
            if tempModel.price == Int(Double(DismissReactiveCompatible.share.loginUserMode.messagePrice ?? (constKeepValue.capitalized))!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: messageArray.append(tempModel)
            messageArray.append(tempModel)
        }
        //: for tempModel in DismissReactiveCompatible.share.appUserConfigMode.videoPriceSettings {
        for tempModel in DismissReactiveCompatible.share.appUserConfigMode.videoPriceSettings {
            //: if tempModel.price == Int(Double(DismissReactiveCompatible.share.loginUserMode.videoPrice ?? "30")!) {
            if tempModel.price == Int(Double(DismissReactiveCompatible.share.loginUserMode.videoPrice ?? "30")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: videoArray.append(tempModel)
            videoArray.append(tempModel)
        }
        //: for tempModel in DismissReactiveCompatible.share.appUserConfigMode.voicePriceSettings {
        for tempModel in DismissReactiveCompatible.share.appUserConfigMode.voicePriceSettings {
            //: if tempModel.price == Int(Double(DismissReactiveCompatible.share.loginUserMode.voicePrice ?? "20")!) {
            if tempModel.price == Int(Double(DismissReactiveCompatible.share.loginUserMode.voicePrice ?? "20")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: voiceArray.append(tempModel)
            voiceArray.append(tempModel)
        }
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemalePriceSetVC: UITableViewDelegate, UITableViewDataSource {
extension AdvancedActualViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 127
        return 127
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 45
        return 45
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemalePriceSetCell.className(), for: indexPath) as! TalkingFemalePriceSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: SolarSetCell.className(), for: indexPath) as! SolarSetCell
        //: var price = 0
        var price = 0
        //: var level = 0
        var level = 0
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: for model in messageArray {
            for model in messageArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 1:
        case 1:
            //: for model in videoArray {
            for model in videoArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 2:
        case 2:
            //: for model in voiceArray {
            for model in voiceArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: cell.setCellData(index: indexPath.section, price: price, leve: level)
        cell.flag(index: indexPath.section, price: price, leve: level)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headerView = UIView.init(frame: CGRect(x: 0.0, y: 0.0, width: ScreenWidth, height: 45))
        let headerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: main_logStr, height: 45))
        //: headerView.backgroundColor = UIColor.appBgColor()
        headerView.backgroundColor = UIColor.doingTo()

        //: let titleLab = UILabel.init(frame: CGRect(x: 15, y: 16, width: ScreenWidth-30, height: 20))
        let titleLab = UILabel(frame: CGRect(x: 15, y: 16, width: main_logStr - 30, height: 20))
        //: switch section {
        switch section {
        //: case 0:
        case 0:
            //: titleLab.text = "Chat price settings".localized
            titleLab.text = (String(notiOurFormat.prefix(2)) + String(userDisableTitle.prefix(4)) + "rice" + String(user_speedSlideValue.prefix(9))).localized
        //: break
        //: case 1:
        case 1:
            //: titleLab.text = "Video call price settings".localized
            titleLab.text = (String(kProblemKey.suffix(4)) + "o cal" + String(const_slipFormat.prefix(5)) + app_needData.replacingOccurrences(of: "root", with: "c") + String(kMultipleId.prefix(4)) + "ttings").localized
        //: break
        //: case 2:
        case 2:
            //: titleLab.text = "Voice call price settings".localized
            titleLab.text = (String(mainSomewhereOrangeContinueName.suffix(4)) + "e cal" + String(userWithMessage.suffix(9)) + String(data_coverAppearanceId)).localized
        //: break
        //: default:
        default:
            //: break
            break
        }

        //: titleLab.textColor = .appValueDetailColor()
        titleLab.textColor = .saveInColor()
        //: titleLab.font = .pingfangFont(type: .Regular, fontSize: 16)
        titleLab.font = .bigGallery(type: .Regular, fontSize: 16)
        //: headerView.addSubview(titleLab)
        headerView.addSubview(titleLab)
        //: return headerView
        return headerView
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let vc = TalkingFemaleChatSetView.init(frame: self.view.frame)
        let vc = CeremonialView(frame: self.view.frame)
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: vc.dataArray = messageArray
            vc.dataArray = messageArray
        //: break
        //: case 1:
        case 1:
            //: vc.dataArray = videoArray
            vc.dataArray = videoArray
        //: break
        //: case 2:
        case 2:
            //: vc.dataArray = voiceArray
            vc.dataArray = voiceArray
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: vc.showType = indexPath.section
        vc.showType = indexPath.section
        //: vc.showView()
        vc.social()
        //: vc.seletePriceBlock = {[weak self] (seletemodel) in
        vc.seletePriceBlock = { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()
        }
    }
}

// MARK: - Request & 数据处理

//: extension TalkingFemalePriceSetVC {
extension AdvancedActualViewDelegate {}

// MARK: - Public Event

//: extension TalkingFemalePriceSetVC {
extension AdvancedActualViewDelegate {}

// MARK: - Privete Event

//: extension TalkingFemalePriceSetVC {
extension AdvancedActualViewDelegate {}

// MARK: - Delegate

//: extension TalkingFemalePriceSetVC {
extension AdvancedActualViewDelegate {}

// MARK: - Layout

//: extension TalkingFemalePriceSetVC{
extension AdvancedActualViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func include() {
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func that() {}

    // 添加事件
    //: private func bindInteraction() {
    private func square() {}
}
