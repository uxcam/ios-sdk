// swift-tools-version:5.3
import PackageDescription

let version = "3.4.0-beta.5"

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
			checksum: "e0e13fd4cf03809de0ceedcd203cdadeebee405860dff2c1dde702b81d1e1348"
		)
    ]
)

