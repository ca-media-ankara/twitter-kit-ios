Pod::Spec.new do |s|
  s.name = "TwitterCore"
  s.version = "4.0.0"
  s.summary = "Increase user engagement and app growth."
  s.homepage = "https://github.com/twitter/twitter-kit-ios"
  s.documentation_url = "https://github.com/twitter/twitter-kit-ios/wiki"
  s.social_media_url = "https://twitter.com/TwitterDev"
  s.authors = "Twitter"
  s.ios.deployment_target = "14.0"
  s.source = { :http => "https://github.com/ca-media-ankara/twitter-kit-ios/releases/download/4.0.0/TwitterCore.zip" }
  s.license = { :type => "Commercial", :text => "Copyright Twitter, Inc. All Rights Reserved. Use of this software is subject to the terms and conditions of the Twitter Kit Agreement located at https://dev.twitter.com/overview/terms/twitterkit and the Developer Agreement located at https://dev.twitter.com/overview/terms/agreement. OSS: https://github.com/twitter/twitter-kit-ios/blob/master/OS_LICENSES.md" }
  s.vendored_framework = "TwitterCore.xcframework"
  s.ios.frameworks = "Accounts", "CoreData", "CoreGraphics", "Foundation", "Security", "Social", "UIKit"
end
