Pod::Spec.new do |s|
s.name                  = "BoxSDK"
s.version               = "1.2.3"
s.summary               = "iOS + OS X SDK for the Box V2 API."
s.homepage              = "https://github.com/breezy/box-ios-sdk-v2"
s.license               = { :type => "MIT", :file => "LICENSE" }
s.author                = "Box"
s.source                = { :git => "https://github.com/breezy/box-ios-sdk-v2.git", :tag => s.version.to_s }
s.platform              = :ios

# Platform


s.ios.deployment_target = "8.0"

# File patterns

s.ios.source_files        = "BoxSDK/*.{h,m}", "BoxSDK/**/*.{h,m}"
s.ios.exclude_files       = "BoxSDK/External/ISO8601DateFormatter/BoxISO8601DateFormatter.{h,m}"
s.ios.public_header_files = "BoxSDK/*.h", "BoxSDK/**/*.h"
s.resource_bundle = {
   'BoxSDKResources' => [
     'BoxSDKResources/Assets/*.*',
     'BoxSDKResources/Icons/*.*',
     'BoxSDKResources/*.lproj'
   ]
}

# Build settings

s.ios.frameworks        = "Security", "QuartzCore"
s.requires_arc          = true
s.xcconfig              = { "OTHER_LDFLAGS" => "-ObjC -all_load" }
s.ios.header_dir        = "BoxSDK"
s.module_name           = "BoxSDK"

# Subspecs

s.subspec "no-arc" do |sp|
sp.source_files              = "BoxSDK/External/ISO8601DateFormatter/BoxISO8601DateFormatter.{h,m}"
sp.requires_arc              = false
end

end