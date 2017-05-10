#
#  Be sure to run `pod spec lint DLNFoundation.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "DLNFoundation"
  s.version      = "0.5.1"
  s.summary      = "A common foundation framwork for iOS development. All 'DLN' frameworks should depend on it."
  s.description  = <<-DESC
                   A common foundation framwork for iOS development. All 'DLN' frameworks should depend on it.
                   DESC
  s.homepage     = "https://github.com/dklinzh/DLNFoundation"
  s.license      = "MIT"
  s.author       = { "Daniel Lin" => "linzhdk@gmail.com" }
  s.ios.deployment_target = '7.0'
  s.source       = { :git => "https://github.com/dklinzh/DLNFoundation.git", :tag => s.version.to_s }
  s.source_files = "DLNFoundation/**/*.{h,m}"
  s.resources = "DLNFoundation/*.bundle"
  s.requires_arc = true
  s.xcconfig = { "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES" }
  s.dependency "DLNCore"
  s.dependency "CocoaLumberjack", "~> 3.0"
  s.dependency "JSONModel", "~> 1.7"
  s.prefix_header_file = 'DLNFoundation/DLNFoundation-Prefix.pch'
end
