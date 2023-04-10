//
//  SearchTimelineViewController.swift
//  FabricSampleApp
//
//  Created by Steven Hepting on 2/10/15.
//  Copyright (c) 2015 Twitter. All rights reserved.
//

import UIKit

@objc (SearchTimelineViewController)
class SearchTimelineViewController: TWTRTimelineViewController {

    convenience init() {
        let client = TWTRAPIClient.withCurrentUser()
        let dataSource = TWTRSearchTimelineDataSource(searchQuery: "query with no results", apiClient: client)
        dataSource.geocodeSpecifier = "37.781157,-122.398720,1mi"

        self.init(dataSource: dataSource)
        self.title = dataSource.searchQuery
        self.hidesBottomBarWhenPushed = true
        self.showTweetActions = true

        // To remove our default message
        self.tableView.backgroundView = nil
    }

}
