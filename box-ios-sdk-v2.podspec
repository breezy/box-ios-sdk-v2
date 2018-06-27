Pod::Spec.new do |s|
s.name                  = "BoxContentSDK"
s.version               = "1.2.6"
s.summary               = "iOS + OS X SDK for the Box V2 API."
s.homepage              = "https://github.com/breezy/box-ios-sdk-v2"
s.license               = { :type => "MIT", :file => "LICENSE" }
s.author                = "Box"
s.source                = { :git => "https://github.com/breezy/box-ios-sdk-v2.git", :tag => s.version.to_s }
s.platform              = :ios

# Platform


s.ios.deployment_target = "5.0"

# File patterns

s.ios.source_files        = "BoxContentSDK/BoxContentSDK/*.{h,m}", "BoxContentSDK/BoxContentSDK/**/*.{h,m}"
s.ios.exclude_files       = "BoxContentSDK/BoxContentSDK/External/ISO8601DateFormatter/BoxISO8601DateFormatter.{h,m}, BoxContentSDK/BoxContentSDK/External/BOXKeychainItemWrapperKeychainItemWrapper.{h,m}"
s.ios.public_header_files = "BoxContentSDK/BoxContentSDK/*.h", "BoxContentSDK/BoxContentSDK/**/*.h"
s.resource_bundle = {
   'BoxSDKResources' => [
     'BoxContentSDK/BoxSDKResources/Assets/*.*',
     'BoxContentSDK/BoxSDKResources/Icons/*.*',
     'BoxContentSDK/BoxSDKResources/*.lproj'
   ]
}

# Build settings

s.ios.frameworks        = "Security", "QuartzCore"
s.requires_arc          = true
s.xcconfig              = { "OTHER_LDFLAGS" => "-ObjC -all_load" }
s.ios.header_dir        = "BoxContentSDK"
s.module_name           = "BoxContentSDK"

end