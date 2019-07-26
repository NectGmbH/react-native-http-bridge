require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/alwx/react-native-http-bridge', :tag => s.version }
  s.source_files  = "ios/WGCDWebServer/**/*.{h,m}"
  s.requires_arc = true
  s.dependency "React"
end

