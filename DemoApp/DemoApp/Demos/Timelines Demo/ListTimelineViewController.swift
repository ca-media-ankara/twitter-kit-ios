//
//  ListTimelineViewController.swift
//  FabricSampleApp
//
//  Created by Kang Chen on 6/18/15.
//  Copyright (c) 2015 Twitter. All rights reserved.
//

import UIKit

class ListTimelineViewController: TWTRTimelineViewController, TWTRTimelineDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let client = TWTRAPIClient.withCurrentUser()
        self.dataSource = TWTRListTimelineDataSource(listSlug: "twitter-kit", listOwnerScreenName: "stevenhepting", apiClient: client)
        // Note that the delegate is being set *after* the dataSource.
        // This is enabled by the change to the `setDataSource:` method
        // to load more Tweets on the next runloop
        self.timelineDelegate = self;

        self.showTweetActions = true
        self.view.backgroundColor = .lightGray
    }
    
    func timelineDidBeginLoading(_ timeline: TWTRTimelineViewController) {
        print("Began loading Tweets.")
    }

    func timeline(_ timeline: TWTRTimelineViewController, didFinishLoadingTweets tweets: [Any]?, error: Error?) {
        if error != nil {
            print("Encountered error \(error!)")
        } else {
            print("Finished loading \(tweets!.count)")
        }
    }

}
