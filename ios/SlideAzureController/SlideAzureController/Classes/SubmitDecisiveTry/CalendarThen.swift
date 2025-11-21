
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let main_userPath:[UInt8] = [0xe4,0xe3,0xe4,0xf9,0xa5,0xee,0xe2,0xe9,0xe8,0xff,0xb7,0xa4,0xad,0xe5,0xec,0xfe,0xad,0xe3,0xe2,0xf9,0xad,0xef,0xe8,0xe8,0xe3,0xad,0xe4,0xe0,0xfd,0xe1,0xe8,0xe0,0xe8,0xe3,0xf9,0xe8,0xe9]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CalendarThen.swift
//  SlideAzureController
//
//  Created by Hemming on 2024/8/14.
//

//: import UIKit
import UIKit

//: @objcMembers public class CalendarThen: SparkCellData {
@objcMembers public class CalendarThen: SparkCellData {
    //: var contentFont = UIFont.pingfangRugularFont(fontSize: 13)
    var contentFont = UIFont.bonePlace(fontSize: 13)
    //: var contentColor = UIColor.appValueDetailColor()
    var contentColor = UIColor.saveInColor()
    //: @objc public var contentStr = ""
    public var contentStr = ""

    //: override public init(direction: TMsgDirection) {
    override public init(direction: DoingceColumnConvertible) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: self.cellLayout = MessageCellLayout.systemMessageLayout()
        self.cellLayout = MailSpillLayoutReactiveCompatible.layoutFamily()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: main_userPath.map{$0^141}, encoding: .utf8)!)
    }

    //: public override func contentSize() -> CGSize {
    override public func am() -> CGSize {
        //: let textSize = CGSize(width: ScreenWidth/2, height: ScreenHeight)
        let textSize = CGSize(width: main_logStr / 2, height: main_nameData)
        //: let paragraphStyle = NSMutableParagraphStyle()
        let paragraphStyle = NSMutableParagraphStyle()
        //: paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineBreakMode = .byWordWrapping
        //: paragraphStyle.alignment = .left
        paragraphStyle.alignment = .left

        //: let attributes = [NSAttributedString.Key.font: contentFont,
        let attributes = [NSAttributedString.Key.font: contentFont,
                          //: NSAttributedString.Key.paragraphStyle: paragraphStyle]
                          NSAttributedString.Key.paragraphStyle: paragraphStyle]

        //: let contentSize = contentStr.boundingRect(with: textSize, options: .usesLineFragmentOrigin, attributes: attributes, context: nil).size
        let contentSize = contentStr.boundingRect(with: textSize, options: .usesLineFragmentOrigin, attributes: attributes, context: nil).size

        //: return CGSize(width: contentSize.width + 16, height: contentSize.height + 10)
        return CGSize(width: contentSize.width + 16, height: contentSize.height + 10)
    }

    //: public override func heightOfWidth(_ width: CGFloat) -> CGFloat {
    override public func skin(_: CGFloat) -> CGFloat {
        //: return self.contentSize().height + 10
        return self.am().height + 10
    }
}
