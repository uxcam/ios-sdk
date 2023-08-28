// swift-tools-version:5.3
import PackageDescription

let version = "3.6.5"
let checksum = "4b95486ce595c2ea562b8a9b55dc90ab7b9ed79746ebb4885d7b5fc2103e3bcf"
let repoName = "ios-sdk"

let package = Package(

    name: "UXCam",

    platforms:
    [
        .iOS(.v11)
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
                    .linkedLibrary("iconv"),
                    .linkedLibrary("c++")
                ]
        ),

        .binaryTarget(
            name: "UXCam",
            url: "https://raw.githubusercontent.com/uxcam/\(repoName)/\(version)/UXCam.xcframework.zip",
            checksum: checksum
        )
    ]
)
