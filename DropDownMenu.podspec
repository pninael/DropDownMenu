#
# Be sure to run `pod lib lint DropDownMenu.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DropDownMenu'
  s.version          = '0.0.2'
  s.summary          = 'DropDownMenu is a blocks based menu control, that enables creating a menu with action blocks assigned for each .'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = 'DropDownMenu is a blocks based menu control, that enables creating a menu with action blocks assigned for each menu item. The initialization and use are starightforward and super easy'


  s.homepage         = 'https://github.com/pninael/DropDownMenu.git'
  s.license          = 'MIT'
  s.author           = { 'Pnina Eliyahu' => "pninae@microsoft.com" }
  s.source           = { :git => 'https://github.com/pninael/DropDownMenu.git', :tag => '0.0.2' }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'DropDownMenu' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end


