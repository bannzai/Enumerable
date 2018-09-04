#
#  Be sure to run `pod spec lint Enumerable.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "Enumerable"
  s.version      = "0.0.1"
  s.summary      = "Swift Enum can enumerable."
  s.description = <<-DESC
                      Enumrable can get all the elements of Enum.
                     DESC
  s.homepage     = "https://github.com/bannzai/Enumerable"
  s.license      = "MIT"
  s.author             = { "bannzai" => "kingkong999yhirose@gmail.com" }
  s.source       = { :git => "https://github.com/bannzai/Enumerable.git", :commit => "e27286afd3c824d57d3287f1ff38242fdcf7b602" }
  s.source_files  = "Enumerable/*.swift"
  s.social_media_url   = "https://twitter.com/_bannzai_"
  s.ios.deployment_target = '9.0'
  s.swift_version = '4.1'
end
