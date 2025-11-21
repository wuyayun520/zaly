
//: Declare String Begin

/*: "icon_randow_user_bg" :*/
fileprivate let data_currentPauseUrl:[Character] = ["i","c","o","n","_","r","a","n","d","o","w"]
fileprivate let appClothesPremiumFormat:String = "reach response_user_bg"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpecialReactiveCompatible.swift
//  Pods
//
//  Created by Charlotte on 2025/9/11.
//

//: import UIKit
import UIKit

// MARK: - 头像队列展示视图

//: class RandomMatchUserView: UIView {
class SpecialReactiveCompatible: UIView {
    // MARK: - UI Components

    //: private let leftAvatarView = AvatarView()
    private let leftAvatarView = InmateResolveView()
    //: private let centerAvatarView = AvatarView()
    private let centerAvatarView = InmateResolveView()
    //: private let rightAvatarView = AvatarView()
    private let rightAvatarView = InmateResolveView()

    //: private let centerBgView = UIImageView()
    private let centerBgView = UIImageView()

    // MARK: - Properties

    //: private var avatars: [String] = []
    private var avatars: [String] = []
    //: private var currentIndex: Int = 0
    private var currentIndex: Int = 0
    //: private var autoScrollTimer: Timer?
    private var autoScrollTimer: Timer?
    //: private var hasScrolled: Bool = false
    private var hasScrolled: Bool = false // 跟踪是否已经滚动过

    // MARK: - Initialization

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupUI()
        recentAcross()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder: NSCoder) {
        //: super.init(coder: coder)
        super.init(coder: coder)
        //: setupUI()
        recentAcross()
    }

    //: deinit {
    deinit {
        //: stopAutoScroll()
        birthAuto()
    }

    // MARK: - Private Methods

    //: private func setupUI() {
    private func recentAcross() {
        //: backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear

        // 添加子视图
        //: addSubview(centerBgView)
        addSubview(centerBgView)
        //: addSubview(leftAvatarView)
        addSubview(leftAvatarView)
        //: addSubview(centerAvatarView)
        addSubview(centerAvatarView)
        //: addSubview(rightAvatarView)
        addSubview(rightAvatarView)

        // 设置约束
        //: setupConstraints()
        aWhite()

        // 设置头像视图样式
        //: setupAvatarViews()
        catchViews()
    }

    //: private func setupConstraints() {
    private func aWhite() {
        //: centerBgView.snp.makeConstraints { make in
        centerBgView.snp.makeConstraints { make in
            //: make.top.bottom.equalToSuperview()
            make.top.bottom.equalToSuperview()
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(265)
            make.width.equalTo(265)
        }

        //: centerAvatarView.snp.makeConstraints { make in
        centerAvatarView.snp.makeConstraints { make in
            //: make.top.equalTo(centerBgView).offset(8)
            make.top.equalTo(centerBgView).offset(8)
            //: make.bottom.equalTo(centerBgView.snp.bottom).offset(-8)
            make.bottom.equalTo(centerBgView.snp.bottom).offset(-8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(253)
            make.width.equalTo(253)
        }
        //: leftAvatarView.snp.makeConstraints { make in
        leftAvatarView.snp.makeConstraints { make in
            //: make.trailing.equalTo(centerAvatarView.snp.leading).offset(-12)
            make.trailing.equalTo(centerAvatarView.snp.leading).offset(-12)
            //: make.centerY.equalTo(centerAvatarView)
            make.centerY.equalTo(centerAvatarView)
            //: make.size.equalTo(CGSize(width: 212, height: 283))
            make.size.equalTo(CGSize(width: 212, height: 283))
        }
        //: rightAvatarView.snp.makeConstraints { make in
        rightAvatarView.snp.makeConstraints { make in
            //: make.leading.equalTo(centerAvatarView.snp.trailing).offset(12)
            make.leading.equalTo(centerAvatarView.snp.trailing).offset(12)
            //: make.centerY.equalTo(centerAvatarView)
            make.centerY.equalTo(centerAvatarView)
            //: make.size.equalTo(CGSize(width: 212, height: 283))
            make.size.equalTo(CGSize(width: 212, height: 283))
        }
    }

    //: private func setupAvatarViews() {
    private func catchViews() {
        // 设置头像视图的圆角和阴影
        //: [leftAvatarView, centerAvatarView, rightAvatarView].forEach { avatarView in
        [leftAvatarView, centerAvatarView, rightAvatarView].forEach { avatarView in
            // 性能优化：启用硬件加速
            //: avatarView.layer.shouldRasterize = true
            avatarView.layer.shouldRasterize = true
            //: avatarView.layer.rasterizationScale = UIScreen.main.scale
            avatarView.layer.rasterizationScale = UIScreen.main.scale
        }
        //: centerBgView.contentMode = .scaleAspectFill
        centerBgView.contentMode = .scaleAspectFill
        //: centerBgView.image = UIImage.BundleImageNamed(name: "icon_randow_user_bg")
        centerBgView.image = UIImage.locationName(name: (String(data_currentPauseUrl) + String(appClothesPremiumFormat.suffix(8))))
    }

    //: private func updateAvatarDisplay() {
    private func versionDisplay() {
        //: guard !avatars.isEmpty else { return }
        guard !avatars.isEmpty else { return }

        //: let count = avatars.count
        let count = avatars.count

        // 中心头像 - 当前索引
        //: centerAvatarView.imageurl = avatars[currentIndex]
        centerAvatarView.imageurl = avatars[currentIndex]

        //: if hasScrolled {
        if hasScrolled {
            // 已经滚动过，显示完整的左中右布局
            // 左侧头像 - 前一个索引
            //: let leftIndex = (currentIndex - 1 + count) % count
            let leftIndex = (currentIndex - 1 + count) % count
            //: leftAvatarView.imageurl = avatars[leftIndex]
            leftAvatarView.imageurl = avatars[leftIndex]
            //: leftAvatarView.isHidden = false
            leftAvatarView.isHidden = false

            // 右侧头像 - 后一个索引
            //: let rightIndex = (currentIndex + 1) % count
            let rightIndex = (currentIndex + 1) % count
            //: rightAvatarView.imageurl = avatars[rightIndex]
            rightAvatarView.imageurl = avatars[rightIndex]
            //: } else {
        } else {
            // 初始状态，只显示中心和右侧头像
            //: leftAvatarView.isHidden = true
            leftAvatarView.isHidden = true

            // 右侧头像 - 后一个索引（如果存在）
            //: if count > 1 {
            if count > 1 {
                //: let rightIndex = (currentIndex + 1) % count
                let rightIndex = (currentIndex + 1) % count
                //: rightAvatarView.imageurl = avatars[rightIndex]
                rightAvatarView.imageurl = avatars[rightIndex]
                //: } else {
            } else {
                //: rightAvatarView.imageurl = nil
                rightAvatarView.imageurl = nil
            }
        }
    }

    //: private func scrollToNextAvatar() {
    private func dataConverter() {
        //: guard avatars.count > 1 else { return }
        guard avatars.count > 1 else { return }

        // 标记已经滚动过
        //: hasScrolled = true
        hasScrolled = true

        // 先更新索引和头像数据，让新头像立即显示
        //: currentIndex = (currentIndex + 1) % avatars.count
        currentIndex = (currentIndex + 1) % avatars.count
        //: updateAvatarDisplay()
        versionDisplay()

        // 计算缩放比例 (基于实际尺寸)
        //: let scaleX: CGFloat = 212.0 / 253.0
        let scaleX: CGFloat = 212.0 / 253.0 // 0.838 (左右头像相对中心头像的缩放)
        //: let scaleY: CGFloat = 283.0 / 338.0
        let scaleY: CGFloat = 283.0 / 338.0 // 0.837
        //: let scaleUpX: CGFloat = 253.0 / 212.0
        let scaleUpX: CGFloat = 253.0 / 212.0 // 1.193 (右侧头像放大到中心尺寸)
        //: let scaleUpY: CGFloat = 338.0 / 283.0
        let scaleUpY: CGFloat = 338.0 / 283.0 // 1.194

        // 设置初始状态：将头像移动到动画开始位置
        //: if hasScrolled {
        if hasScrolled {
            // 左侧头像在屏幕外
            //: leftAvatarView.transform = CGAffineTransform(translationX: self.bounds.width, y: 0)
            leftAvatarView.transform = CGAffineTransform(translationX: self.bounds.width, y: 0)
            //: leftAvatarView.alpha = 0
            leftAvatarView.alpha = 0
        }
        // 中心头像向左移动到左侧位置并缩放
        //: self.centerAvatarView.transform = CGAffineTransform(translationX: 245, y: 0)
        self.centerAvatarView.transform = CGAffineTransform(translationX: 245, y: 0)
            //: .scaledBy(x: scaleX, y: scaleY)
            .scaledBy(x: scaleX, y: scaleY)

        // 右侧头像向左移动到中心位置并放大
        //: self.rightAvatarView.transform = CGAffineTransform(translationX: 245, y: 0)
        self.rightAvatarView.transform = CGAffineTransform(translationX: 245, y: 0)
            //: .scaledBy(x: scaleUpX, y: scaleUpY)
            .scaledBy(x: scaleUpX, y: scaleUpY)

        // 使用更流畅的动画选项，动画到最终位置
        //: UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.3, options: [.allowUserInteraction, .beginFromCurrentState], animations: {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.3, options: [.allowUserInteraction, .beginFromCurrentState], animations: {
            // 左侧头像移入到左侧位置
            //: if self.hasScrolled {
            if self.hasScrolled {
                //: self.leftAvatarView.transform = .identity
                self.leftAvatarView.transform = .identity
                //: self.leftAvatarView.alpha = 1
                self.leftAvatarView.alpha = 1
            }

            // 中心头像移动到中心位置并恢复原始大小
            //: self.centerAvatarView.transform = .identity
            self.centerAvatarView.transform = .identity

            // 右侧头像移动到右侧位置并恢复原始大小
            //: self.rightAvatarView.transform = .identity
            self.rightAvatarView.transform = .identity

            //: }) { _ in
        }) { _ in
            // 动画完成后重置视图状态
            //: self.resetViewTransforms()
            self.bridePrice()
        }

//        // 使用更流畅的动画选项
//        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.3, options: [.allowUserInteraction, .beginFromCurrentState], animations: {
//            if self.hasScrolled {
//                // 已经滚动过，执行完整的左中右动画
//                // 左侧头像向左移出
//                self.leftAvatarView.transform = CGAffineTransform(translationX: -self.bounds.width, y: 0)
//                self.leftAvatarView.alpha = 0
//            }
//
//        }) { _ in
//            // 动画完成后更新索引和重置视图
//            self.currentIndex = (self.currentIndex + 1) % self.avatars.count
//            self.updateAvatarDisplay()
//            self.resetViewTransforms()
//        }
    }

    //: private func resetViewTransforms() {
    private func bridePrice() {
        // 重置所有视图的变换
        //: leftAvatarView.transform = .identity
        leftAvatarView.transform = .identity
        //: centerAvatarView.transform = .identity
        centerAvatarView.transform = .identity
        //: rightAvatarView.transform = .identity
        rightAvatarView.transform = .identity

        //: leftAvatarView.alpha = 1
        leftAvatarView.alpha = 1
        //: centerAvatarView.alpha = 1
        centerAvatarView.alpha = 1
        //: rightAvatarView.alpha = 1
        rightAvatarView.alpha = 1

        // 强制布局更新
        //: layoutIfNeeded()
        layoutIfNeeded()
    }
}

//: extension RandomMatchUserView {
extension SpecialReactiveCompatible {
    // MARK: - Public Methods

    //: func configure(avatars: [String]) {
    func universalAvatars(avatars: [String]) {
        //: self.avatars = avatars
        self.avatars = avatars
        //: self.currentIndex = 0
        self.currentIndex = 0
        //: self.hasScrolled = false
        self.hasScrolled = false // 重置滚动状态
        //: updateAvatarDisplay()
        versionDisplay()
        //: startAutoScroll()
        pointTo()
    }

    //: func startAutoScroll() {
    func pointTo() {
        //: stopAutoScroll()
        birthAuto()
        //: autoScrollTimer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { [weak self] _ in
        autoScrollTimer = Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { [weak self] _ in
            //: self?.scrollToNextAvatar()
            self?.dataConverter()
        }
    }

    //: func stopAutoScroll() {
    func birthAuto() {
        //: autoScrollTimer?.invalidate()
        autoScrollTimer?.invalidate()
        //: autoScrollTimer = nil
        autoScrollTimer = nil
    }
}

// MARK: - 头像视图组件

//: class AvatarView: UIView {
class InmateResolveView: UIView {
    //: var imageurl: String? {
    var imageurl: String? {
        //: didSet {
        didSet {
            //: updateUI()
            godspeed()
        }
    }

    //: private let imageView: UIImageView = {
    private let imageView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.contentMode = .scaleAspectFill
        imageView.contentMode = .scaleAspectFill
        //: imageView.clipsToBounds = true
        imageView.clipsToBounds = true
        //: imageView.backgroundColor = UIColor.systemGray5
        imageView.backgroundColor = UIColor.systemGray5
        //: imageView.layer.cornerRadius = 15
        imageView.layer.cornerRadius = 15
        //: return imageView
        return imageView
        //: }()
    }()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupUI()
        triviality()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder: NSCoder) {
        //: super.init(coder: coder)
        super.init(coder: coder)
        //: setupUI()
        triviality()
    }

    //: private func setupUI() {
    private func triviality() {
        //: addSubview(imageView)
        addSubview(imageView)
        //: imageView.snp.makeConstraints { make in
        imageView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    //: private func updateUI() {
    private func godspeed() {
        //: imageView.setUrlImage(urlStr: self.imageurl ?? "")
        imageView.bolt(urlStr: self.imageurl ?? "")
    }
}
