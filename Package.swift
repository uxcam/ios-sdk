// swift-tools-version:5.3
import PackageDescription

let version = "3.4.0"

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
			checksum: "11f215cb4d0ac7bc4b4491ee4641bac61478d2026044188f17a2c65d6f395fe9"
		)
    ]
)

