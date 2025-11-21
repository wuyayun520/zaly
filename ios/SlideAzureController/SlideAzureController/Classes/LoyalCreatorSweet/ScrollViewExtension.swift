
//: Declare String Begin

/*: "Drop down to refresh" :*/
fileprivate let k_safetyDesignStr:String = "submit whichDrop "
fileprivate let user_bearRemTitle:String = "choose with why nature publiclyo re"
fileprivate let notiMemoryMessage:String = "fownersh"

/*: "Release Refresh" :*/
fileprivate let showIllegalId:String = "past normally visitor spring delayRelease "
fileprivate let noti_popularPendingKey:[Character] = ["R","e","f","r","e","s","h"]

/*: "Refreshing" :*/
fileprivate let appChinBusyUrl:String = "Refreshincease multi take"
fileprivate let noti_toleranceName:[Character] = ["g"]

/*: "Pull up to load more" :*/
fileprivate let kErrorKey:String = "number editor passagePu"
fileprivate let noti_eachId:[Character] = ["l","l"," ","u","p"," ","t","o"," ","l","o","a","d"," ","m","o","r","e"]

/*: "No more data." :*/
fileprivate let notiTapStr:[Character] = ["N","o"," ","m","o","r","e"," ","d","a","t","a"]
fileprivate let const_statementTitle:String = "."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScrollViewExtension.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: extension UIScrollView {
extension UIScrollView {
    //: typealias CompletionBlock = () -> Void
    typealias CompletionBlock = () -> Void

    /// 下拉刷新
    //: func addHeaderRefresh(complection: @escaping CompletionBlock) {
    func contrastComplection(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: let header = MJRefreshNormalHeader()
            let header = MJRefreshNormalHeader()
            //: header.setTitle("Drop down to refresh".localized, for: .idle)
            header.setTitle((String(k_safetyDesignStr.suffix(5)) + "down t" + String(user_bearRemTitle.suffix(4)) + notiMemoryMessage.replacingOccurrences(of: "owner", with: "re")).localized, for: .idle)
            //: header.setTitle("Release Refresh".localized, for: .pulling)
            header.setTitle((String(showIllegalId.suffix(8)) + String(noti_popularPendingKey)).localized, for: .pulling)
            //: header.setTitle("Refreshing".localized, for: .refreshing)
            header.setTitle((String(appChinBusyUrl.prefix(9)) + String(noti_toleranceName)).localized, for: .refreshing)
            //: header.lastUpdatedTimeLabel?.isHidden = true
            header.lastUpdatedTimeLabel?.isHidden = true

            //: self.mj_header = header
            self.mj_header = header
            //: self.mj_header?.refreshingBlock = {
            self.mj_header?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_header = MJRefreshNormalHeader {
            self.mj_header = MJRefreshNormalHeader {
                //: complection()
                complection()
            }
        }
    }

    /// 上拉加载
    //: func addFooterRefresh(complection: @escaping CompletionBlock) {
    func nextRating(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if RatingReactiveCompatible.shared.direction == .rightToLeft {
            //: let footer = MJRefreshAutoNormalFooter()
            let footer = MJRefreshAutoNormalFooter()
            //: footer.setTitle("Pull up to load more".localized, for: .idle)
            footer.setTitle((String(kErrorKey.suffix(2)) + String(noti_eachId)).localized, for: .idle)
            //: footer.setTitle("Release Refresh".localized, for: .pulling)
            footer.setTitle((String(showIllegalId.suffix(8)) + String(noti_popularPendingKey)).localized, for: .pulling)
            //: footer.setTitle("Refreshing".localized, for: .refreshing)
            footer.setTitle((String(appChinBusyUrl.prefix(9)) + String(noti_toleranceName)).localized, for: .refreshing)
            //: footer.setTitle("No more data.".localized, for: .noMoreData)
            footer.setTitle((String(notiTapStr) + const_statementTitle.capitalized).localized, for: .noMoreData)
            //: self.mj_footer = footer
            self.mj_footer = footer
            //: self.mj_footer?.refreshingBlock = {
            self.mj_footer?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_footer = MJRefreshAutoNormalFooter {
            self.mj_footer = MJRefreshAutoNormalFooter {
                //: complection()
                complection()
            }
        }
    }

    /// 结束刷新
    //: func endRefresh() {
    func combineIn() {
        //: if (self.mj_header?.isRefreshing) != nil {
        if (self.mj_header?.isRefreshing) != nil {
            //: self.mj_header?.endRefreshing()
            self.mj_header?.endRefreshing()
        }
        //: if (self.mj_footer?.isRefreshing) != nil {
        if (self.mj_footer?.isRefreshing) != nil {
            //: self.mj_footer?.endRefreshing()
            self.mj_footer?.endRefreshing()
        }
    }
}
