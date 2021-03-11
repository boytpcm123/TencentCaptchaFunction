#
# Be sure to run `pod lib lint TencentCaptchaFunction.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TencentCaptchaFunction'
  s.version          = '1.0.0'
  s.summary          = 'A library of Tencent Captcha Code.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A library of Tencent Captcha Code.
https://cloud.tencent.com/document/product/1110/36841
                       DESC

  s.homepage         = 'https://github.com/boytpcm123/TencentCaptchaFunction'
  s.screenshots     = 'https://raw.githubusercontent.com/boytpcm123/TencentCaptchaFunction/master/Images/demo.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ninjaKID' => 'nguyenthuongthongcm@gmail.com' }
  s.source           = { :git => 'https://github.com/boytpcm123/TencentCaptchaFunction.git', :tag => s.version.to_s }
  s.platform = :ios
  s.ios.deployment_target = '10.0'
  s.source_files  = "TencentCaptchaFunction/**/*.{h,m}"
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.static_framework = true
  s.resource_bundles = {
      'TencentCaptchaFunction' => ['TencentCaptchaFunction/*/**']
  }
end
