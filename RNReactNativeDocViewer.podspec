require 'json'

Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

  s.name         = "RNReactNativeDocViewer"
  s.version      = package['version']
  s.summary      = package['description']
  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.license      = package['license']

  s.platform     = { :ios => "7.0" }
  s.requires_arc = true
  s.source       = { :git => "https://github.com/philipphecht/react-native-doc-viewer.git", :tag => "master" }
  s.source_files = "ios/**/*.{h,m}"

  s.dependency 'React-Core'
end

