
//: Declare String Begin

/*: "AppResourcesVersionKey" :*/
fileprivate let dataPopularKey:String = "alter skip nag southwestAppRe"
fileprivate let userSituationStr:String = "nearby already excesVe"
fileprivate let user_crystalName:[Character] = ["r","s","i","o","n","K","e","y"]

/*: ".zip" :*/
fileprivate let app_occurData:String = ".zipportrait evaluation"

/*: "pic" :*/
fileprivate let notiRenderGiftMsg:String = "marketingic"

/*: "nor" :*/
fileprivate let app_natureMsg:String = "disableor"

/*: "svga" :*/
fileprivate let main_finiteThereValue:String = "sreservega"

/*: "mp3" :*/
fileprivate let user_minimumCustomData:String = "mbeyond"

/*: "model" :*/
fileprivate let notiTheoryAttachMessage:String = "moattractiveel"

/*: "language" :*/
fileprivate let noti_movementValue:String = "lanwritinguawritinge"

/*: "video" :*/
fileprivate let appTrackStr:[Character] = ["v","i","d","e","o"]

/*: "@2x.png" :*/
fileprivate let main_assistantMessage:String = "custom rid@2x.png"

/*: "png" :*/
fileprivate let mainHugeAccompanyName:[Character] = ["p","n","g"]

/*: "mp4" :*/
fileprivate let userTagStepData:String = "mpaid"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlackEffectTool.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/4/27.
//

//: import Foundation
import Foundation

/// 资源版本号
//: private let AppResourcesVersionKey = "AppResourcesVersionKey"
private let userJumpPath = (String(dataPopularKey.suffix(5)) + "sour" + String(userSituationStr.suffix(5)) + String(user_crystalName))

//: enum SVGAType: String {
enum TapTextSumerpolation: String {
    //: case Login_Main_BG              = "login_main_bg"
    case Login_Main_BG = "login_main_bg"
    //: case Chat_Record_Yellow         = "chat_record_yellow"
    case Chat_Record_Yellow = "chat_record_yellow"
    //: case Chat_Record_Red            = "chat_record_red"
    case Chat_Record_Red = "chat_record_red"
    //: case Greet_Corrugated_Yellow    = "greet_corrugated_yellow"
    case Greet_Corrugated_Yellow = "greet_corrugated_yellow"
    //: case Greet_Corrugated_Red       = "greet_corrugated_red"
    case Greet_Corrugated_Red = "greet_corrugated_red"
    //: case Play_Audio_Wave            = "play_audio_wave"
    case Play_Audio_Wave = "play_audio_wave"
    //: case Club_guidePage             = "club_guidePage"
    case Club_guidePage = "club_guidePage"
    //: case VideoCall_femalePoint      = "videoCall_femalePoint"
    case VideoCall_femalePoint = "videoCall_femalePoint"
    //: case videoCall_femalePoint_ar   = "videoCall_femalePoint_ar"
    case videoCall_femalePoint_ar
    //: case videoCall_femalePoint_es   = "videoCall_femalePoint_es"
    case videoCall_femalePoint_es
    //: case videoCall_femalePoint_pt   = "videoCall_femalePoint_pt"
    case videoCall_femalePoint_pt
    //: case Live_tabBar                = "live_tabbar"
    case Live_tabBar = "live_tabbar"
    //: case Moment_like                = "moment_like"
    case Moment_like = "moment_like"
    //: case Moment_likeRight           = "Moment_likeRight"
    case Moment_likeRight
    //: case Crush                      = "crush"
    case Crush = "crush"
    //: case Videocall_initiver         = "videocall_initiver"
    case Videocall_initiver = "videocall_initiver"
    //: case Live_countdown_bg          = "live_countdown_bg"
    case Live_countdown_bg = "live_countdown_bg"
    //: case Random_video_bg            = "random_video_bg"
    case Random_video_bg = "random_video_bg"
    //: case Random_video_bg_nor        = "random_video_bg_nor"
    case Random_video_bg_nor = "random_video_bg_nor"
    //: case Match_userCall             = "match_userCall"
    case Match_userCall = "match_userCall"
    //: case Tabbar_randownCall         = "tabbar_randownCall"
    case Tabbar_randownCall = "tabbar_randownCall"
    //: case CallTalk_Accept            = "CallTalk_Accept"
    case CallTalk_Accept
    //: case Private_Chat_intimate      = "private_Chat_intimate"
    case Private_Chat_intimate = "private_Chat_intimate"
    //: case Home_Chat_hi               = "home_Chat_hi"
    case Home_Chat_hi = "home_Chat_hi"
}

//: class SVGAEffectTool: NSObject {
class BlackEffectTool: NSObject {
    //: static let `default` = SVGAEffectTool()
    static let `default` = BlackEffectTool()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
    }

    //: private lazy var AppResPath: String = {
    private lazy var AppResPath: String = {
        //: let docuPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let docuPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let res_Dir = (docuPath as NSString).appendingPathComponent(PodspecName)
        let res_Dir = (docuPath as NSString).appendingPathComponent(notiWarningCleanContent)
        //: let version = Defaults.string(forKey: AppResourcesVersionKey) ?? ""
        let version = data_partyText.string(forKey: userJumpPath) ?? ""
        //: if version == AppVersion, FileManager.default.fileExists(atPath: res_Dir) {
        if version == main_sampleMaleContent, FileManager.default.fileExists(atPath: res_Dir) {
            //: return res_Dir
            return res_Dir
        }
        //: let path = PodspecBundle.bundle.path(forResource: PodspecName, ofType: ".zip") ?? ""
        let path = CoverPodspecBundle.bundle.path(forResource: notiWarningCleanContent, ofType: (String(app_occurData.prefix(4)))) ?? ""
        //: let zipSuc = SSZipArchive.unzipFile(atPath: path,
        let zipSuc = SSZipArchive.unzipFile(atPath: path,
                                            //: toDestination: docuPath,
                                            toDestination: docuPath,
                                            //: overwrite: true,
                                            overwrite: true,
                                            //: password: PodspecName,
                                            password: notiWarningCleanContent,
                                            //: progressHandler: nil)
                                            progressHandler: nil)
        //: if zipSuc {
        if zipSuc {
            //: Defaults.set(AppVersion, forKey: AppResourcesVersionKey)
            data_partyText.set(main_sampleMaleContent, forKey: userJumpPath)
            //: return res_Dir
            return res_Dir
        }
        //: return ""
        return ""
        //: }()
    }()

    //: private lazy var imageResPath: String = {
    private lazy var imageResPath: String = //: return (AppResPath as NSString).appendingPathComponent("pic")
        (AppResPath as NSString).appendingPathComponent((notiRenderGiftMsg.replacingOccurrences(of: "marketing", with: "p")))
    //: }()

    //: private lazy var languageImageResPath: String = {
    private lazy var languageImageResPath: String = {
        //: let language = LanguageManager.shared.currLanguage
        let language = RatingReactiveCompatible.shared.currLanguage
        //: return (imageResPath as NSString).appendingPathComponent(language)
        return (imageResPath as NSString).appendingPathComponent(language)
        //: }()
    }()

    //: private lazy var norImageResPath: String = {
    private lazy var norImageResPath: String = {
        //: let language = LanguageManager.shared.currLanguage
        let language = RatingReactiveCompatible.shared.currLanguage
        //: return (imageResPath as NSString).appendingPathComponent("nor")
        return (imageResPath as NSString).appendingPathComponent((app_natureMsg.replacingOccurrences(of: "disable", with: "n")))
        //: }()
    }()

    //: private lazy var svgaResPath: String = {
    private lazy var svgaResPath: String = //: return (AppResPath as NSString).appendingPathComponent("svga")
        (AppResPath as NSString).appendingPathComponent((main_finiteThereValue.replacingOccurrences(of: "reserve", with: "v")))
    //: }()

    //: private lazy var mp3ResPath: String = {
    private lazy var mp3ResPath: String = //: return (AppResPath as NSString).appendingPathComponent("mp3")
        (AppResPath as NSString).appendingPathComponent((user_minimumCustomData.replacingOccurrences(of: "beyond", with: "p3")))
    //: }()

    //: public lazy var modelResPath: String = {
    public lazy var modelResPath: String = //: return (AppResPath as NSString).appendingPathComponent("model")
        (AppResPath as NSString).appendingPathComponent((notiTheoryAttachMessage.replacingOccurrences(of: "attractive", with: "d")))
    //: }()

    //: public lazy var languagePath: String = {
    public lazy var languagePath: String = //: return (AppResPath as NSString).appendingPathComponent("language")
        (AppResPath as NSString).appendingPathComponent((noti_movementValue.replacingOccurrences(of: "writing", with: "g")))
    //: }()

    //: public lazy var videoPath: String = {
    public lazy var videoPath: String = //: return (AppResPath as NSString).appendingPathComponent("video")
        (AppResPath as NSString).appendingPathComponent((String(appTrackStr)))
    //: }()
}

//: extension SVGAEffectTool {
extension BlackEffectTool {
    /// 直接获取图片
    //: func getImage(name: String) -> UIImage? {
    func thatTitle(name: String) -> UIImage? {
        //: let languagePath = (languageImageResPath as NSString).appendingPathComponent(name).appending("@2x.png")
        let languagePath = (languageImageResPath as NSString).appendingPathComponent(name).appending((String(main_assistantMessage.suffix(7))))
        //: if FileManager.default.fileExists(atPath: languagePath) {
        if FileManager.default.fileExists(atPath: languagePath) {
            //: return UIImage(contentsOfFile: languagePath)
            return UIImage(contentsOfFile: languagePath)
        }
        //: let path = (norImageResPath as NSString).appendingPathComponent(name).appending("@2x.png")
        let path = (norImageResPath as NSString).appendingPathComponent(name).appending((String(main_assistantMessage.suffix(7))))
        //: return UIImage(contentsOfFile: path)
        return UIImage(contentsOfFile: path)
    }

    /// 获取svga资源url
    //: func getZipEffectPath(type: SVGAType) -> URL {
    func recordingRevenue(type: TapTextSumerpolation) -> URL {
        //: var path = (svgaResPath as NSString).appendingPathComponent(type.rawValue)
        var path = (svgaResPath as NSString).appendingPathComponent(type.rawValue)
        //: path = (path as NSString).appendingPathExtension("svga")!
        path = (path as NSString).appendingPathExtension((main_finiteThereValue.replacingOccurrences(of: "reserve", with: "v")))!
        //: let url = URL(fileURLWithPath: path)
        let url = URL(fileURLWithPath: path)

        //: return url
        return url
    }

    /// 获取国家icon资源url
    //: func getZipAreaIconPath(iconName: String) -> URL {
    func shadeTing(iconName: String) -> URL {
        //: var path = (norImageResPath as NSString).appendingPathComponent(iconName)
        var path = (norImageResPath as NSString).appendingPathComponent(iconName)
        //: path = (path as NSString).appendingPathExtension("png")!
        path = (path as NSString).appendingPathExtension((String(mainHugeAccompanyName)))!
        //: let url = URL(fileURLWithPath: path)
        let url = URL(fileURLWithPath: path)
        //: return url
        return url
    }

    /// 获取Mp3资源url
    //: func getMp3Path(name: String, type: String = "mp3") -> String {
    func undersized(name: String, type: String = (user_minimumCustomData.replacingOccurrences(of: "beyond", with: "p3"))) -> String {
        //: var path = (mp3ResPath as NSString).appendingPathComponent(name)
        var path = (mp3ResPath as NSString).appendingPathComponent(name)
        //: path = (path as NSString).appendingPathExtension(type)!
        path = (path as NSString).appendingPathExtension(type)!
        //: return path
        return path
    }

    /// 获取视频资源url
    //: func getVideoPath(name: String, type: String = "mp4") -> String {
    func weightConvert(name: String, type: String = (userTagStepData.replacingOccurrences(of: "aid", with: "4"))) -> String {
        //: var path = (videoPath as NSString).appendingPathComponent(name)
        var path = (videoPath as NSString).appendingPathComponent(name)
        //: path = (path as NSString).appendingPathExtension(type)!
        path = (path as NSString).appendingPathExtension(type)!
        //: return path
        return path
    }
}
