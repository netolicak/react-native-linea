  
require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'react-native-linea'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = 'https://github.com/netolicak/react-native-linea'
  s.source         = { git: 'https://github.com/netolicak/react-native-linea.git', tag: s.version }

  s.requires_arc   = true
  s.platform       = :ios, '9.0'

  s.preserve_paths = 'LICENSE', 'README.md', 'package.json', 'LineaPro.js', 'NativeBridges.js'
  s.source_files   = 'DTDevices.h', 'react-native-linea/*.{h,m}'

  s.dependency 'React'
end