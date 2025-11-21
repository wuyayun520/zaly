
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let user_adminMissingConnectionMsg:[UInt8] = [0xd,0x12,0xd,0x18,0xcc,0x7,0x13,0x8,0x9,0x16,0xde,0xcd,0xc4,0xc,0x5,0x17,0xc4,0x12,0x13,0x18,0xc4,0x6,0x9,0x9,0x12,0xc4,0xd,0x11,0x14,0x10,0x9,0x11,0x9,0x12,0x18,0x9,0x8]

fileprivate func systemValue(sub num: UInt8) -> UInt8 {
    let value = Int(num) - 164
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_dynamic_stop_nor" :*/
fileprivate let showReserveStr:String = "btn_like rich produce"
fileprivate let constPastUrl:String = "more city gesture suit trackic_sto"

/*: "icon_Topping_bg" :*/
fileprivate let appSpeedStr:[Character] = ["i","c","o","n","_","T","o","p","p","i"]
fileprivate let constProximateText:String = "ng_bgmay orientation"

/*: "#F5F5F5" :*/
fileprivate let data_liteSwitchceFormat:String = "#F5F5F5license show terms"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TransferVideoCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/4.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

//: class TalkingMomentVideoCell: UIView {
class TransferVideoCell: UIView {
    //: var isPlaying = false
    var isPlaying = false
    //: var videoUrl = ""
    var videoUrl = ""
    //: var isListTableCell = true
    var isListTableCell = true
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.holder()
        //: self.setupSubViewsConstraint()
        self.showtime()
        //: self.bindInteraction()
        self.anGuide()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: user_adminMissingConnectionMsg.map{systemValue(sub: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: lazy var player: TalkingVideoPlayerManager = {
    lazy var player: PackagingPlayListener = {
        //: var  player: TalkingVideoPlayerManager
        var player: PackagingPlayListener
        //: if isListTableCell {
        if isListTableCell {
            //: player = TalkingVideoPlayerManager.shared
            player = PackagingPlayListener.shared
            //: }else {
        } else {
            //: player = TalkingVideoPlayerManager.init()
            player = PackagingPlayListener()
        }
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.scheduleColumn(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: lazy var coverView: UIImageView = {
    lazy var coverView: UIImageView = {
        //: let  imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = .black
        imag.backgroundColor = .black
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: self.addSubview(imag)
        self.addSubview(imag)
        //: imag.snp.remakeConstraints { make in
        imag.snp.remakeConstraints { make in
            //: make.edges.equalTo(0)
            make.edges.equalTo(0)
        }
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var playimageView: UIImageView = {
    lazy var playimageView: UIImageView = {
        //: let  imag = UIImageView.init(image: UIImage.BundleImageNamed(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.locationName(name: (String(showReserveStr.prefix(4)) + "dynam" + String(constPastUrl.suffix(6)) + "p_nor")))
        //: coverView.addSubview(imag)
        coverView.addSubview(imag)
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var topImage: UIImageView = {
    lazy var topImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.BundleImageNamed(name: "icon_Topping_bg")
        img.image = UIImage.locationName(name: (String(appSpeedStr) + String(constProximateText.prefix(5))))
        //: coverView.addSubview(img)
        coverView.addSubview(img)
        //: return img
        return img
        //: }()
    }()
}

//: extension TalkingMomentVideoCell {
extension TransferVideoCell {
    //: @objc func enterBackgroundNotification() {
    @objc func one() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.isWait()
        }
    }

    //: @objc func enterForegroundNotification() {
    @objc func enablelyBroad() {
        //: if self.currentViewController()!.isKind(of: TalkingMomentViewController.self) {
        if self.exitSchedule()!.isKind(of: RegularityViewController.self) {
            //: self.player.resume()
            self.player.tillWarning()
        }
    }

    //: func configModel(model: TalkingMomentVideoModel, isTop: Bool = false) {
    func errorNextTop(model: ResolveHandyJSON, isTop: Bool = false) {
        //: videoUrl = model.videoUrl
        videoUrl = model.videoUrl
        //: self.coverView.backgroundColor = .white
        self.coverView.backgroundColor = .white
        //: self.coverView.setUrlImage(urlStr: model.imgUrl, placeImg: nil)
        self.coverView.bolt(urlStr: model.imgUrl, placeImg: nil)
        //: topImage.isHidden = !isTop
        topImage.isHidden = !isTop
    }

    //: func setupPlayer() {
    func taWho() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        //: self.player.playerWithUrlAndVideoView(url: videoUrl, view: self)
        self.player.loseTrack(url: videoUrl, view: self)
        //: self.player.setMute(bEnable: true)
        self.player.scheduleColumn(bEnable: true)
        //: self.isPlaying = true
        self.isPlaying = true
        //: self.player.delegate = self
        self.player.delegate = self
        //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
        self.player.succeed(renderMode: .FILL_SCREEN)
    }

    //: func stopPlay() {
    func stallAnima() {
        //: self.coverView.isHidden = false
        self.coverView.isHidden = false
        //: self.player.stopPlay()
        self.player.storageReward()
        //: self.isPlaying = false
        self.isPlaying = false
        //: self.playimageView.isHidden = false
        self.playimageView.isHidden = false
        //: self.player.setMute(bEnable: true)
        self.player.scheduleColumn(bEnable: true)
    }

    //: func pausePlay() {
    func push() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.isWait()
        }
    }

    //: func resume() {
    func stack() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        // 进入详情会改变播放模式会有声音
        //: self.player.setMute(bEnable: true)
        self.player.scheduleColumn(bEnable: true)
        //: self.player.resume()
        self.player.tillWarning()
    }
}

//: extension TalkingMomentVideoCell: TalkingVideoPlayerDelegate {
extension TransferVideoCell: BilliardPlayerThen {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func yesterday(player _: PackagingPlayListener, status: RatingPlayerStatus) {
        //: if (status == .Playing) {
        if status == .Playing {
            //: if self.player.isMute == false {
            if self.player.isMute == false {
                //: self.player.setMute(bEnable: true)
                self.player.scheduleColumn(bEnable: true)
            }
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
            self.player.succeed(renderMode: .FILL_SCREEN)
            //: }else if (status == .Pausing) {
        } else if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func tillChannelTime(player _: PackagingPlayListener, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func funcCompareProgress(player _: PackagingPlayListener, progress _: CGFloat) {}
}

//: extension TalkingMomentVideoCell {
extension TransferVideoCell {
    // 添加视图
    //: private func setupSubviews() {
    private func holder() {
        //: self.backgroundColor = UIColor.init(hex: "#F5F5F5" )
        self.backgroundColor = UIColor(hex: (String(data_liteSwitchceFormat.prefix(7))))
        //: self.layer.cornerRadius = 4
        self.layer.cornerRadius = 4
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func showtime() {
        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: topImage.snp.remakeConstraints { make in
        topImage.snp.remakeConstraints { make in
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.size.equalTo(CGSize.init(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func anGuide() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(enterBackgroundNotification), name: UIApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(one), name: UIApplication.willResignActiveNotification, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterForegroundNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(enablelyBroad), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
}
