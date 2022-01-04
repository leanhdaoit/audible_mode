#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint audible_mode.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'audible_mode'
  s.version          = '1.0.0'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'https://github.com/andreamainella98/audible_mode'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Andrea Mainella' => 'andrea.mainella@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Mute', '~> 0.6.0'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
