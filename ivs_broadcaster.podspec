#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint ivs_broadcaster.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'ivs_broadcaster'
  s.version          = '0.0.4'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'AmazonIVSPlayer'
  s.dependency 'AmazonIVSBroadcast/Stages'
  s.dependency 'AmazonIVSChat/Messaging'
  s.frameworks       = ['CoreMedia']
  s.platform = :ios, '15.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end