
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let mainLookFormat:[UInt8] = [0x89,0x8e,0x89,0x94,0xc8,0x83,0x8f,0x84,0x85,0x92,0xda,0xc9,0xc0,0x88,0x81,0x93,0xc0,0x8e,0x8f,0x94,0xc0,0x82,0x85,0x85,0x8e,0xc0,0x89,0x8d,0x90,0x8c,0x85,0x8d,0x85,0x8e,0x94,0x85,0x84]

/*: "Open then %@ will recommend users to you. A new chat will be made after a successful recommendation." :*/
fileprivate let const_dealMessage:[UInt8] = [0x24,0x45,0x3a,0x43,0xf5,0x49,0x3d,0x3a,0x43,0xf5,0xfa,0x15,0xf5,0x4c,0x3e,0x41,0x41,0xf5,0x47,0x3a,0x38,0x44,0x42,0x42,0x3a,0x43,0x39,0xf5,0x4a,0x48,0x3a,0x47,0x48,0xf5,0x49,0x44,0xf5,0x4e,0x44,0x4a,0x3,0xf5,0x16,0xf5,0x43,0x3a,0x4c,0xf5,0x38,0x3d,0x36,0x49,0xf5,0x4c,0x3e,0x41,0x41,0xf5,0x37,0x3a,0xf5,0x42,0x36,0x39,0x3a,0xf5,0x36,0x3b,0x49,0x3a,0x47,0xf5,0x36,0xf5,0x48,0x4a,0x38,0x38,0x3a,0x48,0x48,0x3b,0x4a,0x41,0xf5,0x47,0x3a,0x38,0x44,0x42,0x42,0x3a,0x43,0x39,0x36,0x49,0x3e,0x44,0x43,0x3]

fileprivate func parHuman(explain num: UInt8) -> UInt8 {
    let value = Int(num) - 213
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Your avatar and nickname will not be displayed in the ranking." :*/
fileprivate let noti_startText:[UInt8] = [0x2e,0x67,0x6e,0x69,0x6b,0x6e,0x61,0x72,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x20,0x64,0x65,0x79,0x61,0x6c,0x70,0x73,0x69,0x64,0x20,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x6c,0x6c,0x69,0x77,0x20,0x65,0x6d,0x61,0x6e,0x6b,0x63,0x69,0x6e,0x20,0x64,0x6e,0x61,0x20,0x72,0x61,0x74,0x61,0x76,0x61,0x20,0x72,0x75,0x6f,0x59]

/*: "Open then Applyname will recommend users to you. Use your identity to greet each other." :*/
fileprivate let constReduceEnoughData:[UInt8] = [0x2e,0x72,0x65,0x68,0x74,0x6f,0x20,0x68,0x63,0x61,0x65,0x20,0x74,0x65,0x65,0x72,0x67,0x20,0x6f,0x74,0x20,0x79,0x74,0x69,0x74,0x6e,0x65,0x64,0x69,0x20,0x72,0x75,0x6f,0x79,0x20,0x65,0x73,0x55,0x20,0x2e,0x75,0x6f,0x79,0x20,0x6f,0x74,0x20,0x73,0x72,0x65,0x73,0x75,0x20,0x64,0x6e,0x65,0x6d,0x6d,0x6f,0x63,0x65,0x72,0x20,0x6c,0x6c,0x69,0x77,0x20,0x65,0x6d,0x61,0x6e,0x79,0x6c,0x70,0x70,0x41,0x20,0x6e,0x65,0x68,0x74,0x20,0x6e,0x65,0x70,0x4f]

/*: "Open then %@ will recommend users to you. Use your identity to greet each other." :*/
fileprivate let appThirdFormat:[UInt8] = [0x4d,0x6e,0x63,0x6c,0x1e,0x72,0x66,0x63,0x6c,0x1e,0x23,0x3e,0x1e,0x75,0x67,0x6a,0x6a,0x1e,0x70,0x63,0x61,0x6d,0x6b,0x6b,0x63,0x6c,0x62,0x1e,0x73,0x71,0x63,0x70,0x71,0x1e,0x72,0x6d,0x1e,0x77,0x6d,0x73,0x2c,0x1e,0x53,0x71,0x63,0x1e,0x77,0x6d,0x73,0x70,0x1e,0x67,0x62,0x63,0x6c,0x72,0x67,0x72,0x77,0x1e,0x72,0x6d,0x1e,0x65,0x70,0x63,0x63,0x72,0x1e,0x63,0x5f,0x61,0x66,0x1e,0x6d,0x72,0x66,0x63,0x70,0x2c]

fileprivate func collisionCourse(move num: UInt8) -> UInt8 {
    let value = Int(num) - 254
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "#FF2348" :*/
fileprivate let user_shirtUrl:[Character] = ["#","F"]
fileprivate let kHarassmentMsg:String = "Fstrike348"

/*: "To set up a password, you need to verify the account, choose your verification method" :*/
fileprivate let noti_barrierName:[UInt8] = [0x64,0x6f,0x68,0x74,0x65,0x6d,0x20,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x76,0x20,0x72,0x75,0x6f,0x79,0x20,0x65,0x73,0x6f,0x6f,0x68,0x63,0x20,0x2c,0x74,0x6e,0x75,0x6f,0x63,0x63,0x61,0x20,0x65,0x68,0x74,0x20,0x79,0x66,0x69,0x72,0x65,0x76,0x20,0x6f,0x74,0x20,0x64,0x65,0x65,0x6e,0x20,0x75,0x6f,0x79,0x20,0x2c,0x64,0x72,0x6f,0x77,0x73,0x73,0x61,0x70,0x20,0x61,0x20,0x70,0x75,0x20,0x74,0x65,0x73,0x20,0x6f,0x54]

/*: "Verified by Phone" :*/
fileprivate let data_personalityName:String = "help muscle delivery plusVerif"
fileprivate let dataMatterMsg:String = "plan bolt acquirey Phone"

/*: "Verified by Email" :*/
fileprivate let userOrangeImpulseUrl:[Character] = ["V","e","r","i","f","i","e","d"," ","b","y"," ","E","m","a","i","l"]

/*: "You're going to delete your profile,messages, photos and matched friends PERMANENTLY and your account will be UNRECOVERABLE.Continue to delete your account? " :*/
fileprivate let const_dragText:[UInt8] = [0x0,0x36,0x2c,0x7e,0x2b,0x3c,0x79,0x3e,0x36,0x30,0x37,0x3e,0x79,0x2d,0x36,0x79,0x3d,0x3c,0x35,0x3c,0x2d,0x3c,0x79,0x20,0x36,0x2c,0x2b,0x79,0x29,0x2b,0x36,0x3f,0x30,0x35,0x3c,0x75,0x34,0x3c,0x2a,0x2a,0x38,0x3e,0x3c,0x2a,0x75,0x79,0x29,0x31,0x36,0x2d,0x36,0x2a,0x79,0x38,0x37,0x3d,0x79,0x34,0x38,0x2d,0x3a,0x31,0x3c,0x3d,0x79,0x3f,0x2b,0x30,0x3c,0x37,0x3d,0x2a,0x79,0x9,0x1c,0xb,0x14,0x18,0x17,0x1c,0x17,0xd,0x15,0x0,0x79,0x38,0x37,0x3d,0x79,0x20,0x36,0x2c,0x2b,0x79,0x38,0x3a,0x3a,0x36,0x2c,0x37,0x2d,0x79,0x2e,0x30,0x35,0x35,0x79,0x3b,0x3c,0x79,0xc,0x17,0xb,0x1c,0x1a,0x16,0xf,0x1c,0xb,0x18,0x1b,0x15,0x1c,0x77,0x1a,0x36,0x37,0x2d,0x30,0x37,0x2c,0x3c,0x79,0x2d,0x36,0x79,0x3d,0x3c,0x35,0x3c,0x2d,0x3c,0x79,0x20,0x36,0x2c,0x2b,0x79,0x38,0x3a,0x3a,0x36,0x2c,0x37,0x2d,0x66,0x79]

private func panelTrail(sufficient num: UInt8) -> UInt8 {
    return num ^ 89
}

/*: "UNRECOVERABLE" :*/
fileprivate let appThemeStr:String = "UlaunchEC"
fileprivate let mainOverData:[Character] = ["A","B","L","E"]

/*: "Delete Account" :*/
fileprivate let showBeyondPath:String = "drag slim primary challenge appearDe"
fileprivate let kAppealUrl:String = "along appeal able joinlete A"

/*: "Cancel" :*/
fileprivate let user_installKey:[Character] = ["C","a","n","c","e","l"]

/*: "Delete" :*/
fileprivate let kFinancialDonFormat:String = "Deleterip secret judge bot"

/*: "Logout succeeded!" :*/
fileprivate let dataUpperId:[Character] = ["L","o","g","o","u","t"," ","s"]
fileprivate let kMatchSpotId:String = "usupposede"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DismissRunningCosmopolitanRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/26.
//

//: import UIKit
import UIKit

//: enum SettingsUniversal: String {
enum ReserveSchemaConvertible: String {
    //: case Contact_information          = "Contact information"
    case Contact_information = "Contact information"
    //: case Notifications                = "Notifications"
    case Notifications
    //: case Social_Preferences           = "Social Preferences"
    case Social_Preferences = "Social Preferences"
}

//: enum SettingsUniversalType: String {
enum IceGrantSchemaConvertible: String {
    //: case Phone_Number          = "Phone Number"
    case Phone_Number = "Phone Number"
    //: case Email_Address         = "Email Address"
    case Email_Address = "Email Address"
    //: case Turnon_Notif          = "Turn on Notification"
    case Turnon_Notif = "Turn on Notification"
    //: case Same_gendered         = "Same-gendered messaging"
    case Same_gendered = "Same-gendered messaging"
    //: case Cupid                 = "Cupid messaging"
    case Cupid = "Cupid messaging"
    //: case Ranking               = "Ranking anonymous"
    case Ranking = "Ranking anonymous"
    //: case Automatic             = "Automatic message"
    case Automatic = "Automatic message"
    //: case SetPassword           = "Set New Password"
    case SetPassword = "Set New Password"
    //: case DeleteA               = "Delete Account"
    case DeleteA = "Delete Account"
}

//: class TalkingSettingsUniversalVC: TalkingBaseViewController {
class DismissRunningCosmopolitanRecognizerDelegate: WeddingLovelyRecognizerDelegate {
    //: fileprivate lazy var bag = DisposeBag()
    fileprivate lazy var bag = DisposeBag()
    //: var settingModel = TalkingSettingModel()
    var settingModel = ConfirmTransformable()

    //: var  type = SettingsUniversal.Contact_information
    var type = ReserveSchemaConvertible.Contact_information

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: mainLookFormat.map{$0^224}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
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
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.doingTo()
        //: designView()
        detailPlayerView()
        //: getSettingData()
        sharedData()
    }

    // MARK: - Lazy load

    //: private lazy var DataSource: [SettingsUniversalType] = {
    private lazy var DataSource: [IceGrantSchemaConvertible] = {
        //: var array = [SettingsUniversalType]()
        var array = [IceGrantSchemaConvertible]()
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

    //: private lazy var DetailSource: [String] = {
    private lazy var DetailSource: [String] = {
        //: var array = ["", "Open then %@ will recommend users to you. A new chat will be made after a successful recommendation.".localizedArguments(AppName), "Your avatar and nickname will not be displayed in the ranking.".localized, "Open then Applyname will recommend users to you. Use your identity to greet each other.".localized]
        var array = ["", String(bytes: const_dealMessage.map{parHuman(explain: $0)}, encoding: .utf8)!.unitedStates(showLengthControlUrl), String(bytes: noti_startText.reversed(), encoding: .utf8)!.localized, String(bytes: constReduceEnoughData.reversed(), encoding: .utf8)!.localized]
        //: if DismissReactiveCompatible.share.loginUserMode.sex == "2" {
        if DismissReactiveCompatible.share.loginUserMode.sex == "2" {
            //: array[1] = "Open then %@ will recommend users to you. Use your identity to greet each other.".localizedArguments(AppName)
            array[1] = String(bytes: appThirdFormat.map{collisionCourse(move: $0)}, encoding: .utf8)!.unitedStates(showLengthControlUrl)
        }
        //: return array
        return array
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingSettingsUniversalVC {
extension DismissRunningCosmopolitanRecognizerDelegate {
    //: func getSettingData() {
    func sharedData() {
        //: let dict = Dictionary<String, Any>()
        let dict = [String: Any]()
        //: TalkingMeRequestTool.req_GetSetting(params: dict) { succeed, result, errorModel in
        FlyerThen.scenario(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: self.settingModel = JSONDeserializer<TalkingSettingModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil)!
                self.settingModel = JSONDeserializer<ConfirmTransformable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil)!
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func setUnicersalView(type: SettingsUniversal) {
    func straddleStand(type: ReserveSchemaConvertible) {
        //: self.type = type
        self.type = type
        //: self.title = type.rawValue.localized
        self.title = type.rawValue.localized
        //: switch type {
        switch type {
        //: case .Contact_information:
        case .Contact_information:
            //: if DismissReactiveCompatible.share.appConfigMode.enableSmsLogin {
            if DismissReactiveCompatible.share.appConfigMode.enableSmsLogin {
                //: DataSource.append(.Phone_Number)
                DataSource.append(.Phone_Number)
            }
            //: DataSource.append(.Email_Address)
            DataSource.append(.Email_Address)
            //: if (DismissReactiveCompatible.share.appConfigMode.enableSmsLogin &&
            if (DismissReactiveCompatible.share.appConfigMode.enableSmsLogin &&
                //: DismissReactiveCompatible.share.loginUserMode.mobile?.count ?? 0 > 0) ||
                DismissReactiveCompatible.share.loginUserMode.mobile?.count ?? 0 > 0) ||
                //: DismissReactiveCompatible.share.loginUserMode.email.count > 0 {
                DismissReactiveCompatible.share.loginUserMode.email.count > 0
            {
                //: DataSource.append(.SetPassword)
                DataSource.append(.SetPassword)
            }
            //: DataSource.append(.DeleteA)
            DataSource.append(.DeleteA)
        //: break
        //: case .Notifications:
        case .Notifications:
            //: DataSource.append(.Turnon_Notif)
            DataSource.append(.Turnon_Notif)
        //: break
        //: case .Social_Preferences:
        case .Social_Preferences:
            //: DataSource.append(.Same_gendered)
            DataSource.append(.Same_gendered)
            //: DataSource.append(.Cupid)
            DataSource.append(.Cupid)
            //: DataSource.append(.Ranking)
            DataSource.append(.Ranking)
            //: DataSource.append(.Automatic)
            DataSource.append(.Automatic)
            //: break
        }
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    /// 获取修改【手机号】密码验证码
    //: private func req_sendModifyPwdSms() {
    private func betweenSms() {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingLoginRequestTool.req_sendModifyPwdSms { succeed, result, errorModel in
        FirRequestTool.positive { succeed, _, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: guard succeed else { return }
            guard succeed else { return }
            //: PushThen.share.func__pushToSetNewPasswordVC(type: .PhoneLogin, content: DismissReactiveCompatible.share.loginUserMode.mobile ?? "", isNewPwd: false)
            PushThen.share.toValid(type: .PhoneLogin, content: DismissReactiveCompatible.share.loginUserMode.mobile ?? "", isNewPwd: false)
        }
    }

    /// 获取修改【邮箱】密码验证码
    //: private func req_sendModifyPwdEmail() {
    private func taskEmail() {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingLoginRequestTool.req_sendModifyPwdEmail { succeed, result, errorModel in
        FirRequestTool.email { succeed, _, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: guard succeed else { return }
            guard succeed else { return }
            //: PushThen.share.func__pushToSetNewPasswordVC(type: .EmailLogin, content: DismissReactiveCompatible.share.loginUserMode.email, isNewPwd: false)
            PushThen.share.toValid(type: .EmailLogin, content: DismissReactiveCompatible.share.loginUserMode.email, isNewPwd: false)
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingSettingsUniversalVC: UITableViewDelegate, UITableViewDataSource {
extension DismissRunningCosmopolitanRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return DataSource.count
        return DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: switch type {
        switch type {
        //: case .Contact_information, .Notifications:
        case .Contact_information, .Notifications:
            //: return actualHeight(h: 50)
            return actualHeight(h: 50)
        //: case .Social_Preferences:
        case .Social_Preferences:
            //: if DataSource[indexPath.row] == .Same_gendered {
            if DataSource[indexPath.row] == .Same_gendered {
                //: return actualHeight(h: 50)
                return actualHeight(h: 50)
                //: }else if DataSource[indexPath.row] == .Cupid {
            } else if DataSource[indexPath.row] == .Cupid {
                //: if DismissReactiveCompatible.share.loginUserMode.sex == "2" {
                if DismissReactiveCompatible.share.loginUserMode.sex == "2" {
                    //: return actualHeight(h: 89)
                    return actualHeight(h: 89)
                    //: } else {
                } else {
                    //: return actualHeight(h: 109)
                    return actualHeight(h: 109)
                }
                //: }  else if (DataSource[indexPath.row] == .Ranking ||  DataSource[indexPath.row] == .Automatic) {
            } else if DataSource[indexPath.row] == .Ranking || DataSource[indexPath.row] == .Automatic {
                //: return actualHeight(h: 92)
                return actualHeight(h: 92)
            }
            //: return actualHeight(h: 50)
            return actualHeight(h: 50)
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: switch self.type {
        switch self.type {
        //: case .Contact_information:
        case .Contact_information:
            //: let cell: TalkingSettingCell = tableView.dequeueReusableCell(withIdentifier: TalkingSettingCell.className(), for: indexPath) as! TalkingSettingCell
            let cell: SpillSceneView = tableView.dequeueReusableCell(withIdentifier: SpillSceneView.className(), for: indexPath) as! SpillSceneView

            //: cell.setCellMessage(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count-1 )
            cell.sit(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count - 1)
            //: cell.titleBLB.textColor = UIColor.appTitleColor()
            cell.titleBLB.textColor = UIColor.dialog()

            //: if DataSource[indexPath.row] == SettingsUniversalType.Phone_Number {
            if DataSource[indexPath.row] == IceGrantSchemaConvertible.Phone_Number {
                //: if DismissReactiveCompatible.share.loginUserMode.mobile?.count ?? 0 > 0 {
                if DismissReactiveCompatible.share.loginUserMode.mobile?.count ?? 0 > 0 {
                    //: cell.setCellDetails(detail: DismissReactiveCompatible.share.loginUserMode.mobile ?? "")
                    cell.anonymous(detail: DismissReactiveCompatible.share.loginUserMode.mobile ?? "")
                    //: } else {
                } else {
                    //: cell.editImag.isHidden = false
                    cell.editImag.isHidden = false
                }
                //: cell.titleBLB.textColor = .appTitleColor()
                cell.titleBLB.textColor = .dialog()
                //: } else if DataSource[indexPath.row] == SettingsUniversalType.Email_Address {
            } else if DataSource[indexPath.row] == IceGrantSchemaConvertible.Email_Address {
                //: if DismissReactiveCompatible.share.loginUserMode.email.count > 0 {
                if DismissReactiveCompatible.share.loginUserMode.email.count > 0 {
                    //: cell.setCellDetails(detail: DismissReactiveCompatible.share.loginUserMode.email )
                    cell.anonymous(detail: DismissReactiveCompatible.share.loginUserMode.email)
                    //: } else {
                } else {
                    //: cell.editImag.isHidden = false
                    cell.editImag.isHidden = false
                }
                //: } else if DataSource[indexPath.row] == SettingsUniversalType.SetPassword {
            } else if DataSource[indexPath.row] == IceGrantSchemaConvertible.SetPassword {
                //: cell.editImag.isHidden = false
                cell.editImag.isHidden = false
                //: } else if DataSource[indexPath.row] == SettingsUniversalType.DeleteA {
            } else if DataSource[indexPath.row] == IceGrantSchemaConvertible.DeleteA {
                //: cell.editImag.isHidden = true
                cell.editImag.isHidden = true
                //: cell.titleBLB.textColor = UIColor.init(hex: "#FF2348")
                cell.titleBLB.textColor = UIColor(hex: (String(user_shirtUrl) + kHarassmentMsg.replacingOccurrences(of: "strike", with: "2")))
            }

            //: return cell
            return cell

        //: case .Notifications, .Social_Preferences:
        case .Notifications, .Social_Preferences:
            //: let cell: TalkingSettingNotifCell = tableView.dequeueReusableCell(withIdentifier: TalkingSettingNotifCell.className(), for: indexPath) as! TalkingSettingNotifCell
            let cell: EndViewCell = tableView.dequeueReusableCell(withIdentifier: EndViewCell.className(), for: indexPath) as! EndViewCell

            //: cell.setCellMessage(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count-1 )
            cell.more(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count - 1)
            //: if self.type == .Social_Preferences {
            if self.type == .Social_Preferences {
                //: cell.setCellDetails(detail: DetailSource[indexPath.row])
                cell.think(detail: DetailSource[indexPath.row])
            }
            //: if DataSource[indexPath.row] == .Turnon_Notif {
            if DataSource[indexPath.row] == .Turnon_Notif {
                //: UNUserNotificationCenter.current().getNotificationSettings { settings in
                UNUserNotificationCenter.current().getNotificationSettings { settings in
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: let result = settings.authorizationStatus == .authorized
                        let result = settings.authorizationStatus == .authorized
                        //: cell.setCellNotif(isShow: result ? 1 : -1)
                        cell.notif(isShow: result ? 1 : -1)
                    }
                }
                //: } else if DataSource[indexPath.row] == .Cupid {
            } else if DataSource[indexPath.row] == .Cupid {
                //: cell.setCellNotif(isShow: self.settingModel.isCupid ?? 1)
                cell.notif(isShow: self.settingModel.isCupid ?? 1)
                //: } else if DataSource[indexPath.row] == .Ranking {
            } else if DataSource[indexPath.row] == .Ranking {
                //: cell.setCellNotif(isShow: self.settingModel.isLeaderboardAnonymous ?? -1)
                cell.notif(isShow: self.settingModel.isLeaderboardAnonymous ?? -1)
                //: } else if DataSource[indexPath.row] == .Same_gendered {
            } else if DataSource[indexPath.row] == .Same_gendered {
                //: cell.setCellNotif(isShow: self.settingModel.isSameGendered ?? -1)
                cell.notif(isShow: self.settingModel.isSameGendered ?? -1)
                //: } else if DataSource[indexPath.row] == .Automatic {
            } else if DataSource[indexPath.row] == .Automatic {
                //: cell.setCellNotif(isShow: self.settingModel.autoGreetAuth ?? -1)
                cell.notif(isShow: self.settingModel.autoGreetAuth ?? -1)
            }
            //: return cell
            return cell
        }
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if self.type == .Contact_information {
        if self.type == .Contact_information {
            //: if DataSource[indexPath.row].rawValue == SettingsUniversalType.Phone_Number.rawValue {
            if DataSource[indexPath.row].rawValue == IceGrantSchemaConvertible.Phone_Number.rawValue {
                //: let mobile = DismissReactiveCompatible.share.loginUserMode.mobile ?? ""
                let mobile = DismissReactiveCompatible.share.loginUserMode.mobile ?? ""
                //: if mobile.isEmptyString {
                if mobile.isEmptyString {
                    //: let vc = TalkingBindPhoneVC()
                    let vc = RatingAbsoluteViewController()
                    //: navigationController?.pushViewController(vc, animated: true)
                    navigationController?.pushViewController(vc, animated: true)
                }
                //: } else if DataSource[indexPath.row].rawValue == SettingsUniversalType.Email_Address.rawValue {
            } else if DataSource[indexPath.row].rawValue == IceGrantSchemaConvertible.Email_Address.rawValue {
                //: if DismissReactiveCompatible.share.loginUserMode.email.count <= 0 {
                if DismissReactiveCompatible.share.loginUserMode.email.count <= 0 {
                    //: let vc = TalkingLoginBindEmailVC()
                    let vc = ArtTitleureEmailVc()
                    //: vc.isBack = true
                    vc.isBack = true
                    //: navigationController?.pushViewController(vc, animated: true)
                    navigationController?.pushViewController(vc, animated: true)
                }
                //: } else if DataSource[indexPath.row].rawValue == SettingsUniversalType.DeleteA.rawValue {
            } else if DataSource[indexPath.row].rawValue == IceGrantSchemaConvertible.DeleteA.rawValue {
                //: writeOff()
                annotate()
                //: } else if DataSource[indexPath.row].rawValue == SettingsUniversalType.SetPassword.rawValue {
            } else if DataSource[indexPath.row].rawValue == IceGrantSchemaConvertible.SetPassword.rawValue {
                //: let haveMobile = DismissReactiveCompatible.share.appConfigMode.enableSmsLogin && (DismissReactiveCompatible.share.loginUserMode.mobile?.count ?? 0 > 0)
                let haveMobile = DismissReactiveCompatible.share.appConfigMode.enableSmsLogin && (DismissReactiveCompatible.share.loginUserMode.mobile?.count ?? 0 > 0)
                //: let haveEmail = DismissReactiveCompatible.share.loginUserMode.email.count > 0
                let haveEmail = DismissReactiveCompatible.share.loginUserMode.email.count > 0
                //: if haveMobile, haveEmail {
                if haveMobile, haveEmail { // 手机号和邮箱都存在
                    //: let vc = TalkingMunuPopView(frame: self.view.frame)
                    let vc = DoingcePopView(frame: self.view.frame)
                    //: vc.title = "To set up a password, you need to verify the account, choose your verification method".localized
                    vc.title = String(bytes: noti_barrierName.reversed(), encoding: .utf8)!.localized
                    //: vc.titleFont = UIFont.pingfangRugularFont(fontSize: 12)
                    vc.titleFont = UIFont.bonePlace(fontSize: 12)
                    //: vc.titleColor = UIColor.appValueDetailColor()
                    vc.titleColor = UIColor.saveInColor()
                    //: vc.cellTitleFont = UIFont.pingfangMediumFont(fontSize: 16)
                    vc.cellTitleFont = UIFont.pingfang(fontSize: 16)
                    //: vc.hasCancel = false
                    vc.hasCancel = false
                    //: vc.initwithList(cellTitleList: ["Verified by Phone".localized, "Verified by Email".localized])
                    vc.reasonPostList(cellTitleList: [(String(data_personalityName.suffix(5)) + "ied b" + String(dataMatterMsg.suffix(7))).localized, (String(userOrangeImpulseUrl)).localized])
                    //: vc.munuBlock = { [weak self] index, str in
                    vc.munuBlock = { [weak self] index, _ in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: if index == 0 {
                        if index == 0 {
                            //: self.req_sendModifyPwdSms()
                            self.betweenSms()
                            //: } else if index == 1 {
                        } else if index == 1 {
                            //: self.req_sendModifyPwdEmail()
                            self.taskEmail()
                        }
                    }

                    //: } else if haveMobile {
                } else if haveMobile {
                    //: req_sendModifyPwdSms()
                    betweenSms()

                    //: } else if haveEmail {
                } else if haveEmail {
                    //: req_sendModifyPwdEmail()
                    taskEmail()
                }
            }
        }
    }
}

//: extension TalkingSettingsUniversalVC {
extension DismissRunningCosmopolitanRecognizerDelegate {
    /// 注销
    //: private func writeOff() {
    private func annotate() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard SpecialPermissionTool.once() == false else { return }
        //: guard TalkingSocketManager.shared.isInfo == false else {
        guard SantaLuciaFirSocketDelegate.shared.isInfo == false else { // 音视频通话中
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.enablece(showMsg: kLikeStr)
            //: return
            return
        }

        //: var seconds = 15
        var seconds = 15
        //: let timer: DispatchSourceTimer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.main)
        let timer: DispatchSourceTimer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.main)
        //: timer.schedule(deadline: .now(), repeating: 1.0)
        timer.schedule(deadline: .now(), repeating: 1.0)

        //: let str = "You're going to delete your profile,messages, photos and matched friends PERMANENTLY and your account will be UNRECOVERABLE.Continue to delete your account? ".localized
        let str = String(bytes: const_dragText.map{panelTrail(sufficient: $0)}, encoding: .utf8)!.localized

        //: let range =  str.exMatchStrRange("UNRECOVERABLE")
        let range = str.connectJump((appThemeStr.replacingOccurrences(of: "launch", with: "NR") + "OVER" + String(mainOverData)))

        //: let string = NSMutableAttributedString.init(string: str )
        let string = NSMutableAttributedString(string: str)
        //: if range.count > 0 {
        if range.count > 0 {
            //: string.addAttribute(.foregroundColor, value: UIColor.msgTipsColor(), range: range.first!)
            string.addAttribute(.foregroundColor, value: UIColor.chromaticColourColor(), range: range.first!)
        }
        //: TalkingAlertShow.attribAlert(title: "Delete Account".localized, attributedMessage: string, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized) {
        AllowanceReactiveCompatible.barrierBlock(title: (String(showBeyondPath.suffix(2)) + String(kAppealUrl.suffix(6)) + "ccount").localized, attributedMessage: string, leftBtnTitle: (String(user_installKey)).localized, rightBtnTitle: (String(kFinancialDonFormat.prefix(6))).localized) {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()
            //: timer.cancel()
            timer.cancel()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            AllowanceReactiveCompatible.minuteOriginBridge()

            //: self.LockAccount()
            self.conversion()
        }

        //: timer.setEventHandler {
        timer.setEventHandler {
            //: seconds -= 1
            seconds -= 1
            //: if seconds <= 0 {
            if seconds <= 0 {
                //: timer.cancel()
                timer.cancel()
                //: TalkingAlertShow.changeRightBtn(title: "Delete".localized, isTouch: true)
                AllowanceReactiveCompatible.anThreshold(title: (String(kFinancialDonFormat.prefix(6))).localized, isTouch: true)
                //: } else {
            } else {
                //: TalkingAlertShow.changeRightBtn(title: "Delete".localized + " (\(seconds)s)", isTouch: false)
                AllowanceReactiveCompatible.anThreshold(title: (String(kFinancialDonFormat.prefix(6))).localized + " (\(seconds)s)", isTouch: false)
            }
        }
        //: timer.resume()
        timer.resume()
    }

    //: private func LockAccount() {
    private func conversion() {
        //: ProgressHUD.show()
        InsertProgressHUD.momentShow()
        //: TalkingMeRequestTool.req_LockAccount(params: [:]) { succeed, result, errorModel in
        FlyerThen.age(params: [:]) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            InsertProgressHUD.detectDismiss()
            //: if succeed {
            if succeed {
                //: self.logoutTool()
                self.page()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Logout succeeded!".localized)
                self.showGuidanceName(showMsg: (String(dataUpperId) + kMatchSpotId.replacingOccurrences(of: "supposed", with: "cc") + "eded!").localized)
            }
        }
    }

    //: private func logoutTool() {
    private func page() {
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
}

// MARK: - UI

//: extension TalkingSettingsUniversalVC {
extension DismissRunningCosmopolitanRecognizerDelegate {
    //: private func designView() {
    private func detailPlayerView() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingSettingCell.self, forCellReuseIdentifier: TalkingSettingCell.className())
        MainTable.register(SpillSceneView.self, forCellReuseIdentifier: SpillSceneView.className())
        //: MainTable.register(TalkingSettingNotifCell.self, forCellReuseIdentifier: TalkingSettingNotifCell.className())
        MainTable.register(EndViewCell.self, forCellReuseIdentifier: EndViewCell.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.leading.trailing.bottom.equalTo(self.view)
            make.leading.trailing.bottom.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
