// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "UXCam",
    platforms: [
        .iOS(.v09)
    ],
    products: [
        .library(
            name: "MyFramework", 
            targets: ["MyFramework"])
    ],
    targets: [
        .binaryTarget(
            name: "MyFramework", 
            path: "MyFramework.xcframework")
    ])