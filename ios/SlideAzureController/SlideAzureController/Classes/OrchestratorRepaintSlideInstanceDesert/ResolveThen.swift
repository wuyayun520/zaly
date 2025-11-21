
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let showTrunkData:[UInt8] = [0x72,0x75,0x72,0x6f,0x33,0x78,0x74,0x7f,0x7e,0x69,0x21,0x32,0x3b,0x73,0x7a,0x68,0x3b,0x75,0x74,0x6f,0x3b,0x79,0x7e,0x7e,0x75,0x3b,0x72,0x76,0x6b,0x77,0x7e,0x76,0x7e,0x75,0x6f,0x7e,0x7f]

/*: "icon_ziliao_nandi_default" :*/
fileprivate let const_themContent:String = "icon_zway assert bullet reading"
fileprivate let showTradeKey:String = "scope soon submit picko_nand"
fileprivate let const_changeActionMsg:[Character] = ["i","_","d","e"]
fileprivate let constPlusName:String = "FAULT"

/*: "iv_crush" :*/
fileprivate let constMasterProduceMessage:String = "cloud pic rating spaceiv_crush"

/*: "Crush" :*/
fileprivate let constDeleteContentMsg:String = "extra door spaceCrush"

/*: "get json error" :*/
fileprivate let dataMonthMsg:String = "club snake letterget js"
fileprivate let user_shotId:String = "eastern asset automaticallyon e"

/*: "targetUid" :*/
fileprivate let app_secondKey:String = "spread turntargetUi"
fileprivate let appMarginName:String = "D"

/*: "The other party has received your crush" :*/
fileprivate let noti_busyName:[UInt8] = [0x27,0x3b,0x38,0xf3,0x42,0x47,0x3b,0x38,0x45,0xf3,0x43,0x34,0x45,0x47,0x4c,0xf3,0x3b,0x34,0x46,0xf3,0x45,0x38,0x36,0x38,0x3c,0x49,0x38,0x37,0xf3,0x4c,0x42,0x48,0x45,0xf3,0x36,0x45,0x48,0x46,0x3b]

fileprivate func nobodySlip(properly num: UInt8) -> UInt8 {
    let value = Int(num) - 211
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ResolveThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosBottomView: UIView {
class ResolveThen: UIView {
    //: var modelUid = ""
    var modelUid = ""
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: customUI()
        gapUi()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: showTrunkData.map{$0^27}, encoding: .utf8)!)
    }

    //: func customUI() {
    func gapUi() {
        //: self.backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        self.backgroundColor = UIColor.searched(51, 51, 51, 0.8)

        //: guard DismissReactiveCompatible.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard DismissReactiveCompatible.share.appStatus == AfterArtSumLiteral.normal.rawValue else {
            // 审核模式隐藏
            //: self.crushBtn.isHidden = true
            self.crushBtn.isHidden = true
            //: return
            return
        }

        //: crushBtn.snp.makeConstraints { make in
        crushBtn.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.size.equalTo(CGSize.init(width: 164, height: 40))
            make.size.equalTo(CGSize(width: 164, height: 40))
        }

        //: self.addSubview(crushPlayer)
        self.addSubview(crushPlayer)
        //: crushPlayer.snp.makeConstraints { make in
        crushPlayer.snp.makeConstraints { make in
            //: make.centerX.equalTo(crushBtn)
            make.centerX.equalTo(crushBtn)
            //: make.bottom.equalTo(crushBtn.snp.bottom)
            make.bottom.equalTo(crushBtn.snp.bottom)
            //: make.size.equalTo(CGSize(width: 70, height: 100))
            make.size.equalTo(CGSize(width: 70, height: 100))
        }
    }

    //: lazy var crushBtn: TalkingButton = {
    lazy var crushBtn: RangeReactiveCompatible = {
        //: let btn = TalkingButton.init()
        let btn = RangeReactiveCompatible()
        //: btn.setBackgroundImage(UIImage.BundleImageNamed(name: "icon_ziliao_nandi_default"), for: .normal)
        btn.setBackgroundImage(UIImage.locationName(name: (String(const_themContent.prefix(6)) + "ilia" + String(showTradeKey.suffix(6)) + String(const_changeActionMsg) + constPlusName.lowercased())), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "iv_crush"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(constMasterProduceMessage.suffix(8)))), for: .normal)
        //: btn.setTitle("Crush".localized, for: .normal)
        btn.setTitle((String(constDeleteContentMsg.suffix(5))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.pingfang(fontSize: 18)
        //: btn.addTarget(self, action: #selector(crushBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(shareClick), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var crushPlayer: SVGAPlayer = {
    lazy var crushPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingMomentPhotosBottomView: SVGAPlayerDelegate {
extension ResolveThen: SVGAPlayerDelegate {
    //: @objc func crushBtnClick () {
    @objc func shareClick() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Crush)
        let url = BlackEffectTool.default.recordingRevenue(type: .Crush)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.crushPlayer.videoItem = videoItem
                self.crushPlayer.videoItem = videoItem
                //: self.crushPlayer.startAnimation()
                self.crushPlayer.startAnimation()
                //: self.crushBtn.isHidden = true
                self.crushBtn.isHidden = true
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(dataMonthMsg.suffix(6)) + String(user_shotId.suffix(4)) + "rror"))
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = modelUid
        dict[(String(app_secondKey.suffix(8)) + appMarginName.lowercased())] = modelUid

        //: TalkingMomentRequestTool.req_CrushSend(params: dict) { succeed, result, errorModel in
        BlendThen.listing(params: dict) { succeed, _, errorModel in
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarNormrlMsg(showMsg: "The other party has received your crush".localized)
                self.noCap(showMsg: String(bytes: noti_busyName.map{nobodySlip(properly: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.enablece(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: self.crushPlayer.isHidden = true
        self.crushPlayer.isHidden = true
    }
}
