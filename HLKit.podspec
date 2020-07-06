#
# Be sure to run `pod lib lint HLKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HLKit'
  s.version          = '0.1.3'
  s.summary          = 'A short description of HLKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/HLCrawler/HLKit.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hanlong' => 'hanlong@100tal.com' }
  s.source           = { :git => 'https://github.com/HLCrawler/HLKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HLKit/Classes/**/*'
 # 此处将模块内部代码和模块提供的服务代码分开处理
  # 模块内部代码
  s.subspec '简单工厂模式' do |ss|
    ss.source_files = 'TestModuleC/Classes/简单工厂模式/**/*'
  end
  
  # s.resource_bundles = {
  #   'HLKit' => ['HLKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
