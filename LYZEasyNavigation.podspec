#
# Be sure to run `pod lib lint LYZEasyNavigation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LYZEasyNavigation'
  s.version          = '0.1.4'
  s.summary          = '一个简单易用功能丰富的导航看控制器'
  s.swift_version = '5.0'
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!


  s.homepage         = 'https://github.com/liuyaozong1/LYZ_EasyNavigation.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '648731281@qq.com' => '648731281@qq.com' }
  s.source           = { :git => 'https://github.com/liuyaozong1/LYZ_EasyNavigation.git', :tag => s.version }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.platform     = :ios
  s.ios.deployment_target = '11.0'
#  s.resources = "LYZEasyNavigation/Classes/source/*.{bundle}"
  s.source_files = 'LYZEasyNavigation/Classes/**/*'
  # s.resource_bundles = {
  #   'LYZEasyNavigation' => ['LYZEasyNavigation/Assets/*.png']
  # }
#  /Users/liuyaozong/Desktop/LYZ_Library/LYZEasyNavigation/LYZEasyNavigation/Classes/LYZEasyBtn.swift
#/Users/liuyaozong/Library/Caches/CocoaPods/Pods/External/.podspec
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
    s.dependency "SnapKit"
end
