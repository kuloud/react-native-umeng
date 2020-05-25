require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name          = package['name']
  s.version       = package['version']
  s.summary       = package['description']
  s.description   = package['description']
  s.homepage      = package['homepage']
  s.license       = package['license']
  s.author        = package['author']
  s.platform      = :ios, "9.0"
  s.source        = { :git => "https://github.com/bashen1/react-native-mumeng.git", :tag => "master" }
  s.source_files  = "ios/RNReactNativeMumeng.{h,m}"
  s.requires_arc  = true

  s.frameworks = "CoreTelephony", "SystemConfiguration"
  s.libraries = "sqlite3", "z"

  s.dependency "React"
  s.dependency 'UMCCommon','2.1.1'
  s.dependency 'UMCAnalytics','6.0.5'

end
