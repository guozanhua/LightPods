Pod::Spec.new do |s|
  s.name             = "LightSDK"
  s.version          = "0.1.0"
  s.summary          = "iOS SDK for Light."
  s.description      = <<-DESC
                       iOS SDK for Light.

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "http://www.alphabets.com.cn"
  s.screenshots      = "http://www.alphabets.com.cn/images/content/hi_1.png", "http://www.alphabets.com.cn/images/content/hi_4.jpg"
  s.license          = 'MIT'
  s.author           = { "fzcs" => "fzcs@live.cn" }
  s.source           = { :git => "https://github.com/LightCircle/LightSDKIOS.git" }
  s.social_media_url = 'http://www.alphabets.cn'

  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source_files = 'LightSDK/LightSDK.h'

  s.subspec 'Config' do |ss|
    ss.source_files = 'LightSDK/Config/**/*.{h,m}'
  end

  s.subspec 'Entity' do |ss|
    ss.source_files = 'LightSDK/Entity/**/*.{h,m}'
  end

  s.subspec 'Storable' do |ss|
    ss.source_files = 'LightSDK/Storable/**/*.{h,m}'
  end

  s.subspec 'Util' do |ss|
    ss.source_files = 'LightSDK/Util/**/*.{h,m}'
  end

  s.subspec 'UI' do |ss|
    ss.source_files = 'LightSDK/UI/**/*.{h,m}'
    ss.resources    = 'LightSDK/UI/**/*.{png,storyboard,mp3}'
  end

  s.dependency 'AFNetworking',               '3.1.0'
  s.dependency 'SDWebImage',                 '3.8.1'
  s.dependency 'Underscore.m',               '0.2.1'
  s.dependency 'JSONModel',                  '1.3.0'
  s.dependency 'MBProgressHUD',              '1.0.0'
end
