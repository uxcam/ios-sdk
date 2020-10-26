// swift-tools-version:5.3
import PackageDescription

// Edit these for a new version
let version = "3.3.0-alpha.6"
let frameworkChecksum = "58189551dc306034b4face3779e15598854c7ac797ec250ccf8e0ee2678e84a4"


var fwBinaryTarget = Target.binaryTarget(
	name: "UXCam",
 //path: "Framework/UXCam.xcframework"
 //url: "https://github.com/uxcam/ios-sdk/UXCam.xcframework.zip",
 url: "https://raw.githubusercontent.com/uxcam/ios-sdk/\(version)/UXCam.xcframework.zip",
 checksum: frameworkChecksum
)

fwBinaryTarget.linkerSettings =
	[
		.linkedFramework("AVFoundation"),
		.linkedFramework("CoreGraphics"),
		.linkedFramework("CoreMedia"),
		.linkedFramework("CoreVideo"),
		.linkedFramework("CoreTelephony"),
		.linkedFramework("MobileCoreServices"),
		.linkedFramework("QuartzCore"),
		.linkedFramework("Security"),
		.linkedFramework("SystemConfiguration"),
		.linkedFramework("WebKit"),
		.linkedLibrary("z"),
		.linkedLibrary("iconv")
	]

// This should be a lot shorter but there are hoops to jump through to get a binary target to add linker settings
let package = Package(
    
    name: "UXCam",
    
    platforms: [ .iOS(.v9) ],
    
    products: [ .library( name: "UXCam", targets: ["UXCam"]) ],
    
    targets: 
    [
		fwBinaryTarget
    ]
)
        
