
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let show_advertisingName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "area_icon_ :*/
fileprivate let showIconNapName:[Character] = ["a","r","e","a","_"]
fileprivate let noti_soundPath:String = "icon_involvement deep basic"

/*: "get img error" :*/
fileprivate let kAdditionalName:String = "nut satisfy alongside fadeget i"
fileprivate let userBiteText:[Character] = ["m"]
fileprivate let noti_languageData:[Character] = ["g"," ","e","r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RunningReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/29.
//

//: import UIKit
import UIKit

//: class TalkingAreaCodeChoiceCell: UITableViewCell {
class RunningReactiveCompatible: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: required init?(coder: NSCoder) {
    required init?(coder: NSCoder) {
        //: super.init(coder: coder)
        super.init(coder: coder)
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: show_advertisingName.reversed(), encoding: .utf8)!)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = .none
        selectionStyle = .none
        //: self.setupSubviews()
        self.mobile()
        //: self.setupSubViewsConstraint()
        self.clear()
        //: self.bindInteraction()
        self.strip()
    }

    //: lazy var areaImgView: UIImageView = {
    lazy var areaImgView: UIImageView = {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.layer.cornerRadius = 11
        imageView.layer.cornerRadius = 11
        //: imageView.clipsToBounds = true
        imageView.clipsToBounds = true
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var areaNameLabel: UILabel = {
    lazy var areaNameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .bigGallery(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()
        //: return label
        return label
        //: }()
    }()

    //: lazy var areaCodeLabel: UILabel = {
    lazy var areaCodeLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .pingfangFont(type: .Regular, fontSize: 16)
        label.font = .bigGallery(type: .Regular, fontSize: 16)
        //: label.textColor = .appTitleColor()
        label.textColor = .dialog()
        //: label.textAlignment = .right
        label.textAlignment = .right
        //: return label
        return label
        //: }()
    }()

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }
}

// MARK: - Public Event

//: extension TalkingAreaCodeChoiceCell {
extension RunningReactiveCompatible {
    //: public func func__updateUIWithModel(areaModel: TalkingAreaModel) {
    public func includeIncrease(areaModel: ImpressionAreaModel) {
        //: areaNameLabel.text = areaModel.areaName
        areaNameLabel.text = areaModel.areaName
        //: areaCodeLabel.text = "+\(areaModel.areaCode)"
        areaCodeLabel.text = "+\(areaModel.areaCode)"

        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (String(showIconNapName) + String(noti_soundPath.prefix(5))) + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = BlackEffectTool.default.shadeTing(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: areaImgView.image = UIImage(data: data)
                areaImgView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: areaImgView.image = UIImage.placeImgSquare()
                areaImgView.image = UIImage.regularPolygon()
                //: printLog(message: "get img error")
                printLog(message: (String(kAdditionalName.suffix(5)) + String(userBiteText) + String(noti_languageData)))
            }
            //: }else {
        } else {
            //: areaImgView.setUrlImage(urlStr: areaModel.url)
            areaImgView.bolt(urlStr: areaModel.url)
        }
    }
}

// MARK: - Layout

//: extension TalkingAreaCodeChoiceCell {
extension RunningReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func mobile() {
        //: contentView.backgroundColor = .white
        contentView.backgroundColor = .white
        //: contentView.addSubview(areaImgView)
        contentView.addSubview(areaImgView)
        //: contentView.addSubview(areaNameLabel)
        contentView.addSubview(areaNameLabel)
        //: contentView.addSubview(areaCodeLabel)
        contentView.addSubview(areaCodeLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func clear() {
        //: areaImgView.snp.makeConstraints { make in
        areaImgView.snp.makeConstraints { make in
            //: make.centerY.equalTo(contentView)
            make.centerY.equalTo(contentView)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.width.height.equalTo(22)
            make.width.height.equalTo(22)
        }
        //: areaNameLabel.snp.makeConstraints { make in
        areaNameLabel.snp.makeConstraints { make in
            //: make.centerY.equalTo(contentView)
            make.centerY.equalTo(contentView)
            //: make.leading.equalTo(areaImgView.snp.trailing).offset(8)
            make.leading.equalTo(areaImgView.snp.trailing).offset(8)
        }
        //: areaCodeLabel.snp.makeConstraints { make in
        areaCodeLabel.snp.makeConstraints { make in
            //: make.centerY.equalTo(contentView)
            make.centerY.equalTo(contentView)
            //: make.leading.equalTo(areaNameLabel.snp.trailing).offset(8)
            make.leading.equalTo(areaNameLabel.snp.trailing).offset(8)
            //: make.trailing.equalToSuperview().offset(-13)
            make.trailing.equalToSuperview().offset(-13)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func strip() {}
}
