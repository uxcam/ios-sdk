Pod::Spec.new do |s|
  s.name     = 'UXCam'
  s.version  = '3.3.0-alpha.2'
  s.summary = "UXCam SDK for iOS applications"
  s.description = <<-DESC
                  Visit https://uxcam.com/ to get a key.
                  This is version 3.3.0-alpha.2 of the SDK - see CHANGELOG for details
                  DESC
  s.homepage = "https://uxcam.com/"
  s.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
                Copyright (c) 2013-2020, UXCam Inc.
                All rights reserved.
    LICENSE
  }
  s.author   = { 'UXCam' => 'admin@uxcam.com' }
  s.social_media_url = "https://www.twitter.com/uxcam"
  s.documentation_url = 'https://help.uxcam.com/hc/en-us/categories/360001001392-Tailor-for-Success'
  s.source       = { :git => "https://github.com/uxcam/ios-sdk.git", :tag => "#{s.version}" }
  s.platform = :ios, 9.0
  s.requires_arc = true
  s.vendored_frameworks = 'Framework/UXCam.xcframework'
  s.static_framework = true
  s.libraries = 'z', 'iconv'
  s.frameworks     = 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreVideo', 'CoreTelephony', 'MobileCoreServices', 'QuartzCore', 'SystemConfiguration', 'Security', 'WebKit'
  s.xcconfig       = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/UXCam"' }
end
