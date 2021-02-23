// swift-tools-version:5.3
import PackageDescription

let version = "3.3.3"

let package = Package(
    
    name: "UXCam",
    
    platforms: 
    [
        .iOS(.v9)
    ],
    
    products: 
    [
        .library(
			name: "UXCam",
            targets: ["UXCamWrapper", "UXCam"]
		)
    ],
    
    targets: 
    [
		// 'UXCamWrapper' target is a way to include the necessary linkerSettings that the binary XCFramework in UXCamFW requires.
		.target(
				name: "UXCamWrapper",
				path: "UXCamWrapper",
				exclude: ["README.md"],
				linkerSettings: 
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
		),
		
        .binaryTarget(
            name: "UXCam",
            //path: "Framework/UXCam.xcframework"
			//url: "https://github.com/uxcam/ios-sdk/UXCam.xcframework.zip",
			url: "https://raw.githubusercontent.com/uxcam/ios-sdk/\(version)/UXCam.xcframework.zip",
			checksum: "fd94f3ac70e44b8f46d99b6a4006549f92e845f6c84b7dc36ef99bd4549ebdc3"
		)
    ]
)
        
