
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let constToleranceName:[UInt8] = [0xf5,0xfa,0xf5,0x0,0xb4,0xef,0xfb,0xf0,0xf1,0xfe,0xc6,0xb5,0xac,0xf4,0xed,0xff,0xac,0xfa,0xfb,0x0,0xac,0xee,0xf1,0xf1,0xfa,0xac,0xf5,0xf9,0xfc,0xf8,0xf1,0xf9,0xf1,0xfa,0x0,0xf1,0xf0]

fileprivate func opProvide(hello num: UInt8) -> UInt8 {
    let value = Int(num) + 116
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_dynamic_stop_nor" :*/
fileprivate let data_arrangementValue:[Character] = ["b","t"]
fileprivate let app_pageText:String = "n_dynaadvanced already sample disabled"
fileprivate let showSwitchicialId:String = "stquantity"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContainerItemCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TUserDetailHeaderItemCell: UICollectionViewCell {
class ContainerItemCell: UICollectionViewCell {
    //: var playFinishBlock: (() -> Void)?
    var playFinishBlock: (() -> Void)? // 视频是否播放完毕
    //: private var videoUrl = ""            // 视频地址
    private var videoUrl = "" // 视频地址

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: constToleranceName.map{opProvide(hello: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var bgImgView: UIImageView = {
    lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.placeSquareBigImgBanner()
        imgV.image = UIImage.bench()
        //: imgV.layer.masksToBounds = true
        imgV.layer.masksToBounds = true
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var player: TalkingVideoPlayerManager = {
    private lazy var player: PackagingPlayListener = {
        //: var player = TalkingVideoPlayerManager()
        var player = PackagingPlayListener()
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.scheduleColumn(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var coverView: UIImageView = {
    private lazy var coverView: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.backgroundColor = .black
        imag.backgroundColor = .black
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var playimageView: UIImageView = {
    private lazy var playimageView: UIImageView = {
        //: let imag = UIImageView(image: UIImage.BundleImageNamed(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.locationName(name: (String(data_arrangementValue) + String(app_pageText.prefix(6)) + "mic_" + showSwitchicialId.replacingOccurrences(of: "quantity", with: "op") + "_nor")))
        //: return imag
        return imag
        //: }()
    }()
}

// MARK: - Event

//: extension TUserDetailHeaderItemCell {
extension ContainerItemCell {
    //: func configModel(videoUrl: String, imgUrl: String ) {
    func package(videoUrl: String, imgUrl: String) {
        //: self.videoUrl = videoUrl
        self.videoUrl = videoUrl
        //: self.coverView.setUrlImage(urlStr: imgUrl)
        self.coverView.bolt(urlStr: imgUrl)
    }

    /// 开始播放视频
    //: func setupPlayer() {
    func destroy() {
        //: self.playimageView.isHidden = true
        self.playimageView.isHidden = true
        //: self.player.playerWithUrlAndVideoView(url: videoUrl, view: self.coverView)
        self.player.loseTrack(url: videoUrl, view: self.coverView)
        //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
        self.player.succeed(renderMode: .FILL_SCREEN)
    }
}

// MARK: - BilliardPlayerThen

//: extension TUserDetailHeaderItemCell: TalkingVideoPlayerDelegate {
extension ContainerItemCell: BilliardPlayerThen {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func yesterday(player _: PackagingPlayListener, status: RatingPlayerStatus) {
        //: if (status == .Pausing) {
        if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
            //: } else if (status == .Finished) {
        } else if status == .Finished {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
            //: self.player.stopPlay()
            self.player.storageReward()
            // 视频播放完毕回调block
            //: if playFinishBlock != nil {
            if playFinishBlock != nil {
                //: playFinishBlock!()
                playFinishBlock!()
            }
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {}
    func tillChannelTime(player _: PackagingPlayListener, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {}
    func funcCompareProgress(player _: PackagingPlayListener, progress _: CGFloat) {}
}

// MARK: - Layout

//: extension TUserDetailHeaderItemCell {
extension ContainerItemCell {
    /// 图片
    //: func setImageView() {
    func mic() {
        //: contentView.addSubview(bgImgView)
        contentView.addSubview(bgImgView)
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 视频
    //: func setVideoView() {
    func failureView() {
        //: contentView.addSubview(coverView)
        contentView.addSubview(coverView)
        //: coverView.snp.remakeConstraints { make in
        coverView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: coverView.addSubview(playimageView)
        coverView.addSubview(playimageView)
        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 63, height: 63))
            make.size.equalTo(CGSize(width: 63, height: 63))
        }
    }
}
