// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "UXCam",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "UXCam", 
            targets: ["UXCam"])
    ],
    
    targets: [
        .binaryTarget(
            name: "UXCam", 
            path: "Framework/UXCam.xcframework")
    ],
    
    linkerSettings: [
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
        .linkedLibrary("iconv"),
	])
        