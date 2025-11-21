
//: Declare String Begin

/*: "Beautify Settings" :*/
fileprivate let constMerelyWedData:String = "Beaufactor page back certain"
fileprivate let main_waitMessage:String = "tireachs"

/*: "icon_me_videoSet_beauty" :*/
fileprivate let k_editNothingFormat:String = "icon_mvehicle terms behavior"
fileprivate let dataSoulChallengeMessage:String = "pretty alleged generateeoSe"
fileprivate let noti_standardOthersEvenKey:String = "domainy"

/*: "Video Settings" :*/
fileprivate let main_continuingMessage:String = "Videpresentation editor previous"
fileprivate let app_welcomePath:[Character] = ["t","i","n","g","s"]

/*: "Enter " :*/
fileprivate let showEaseText:[Character] = ["E","n","t","e","r"]
fileprivate let notiOverName:[Character] = [" "]

/*: "Settings" :*/
fileprivate let showMaybeStr:String = "Settingsfragment member general skip conduct"

/*: " and open " :*/
fileprivate let userCapacityData:[Character] = [" ","a","n","d"," ","o"]
fileprivate let notiWomanSeveralWouldKey:String = "overwhelm will equity mechanicalpen "

/*: "Camera" :*/
fileprivate let kTimingStr:String = "hang least sea quantityCamera"

/*: " permission to use this function normally" :*/
fileprivate let show_characterJustMessage:[UInt8] = [0x63,0x33,0x26,0x31,0x2e,0x2a,0x30,0x30,0x2a,0x2c,0x2d,0x63,0x37,0x2c,0x63,0x36,0x30,0x26,0x63,0x37,0x2b,0x2a,0x30,0x63,0x25,0x36,0x2d,0x20,0x37,0x2a,0x2c,0x2d,0x63,0x2d,0x2c,0x31,0x2e,0x22,0x2f,0x2f,0x3a]

private func insertRelief(sale num: UInt8) -> UInt8 {
    return num ^ 67
}

/*: "Cancel" :*/
fileprivate let dataEndId:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SettingsViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: class TalkingVideoSettingsVC: TalkingBaseViewController {
class SettingsViewDelegate: WeddingLovelyRecognizerDelegate {
    // MARK: - life cycle

    //: private var headerData = [("Beautify Settings", "icon_me_videoSet_beauty"),
    private var headerData = [((String(constMerelyWedData.prefix(4)) + "tify Set" + main_waitMessage.replacingOccurrences(of: "reach", with: "ng")), (String(k_editNothingFormat.prefix(6)) + "e_vid" + String(dataSoulChallengeMessage.suffix(4)) + "t_beau" + noti_standardOthersEvenKey.replacingOccurrences(of: "domain", with: "t"))),
                              //: ("", "")]
                              ("", "")]

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.doingTo()
        //: self.title = "Video Settings".localized
        self.title = (String(main_continuingMessage.prefix(4)) + "o Set" + String(app_welcomePath)).localized
        //: self.setupSubviews()
        self.ta()
        //: self.setupSubViewsConstraint()
        self.fragmentAsk()
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: .grouped)
        let table = UITableView(frame: .zero, style: .grouped)
        //: table.backgroundColor = UIColor.appBgColor()
        table.backgroundColor = UIColor.doingTo()
        //: table.register(TalkingSettingReceiveVideoCell.self, forCellReuseIdentifier: TalkingSettingReceiveVideoCell.className())
        table.register(RelativeViewCell.self, forCellReuseIdentifier: RelativeViewCell.className())
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()
}

// MARK: - private methods

//: extension TalkingVideoSettingsVC {
extension SettingsViewDelegate {
    func showAlert() {
        AllowanceReactiveCompatible.maximal(title: nil, message: (String(showEaseText) + String(notiOverName)) + "\"" + (String(showMaybeStr.prefix(8))) + "\"" + (String(userCapacityData) + String(notiWomanSeveralWouldKey.suffix(4))) + "\"" + (String(kTimingStr.suffix(6))) + "\"" + String(bytes: show_characterJustMessage.map{insertRelief(sale: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(dataEndId)).localized, rightBtnTitle: (String(showMaybeStr.prefix(8))).localized) {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: let url = URL(string: UIApplication.openSettingsURLString)
            let url = URL(string: UIApplication.openSettingsURLString)
            //: if  UIApplication.shared.canOpenURL(url!) {
            if UIApplication.shared.canOpenURL(url!) {
                //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
            }
        }
    }
    
    //: func judgeCameraAuthorization() {
    func broadFor() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        SpecialPermissionTool.exitSmart(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isInfo == false else {
                guard SantaLuciaFirSocketDelegate.shared.isInfo == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.enablece(showMsg: kLikeStr)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = PrimaryViewController()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                self.showAlert()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension SettingsViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerData.count
        return headerData.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 0
            return 0
            //: } else if section == 1 {
        } else if section == 1 {
            //: return 2
            return 2
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 1 {
        if indexPath.section == 1 {
            //: return 65
            return 65
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if (section == 0 && SenseTime_Use) {
        if section == 0 && main_dismissMessage {
            //: return 75
            return 75
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 1 {
        if indexPath.section == 1 {
            //: let cell: TalkingSettingReceiveVideoCell = tableView.dequeueReusableCell(withIdentifier: TalkingSettingReceiveVideoCell.className(), for: indexPath) as! TalkingSettingReceiveVideoCell
            let cell: RelativeViewCell = tableView.dequeueReusableCell(withIdentifier: RelativeViewCell.className(), for: indexPath) as! RelativeViewCell
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.refreshCell(type: .video)
                cell.earlierType(type: .video)
                //: } else if indexPath.row == 1 {
            } else if indexPath.row == 1 {
                //: cell.refreshCell(type: .voice)
                cell.earlierType(type: .voice)
            }
            //: return cell
            return cell
        }

        //: return UITableViewCell()
        return UITableViewCell()
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: guard (section == 0 && SenseTime_Use) else { return nil }
        guard section == 0 && main_dismissMessage else { return nil }
        //: let headeView: TalkingVideoSettingHeaderCell = TalkingVideoSettingHeaderCell.init(style: .default, reuseIdentifier: nil)
        let headeView = CompartmentRedReactiveCompatible(style: .default, reuseIdentifier: nil)
        //: let data = self.headerData[section]
        let data = self.headerData[section]
        //: headeView.setViewData(title: data.0, icon: data.1)
        headeView.fore(title: data.0, icon: data.1)
        //: if section == 0 {
        if section == 0 {
            //: headeView.setTips(isHidden: true)
            headeView.no(isHidden: true)
        }
        //: headeView.touchBlock = { [weak self] in
        headeView.touchBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if section == 0 && SenseTime_Use {
            if section == 0 && main_dismissMessage {
                //: self.judgeCameraAuthorization()
                self.broadFor()
            }
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingsVC {
extension SettingsViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func ta() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func fragmentAsk() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
