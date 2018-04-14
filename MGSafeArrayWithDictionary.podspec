#
#  Be sure to run `pod spec lint MGSafeArrayWithDictionary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "MGSafeArrayWithDictionary"
  s.version      = "0.0.1"
  s.summary      = "便捷的使用Array和Dictionary，防止插入nil崩溃."

  s.description  = <<-DESC
  					便捷的使用Array和Dictionary，防止插入nil崩溃.
                   DESC

  s.homepage     = "https://github.com/cndevmingle/MGSafeArrayWithDictionary"


  s.author             = { "Mingle" => "cndevmingle@gmail.com" }
  
  s.platform     = :ios

  s.source       = { :git => "https://github.com/cndevmingle/MGSafeArrayWithDictionary.git", :tag => s.version.to_s }

  # s.source_files  = "MGSafeArrayWithDictionary/**/*.{h,m}"

  s.subspec 'MGSafeArray' do |ss|
  	ss.source_files  = 'Demo/MGSafeArrayWithDictionary/MGSafeArray/**/*'
  	ss.frameworks	= 'Foundation'
  end

  s.subspec 'MGSafeDictionary' do |ss|
  	ss.source_files  = 'Demo/MGSafeArrayWithDictionary/MGSafeDictionary/**/*'
  	ss.frameworks	= 'Foundation'
  end

  s.subspec 'MGSafeString' do |ss|
  	ss.source_files  = 'Demo/MGSafeArrayWithDictionary/MGSafeString/**/*'
  	ss.frameworks	= 'Foundation'
  end

end
