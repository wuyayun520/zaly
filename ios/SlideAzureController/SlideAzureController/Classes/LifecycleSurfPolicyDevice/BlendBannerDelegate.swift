
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_proId:[UInt8] = [0xcf,0xc8,0xcf,0xd2,0x8e,0xc5,0xc9,0xc2,0xc3,0xd4,0x9c,0x8f,0x86,0xce,0xc7,0xd5,0x86,0xc8,0xc9,0xd2,0x86,0xc4,0xc3,0xc3,0xc8,0x86,0xcf,0xcb,0xd6,0xca,0xc3,0xcb,0xc3,0xc8,0xd2,0xc3,0xc2]

private func assignDit(secret num: UInt8) -> UInt8 {
    return num ^ 166
}

/*: "icon_chats_subtract" :*/
fileprivate let main_licenseFormat:[Character] = ["i","c","o","n","_","c","h","a","t","s","_","s","u","b","t"]
fileprivate let data_reachUrl:String = "racdot"

/*: "JXBannerCellID" :*/
fileprivate let dataMouthFormat:String = "JXBannangle why sea item"
fileprivate let notiIsolateScaleFormat:[Character] = ["D"]

/*: "/dist/loungePlus/index.html" :*/
fileprivate let constThatDelayData:String = "/disme tick repeat soul modify"
fileprivate let const_naturalLineMsg:String = "ngePldistinctive refer"
fileprivate let userLoseName:String = "robotml"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlendBannerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/3/15.
//

//: import JXBanner
import JXBanner
//: import JXPageControl
import JXPageControl
//: import UIKit
import UIKit

//: class TalkingAdvertisingView: TalkingAdvertisingBaseView {
class BlendBannerDelegate: WeddingThen {
    //: private var adBannderListData = [SocialAdBannerModel]()
    private var adBannderListData = [PrimaryRedModelType]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setsubViews()
        block()
        //: setFreamViews()
        thatFor()
        //: addTapAndPanGestures()
        storageGestures()
        //: adBannderListData = DismissReactiveCompatible.share.appUserConfigMode.tabPageBanner
        adBannderListData = DismissReactiveCompatible.share.appUserConfigMode.tabPageBanner
        //: bannerView.reloadView()
        bannerView.reloadView()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(closeBtnClick),
                                               selector: #selector(handMeDownHost),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kOnValue,
                                               //: object: nil)
                                               object: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_proId.map{assignDit(secret: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_chats_subtract"), for: .normal)
        btn.setImage(UIImage.locationName(name: (String(main_licenseFormat) + data_reachUrl.replacingOccurrences(of: "dot", with: "t"))), for: .normal)
        //: btn.setImage(UIImage.BundleImageNamed(name: "icon_chats_subtract"), for: .selected)
        btn.setImage(UIImage.locationName(name: (String(main_licenseFormat) + data_reachUrl.replacingOccurrences(of: "dot", with: "t"))), for: .selected)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(handMeDownHost), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var bannerView: JXBanner = {
    private lazy var bannerView: JXBanner = {
        //: let banner = JXBanner()
        let banner = JXBanner()
        //: banner.backgroundColor = .white
        banner.backgroundColor = .white
        //: banner.placeholderImgView.image = UIImage.placeImgBanner()
        banner.placeholderImgView.image = UIImage.elect()
        //: banner.layer.cornerRadius = 6
        banner.layer.cornerRadius = 6
        //: banner.layer.masksToBounds = true
        banner.layer.masksToBounds = true
        //: banner.delegate = self
        banner.delegate = self
        //: banner.dataSource = self
        banner.dataSource = self
        //: return banner
        return banner
        //: }()
    }()
}

// MARK: - JXBannerDataSource, JXBannerDelegate

//: extension TalkingAdvertisingView: JXBannerDataSource, JXBannerDelegate {
extension BlendBannerDelegate: JXBannerDataSource, JXBannerDelegate {
    //: func jxBanner(_ banner: JXBannerType) -> (JXBannerCellRegister) {
    func jxBanner(_: JXBannerType) -> (JXBannerCellRegister) {
        //: return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: "JXBannerCellID")
        return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: (String(dataMouthFormat.prefix(6)) + "erCellI" + String(notiIsolateScaleFormat)))
    }

    //: func jxBanner(numberOfItems banner: JXBannerType) -> Int {
    func jxBanner(numberOfItems _: JXBannerType) -> Int {
        //: return self.adBannderListData.count
        return self.adBannderListData.count
    }

    //: func jxBanner(_ banner: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
    func jxBanner(_: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
        //: let tempCell: JXBannerCell = cell as! JXBannerCell
        let tempCell: JXBannerCell = cell as! JXBannerCell
        //: if index < self.adBannderListData.count {
        if index < self.adBannderListData.count {
            //: let model = self.adBannderListData[index]
            let model = self.adBannderListData[index]
            //: tempCell.msgBgView.backgroundColor = .clear
            tempCell.msgBgView.backgroundColor = .clear
            //: tempCell.imageView.setUrlImage(urlStr: model.pic, placeImg: UIImage.placeImgBanner())
            tempCell.imageView.loadPoiseFinishParkImageEye(urlStr: model.pic, placeImg: UIImage.elect())
            //: tempCell.imageView.contentMode = .scaleAspectFill
            tempCell.imageView.contentMode = .scaleAspectFill
        }
        //: return cell
        return cell
    }

    //: func jxBanner(pageControl banner: JXBannerType,
    func jxBanner(pageControl _: JXBannerType,
                  //: numberOfPages: Int,
                  numberOfPages _: Int,
                  //: coverView: UIView,
                  coverView _: UIView,
                  //: builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder {
                  builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder
    {
        //: return builder
        return builder
    }

    //: public func jxBanner(_ banner: JXBannerType, didSelectItemAt index: Int) {
    public func jxBanner(_: JXBannerType, didSelectItemAt index: Int) {
        //: if index < self.adBannderListData.count {
        if index < self.adBannderListData.count {
            //: let model = self.adBannderListData[index]
            let model = self.adBannderListData[index]
            //: if model.type == 1 {
            if model.type == 1 { // 网页跳转
                //: let newUrl: String = model.url
                let newUrl: String = model.url
                //: if newUrl.contains("/dist/loungePlus/index.html") {
                if newUrl.contains((String(constThatDelayData.prefix(4)) + "t/lou" + String(const_naturalLineMsg.prefix(5)) + "us/index." + userLoseName.replacingOccurrences(of: "robot", with: "ht"))) {
                    //: PushThen.share.func__pushToSubscribePageWebVC()
                    PushThen.share.forceBack()
                    //: return
                    return
                }
                //: PushThen.share.func__pushToWebVC(urlStr: model.url)
                PushThen.share.plumeBright(urlStr: model.url)
                //: } else if model.type == 3 {
            } else if model.type == 3 { // 游戏跳转
                //: var config = TalkingWebConfig()
                var config = EndConfig()
                //: config.widthHeight = model.widthHeight
                config.widthHeight = model.widthHeight
                //: config.clearBgColor = true
                config.clearBgColor = true
                //: PushThen.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
                PushThen.share.plumeBright(urlStr: model.url, webConfig: config)
            }
        }
    }
}

// MARK: - Public Event

//: extension TalkingAdvertisingView {
extension BlendBannerDelegate {
    /// 构建窗口
    //: static func buildAdvertisingView() -> TalkingAdvertisingView {
    static func advertisingMatch() -> BlendBannerDelegate {
        //: TalkingAdvertisingManager.shared.createContainerView()
        ProcessingReactiveCompatible.shared.produceRemind()
        //: let position = TalkingAdvertisingManager.shared.windownsPostion
        let position = ProcessingReactiveCompatible.shared.windownsPostion
        //: let x = (position.x == 0) ? position.x:position.x-66
        let x = (position.x == 0) ? position.x : position.x - 66
        //: var y = position.y
        var y = position.y
        //: y = max(0, y)
        y = max(0, y)
        //: y = min(ScreenHeight-66, y)
        y = min(main_nameData - 66, y)
        //: let view = TalkingAdvertisingView(frame: CGRect(x: x, y: y, width: 66, height: 66))
        let view = BlendBannerDelegate(frame: CGRect(x: x, y: y, width: 66, height: 66))
        //: TalkingAdvertisingManager.shared.advSuperView?.addSubview(view)
        ProcessingReactiveCompatible.shared.advSuperView?.addSubview(view)
        //: return view
        return view
    }

    //: @objc func closeBtnClick() {
    @objc func handMeDownHost() {
        //: dismissWhenCallEnd()
        scopeEnd()
        //: TalkingAdvertisingManager.shared.removeContainerView()
        ProcessingReactiveCompatible.shared.readingTo()
    }
}

//: extension TalkingAdvertisingView {
extension BlendBannerDelegate {
    //: private func setsubViews() {
    private func block() {
        //: self.addSubview(bgView)
        self.addSubview(bgView)
        //: bgView.addSubview(closeBtn)
        bgView.addSubview(closeBtn)
        //: bgView.addSubview(bannerView)
        bgView.addSubview(bannerView)
        //: self.insertSubview(closeBtn, belowSubview: bannerView)
        self.insertSubview(closeBtn, belowSubview: bannerView)
    }

    //: private func setFreamViews() {
    private func thatFor() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.right.equalToSuperview()
            make.top.right.equalToSuperview()
            //: make.size.equalTo(16)
            make.size.equalTo(16)
        }
        //: bannerView.snp.makeConstraints { make in
        bannerView.snp.makeConstraints { make in
            //: make.top.equalTo(closeBtn.snp.top).offset(6)
            make.top.equalTo(closeBtn.snp.top).offset(6)
            //: make.right.equalTo(closeBtn.snp.right).offset(-6)
            make.right.equalTo(closeBtn.snp.right).offset(-6)
            //: make.size.equalTo(60)
            make.size.equalTo(60)
        }
    }
}
