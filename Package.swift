// swift-tools-version:5.3
import PackageDescription

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
            targets: ["UXCamWrapper", "UXCamFW"]
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
            name: "UXCamFW", 
            path: "Framework/UXCam.xcframework"
		)
    ]
)
        
