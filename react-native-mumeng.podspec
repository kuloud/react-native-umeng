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
  s.source        = { :git => "https://github.com/kuloud/react-native-umeng.git", :tag => "main" }
  s.source_files  = "ios/RNReactNativeMumeng.{h,m}"
  s.requires_arc  = true

  s.frameworks = "CoreTelephony", "SystemConfiguration"
  s.libraries = "sqlite3", "z"

  s.dependency "React"
  s.dependency 'UMCCommon','7.3.7'
  s.dependency 'UMDevice','1.2.0'

end
