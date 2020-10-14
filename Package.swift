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
    ])