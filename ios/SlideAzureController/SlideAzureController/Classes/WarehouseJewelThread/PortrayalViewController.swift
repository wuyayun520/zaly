
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_designMinimizeUrl:[UInt8] = [0xa9,0xae,0xa9,0xb4,0xe8,0xa3,0xaf,0xa4,0xa5,0xb2,0xfa,0xe9,0xe0,0xa8,0xa1,0xb3,0xe0,0xae,0xaf,0xb4,0xe0,0xa2,0xa5,0xa5,0xae,0xe0,0xa9,0xad,0xb0,0xac,0xa5,0xad,0xa5,0xae,0xb4,0xa5,0xa4]

/*: "Settings" :*/
fileprivate let k_braceValue:[Character] = ["S","e","t","t","i","n","g"]
fileprivate let show_retStr:String = "count"

/*: "Security" :*/
fileprivate let show_safetyFormat:[Character] = ["S","e"]
fileprivate let k_sameSatisfyId:String = "cusecondty"

/*: "More" :*/
fileprivate let mainDuringId:[Character] = ["M","o","r","e"]

/*: "Logout succeeded!" :*/
fileprivate let constLengthAmData:[Character] = ["L","o","g","o","u","t"," ","s","u","c","c","e","e","d","e"]
fileprivate let noti_displayPlatformFormat:String = "d!transition bit quality private photo"

/*: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!" :*/
fileprivate let show_reminderName:[UInt8] = [0x76,0x4a,0x43,0x47,0x55,0x43,0x6,0x45,0x49,0x4b,0x4b,0x53,0x48,0x4f,0x45,0x47,0x52,0x43,0x6,0x51,0x4f,0x52,0x4e,0x6,0x49,0x48,0x4a,0x4f,0x48,0x43,0x6,0x55,0x43,0x54,0x50,0x4f,0x45,0x43,0x6,0x40,0x4f,0x54,0x55,0x52,0x6,0x47,0x48,0x42,0x6,0x52,0x4e,0x43,0x48,0x6,0x53,0x56,0x4a,0x49,0x47,0x42,0x6,0x4a,0x49,0x41,0x55,0xa,0x6,0x4a,0x49,0x41,0x55,0x6,0x47,0x54,0x43,0x6,0x53,0x55,0x43,0x42,0x6,0x52,0x49,0x6,0x47,0x48,0x47,0x4a,0x5f,0x5c,0x43,0x6,0x56,0x54,0x49,0x44,0x4a,0x43,0x4b,0x55,0x6,0x5f,0x49,0x53,0x6,0x43,0x48,0x45,0x49,0x53,0x48,0x52,0x43,0x54,0x43,0x42,0x6,0x4f,0x48,0x6,0x52,0x4e,0x43,0x6,0x53,0x55,0x43,0x6,0x49,0x40,0x6,0x52,0x4e,0x43,0x6,0x67,0x56,0x56,0x7]

private func upperFade(somebody num: UInt8) -> UInt8 {
    return num ^ 38
}

/*: "Cancel" :*/
fileprivate let userManagerLayName:[Character] = ["C","a","n","c","e","l"]

/*: "#999999" :*/
fileprivate let noti_earData:String = "#99999"
fileprivate let user_qualityName:String = "audience"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PortrayalViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/5.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

//: enum SettingsType: String {
enum SolarUTF8Initializable: String {
    //: case Contact_information   = "Contact information"
    case Contact_information = "Contact information"
    //: case Turnon_Notif          = "Notifications"
    case Turnon_Notif = "Notifications"
    //: case Social_Preferences    = "Social Preferences"
    case Social_Preferences = "Social Preferences"
    //: case Announcement_Settings = "Announcement Settings"
    case Announcement_Settings = "Announcement Settings"
    //: case Terms                 = "Terms of Use"
    case Terms = "Terms of Use"
    //: case Privacy               = "Privacy Policy"
    case Privacy = "Privacy Policy"
    //: case Aboutus               = "About us"
    case Aboutus = "About us"
    //: case Upload_Log            = "Upload Log"
    case Upload_Log = "Upload Log"
    //: case Black_List            = "Blacklist"
    case Black_List = "Blacklist"
    //: case Feedback              = "Feedback"
    case Feedback
    //: case Logout                = "Logout"
    case Logout
}

//: class TalkingSettingsVC: TalkingBaseViewController {
class PortrayalViewController: WeddingLovelyRecognizerDelegate {
    //: fileprivate lazy var bag = DisposeBag()
    fileprivate lazy var bag = DisposeBag()

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_designMinimizeUrl.map{$0^192}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Settings".localized
        self.title = (String(k_braceValue) + show_retStr.replacingOccurrences(of: "count", with: "s")).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.doingTo()
        //: designView()
        spaceView()
    }

    // MARK: - Lazy load

    //: private lazy var DataSource: [[SettingsType]] = {
    private lazy var DataSource: [[SolarUTF8Initializable]] = {
        //: var array = [[SettingsType]]()
        var array = [[SolarUTF8Initializable]]()
        //: var array1: [SettingsType] = [.Contact_information]
        var array1: [SolarUTF8Initializable] = [.Contact_information]
        //: var array2: [SettingsType] = [.Turnon_Notif]
        var array2: [SolarUTF8Initializable] = [.Turnon_Notif]
        //: var array3: [SettingsType] = [.Social_Preferences, .Announcement_Settings]
        var array3: [SolarUTF8Initializable] = [.Social_Preferences, .Announcement_Settings]

        //: var array4: [SettingsType] = [.Terms, .Privacy]
        var array4: [SolarUTF8Initializable] = [.Terms, .Privacy]
        //: var array5: [SettingsType] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        var array5: [SolarUTF8Initializable] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        //: var array6: [SettingsType] = [.Logout]
        var array6: [SolarUTF8Initializable] = [.Logout]

        //: array.append(array1)
        array.append(array1)
        //: array.append(array2)
        array.append(array2)
        //: array.append(array3)
        array.append(array3)
        //: array.append(array4)
        array.append(array4)
        //: array.append(array5)
        array.append(array5)
        //: array.append(array6)
        array.append(array6)
        //: return array
        return array
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: main_nameData - main_explainMessage), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()

    //: private lazy var headerSource: [String] = {
    private lazy var headerSource: [String] = {
        //: var array = ["", "", "", "Security".localized, "More".localized, ""]
        var array = ["", "", "", (String(show_safetyFormat) + k_sameSatisfyId.replacingOccurrences(of: "second", with: "ri")).localized, (String(mainDuringId)).localized, ""]
        //: return array
        return array
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingSettingsVC {
extension PortrayalViewController {
    /// logout
    //: func logoutTool() {
    func norSay() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard SpecialPermissionTool.once() == false else { return }
        //: guard TalkingSocketManager.shared.isInfo == false else {
        guard SantaLuciaFirSocketDelegate.shared.isInfo == false else { // 音视频通话中
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.enablece(showMsg: kLikeStr)
            //: return
            return
        }

        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingLoginRequestTool.req_loginOut { t in
        FirRequestTool.allowFor { t in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if t {
            if t {
                //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
                NotificationCenter.default.post(name: kOnValue, object: nil, userInfo: nil)
            }
        }
    }

    //: func LockAccount() {
    func mainDown() {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingMeRequestTool.req_LockAccount(params: [:]) { succeed, result, errorModel in
        FlyerThen.age(params: [:]) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                //: self.logoutTool()
                self.norSay()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Logout succeeded!".localized)
                self.showGuidanceName(showMsg: (String(constLengthAmData) + String(noti_displayPlatformFormat.prefix(2))).localized)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension PortrayalViewController: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerSource.count
        return headerSource.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: let verr: [SettingsType] = DataSource[section]
        let verr: [SolarUTF8Initializable] = DataSource[section]
        //: return verr.count
        return verr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 3 || section == 4 {
        if section == 3 || section == 4 {
            //: return 41
            return 41
        }
        //: return 12
        return 12
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell: TalkingSettingCell = tableView.dequeueReusableCell(withIdentifier: TalkingSettingCell.className(), for: indexPath) as! TalkingSettingCell
        let cell: SpillSceneView = tableView.dequeueReusableCell(withIdentifier: SpillSceneView.className(), for: indexPath) as! SpillSceneView

        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [SolarUTF8Initializable] = DataSource[indexPath.section]

        //: if indexPath.section == DataSource.count - 1 {
        if indexPath.section == DataSource.count - 1 {
            //: cell.setLogout(detail: verr[indexPath.row].rawValue)
            cell.person(detail: verr[indexPath.row].rawValue)

            //: cell.logutBtn.rx.tap.subscribe { [weak self] (event) in
            cell.logutBtn.rx.tap.subscribe { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.logoutTool()
                self.norSay()
                //: }.disposed(by: bag)
            }.disposed(by: bag)

            //: } else {
        } else {
            //: cell.setCellMessage(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count-1 )
            cell.sit(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count - 1)
        }

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [SolarUTF8Initializable] = DataSource[indexPath.section]
        //: if verr[indexPath.row] == .Feedback {
        if verr[indexPath.row] == .Feedback {
            //: let vc = TalkingFeedbackVC.init()
            let vc = ProgViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Black_List {
        } else if verr[indexPath.row] == .Black_List {
            //: let vc = TalkingBlacklistVC.init()
            let vc = BlacklistViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Terms {
        } else if verr[indexPath.row] == .Terms {
            //: PushThen.share.func__pushToWebVC(webViewType: .TermsofUse)
            PushThen.share.plumage(webViewType: .TermsofUse)
            //: } else if verr[indexPath.row] == .Privacy {
        } else if verr[indexPath.row] == .Privacy {
            //: PushThen.share.func__pushToWebVC(webViewType: .PrivacyPolicy)
            PushThen.share.plumage(webViewType: .PrivacyPolicy)
            //: } else if verr[indexPath.row] == .Contact_information {
        } else if verr[indexPath.row] == .Contact_information {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = DismissRunningCosmopolitanRecognizerDelegate()
            //: vc.setUnicersalView(type: .Contact_information)
            vc.straddleStand(type: .Contact_information)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Turnon_Notif {
        } else if verr[indexPath.row] == .Turnon_Notif {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = DismissRunningCosmopolitanRecognizerDelegate()
            //: vc.setUnicersalView(type: .Notifications)
            vc.straddleStand(type: .Notifications)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Social_Preferences {
        } else if verr[indexPath.row] == .Social_Preferences {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = DismissRunningCosmopolitanRecognizerDelegate()
            //: vc.setUnicersalView(type: .Social_Preferences)
            vc.straddleStand(type: .Social_Preferences)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

            //: } else if verr[indexPath.row] == .Announcement_Settings {
        } else if verr[indexPath.row] == .Announcement_Settings {
            //: PushThen.share.func__pushToWebVC(webViewType: .GiftBroadcast)
            PushThen.share.plumage(webViewType: .GiftBroadcast)

            //: } else if verr[indexPath.row] == .Aboutus {
        } else if verr[indexPath.row] == .Aboutus {
            //: let vc = TalkingAboutUsVC.init()
            let vc = AfterUsVc()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Upload_Log {
        } else if verr[indexPath.row] == .Upload_Log {
            //: let config = ShowAlertConfig()
            let config = PortraitAlertConfig()
            //: config.horizontalPadding = 30
            config.horizontalPadding = 30
            //: config.textFont = UIFont.pingfangRugularFont(fontSize: 16)
            config.textFont = UIFont.bonePlace(fontSize: 16)
            //: TalkingAlertShow.alert(title: nil, message: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, rightBlock: {
            AllowanceReactiveCompatible.maximal(title: nil, message: String(bytes: show_reminderName.map{upperFade(somebody: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(userManagerLayName)).localized, rightBtnTitle: "OK".localized, rightBlock: {
                //: UploadLogTool.shared.uploadLog()
                MateThen.shared.factorOutLog()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 40))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: main_logStr, height: 40))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.doingTo()
        //: let title = UILabel.init()
        let title = UILabel()
        //: title.textColor = UIColor.init(hex: "#999999")
        title.textColor = UIColor(hex: (noti_earData.capitalized + user_qualityName.replacingOccurrences(of: "audience", with: "9")))
        //: title.font = UIFont.pingfangFont(type: .Medium, fontSize: 16)
        title.font = UIFont.bigGallery(type: .Medium, fontSize: 16)
        //: title.text = headerSource[section]
        title.text = headerSource[section]
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(view).offset(30)
            make.leading.equalTo(view).offset(30)
            //: make.centerY.equalTo(view)
            make.centerY.equalTo(view)
        }
        //: return view
        return view
    }
}

// MARK: - UI

//: extension TalkingSettingsVC {
extension PortrayalViewController {
    //: private func designView() {
    private func spaceView() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingSettingCell.self, forCellReuseIdentifier: TalkingSettingCell.className())
        MainTable.register(SpillSceneView.self, forCellReuseIdentifier: SpillSceneView.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
