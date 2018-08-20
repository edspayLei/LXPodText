#
# Be sure to run `pod lib lint LXPodText.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LXPodText'
  s.version          = '0.1.8'
  s.summary          = 'A test project'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/edspayLei/LXPodText'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'leixiangxiang@edspay.com' => 'leixiangxiang@edspay.com' }
  s.source           = { :git => 'https://github.com/edspayLei/LXPodText.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # s.source_files = 'Classes/**/*'
  
  # s.resource_bundles = {
  #   'LXPodText' => ['LXPodText/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'AVFoundation', 'CoreMotion', 'CoreMedia'
  s.dependency 'AFNetworking', '~> 3.2.1'
  s.dependency 'Masonry', '~> 1.1.0'
  s.vendored_libraries = 'Classes/Dependence/MoxieSDK/libMoxieSDK.a','Classes/Dependence/BaiQiShi/libBqsDFSDK-V2.2.1.a'
  s.resources = 'Classes/Dependence/MGLivenessDetectionResource.bundle', 'Classes/Dependence/MGIDCardResource.bundle', 'Classes/Dependence/FanbeiCreditSDKResource.bundle'
  s.vendored_frameworks = 'Classes/Dependence/MGLivenessDetection.framework', 'Classes/Dependence/MGBaseKit.framework', 'Classes/Dependence/MGIDCard.framework'
  # 'Classes/Dependence/FanbeiCreditSDK.framework'
  
end
