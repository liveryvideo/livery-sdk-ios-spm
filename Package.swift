// swift-tools-version:5.3
import PackageDescription

// Current stable version of the Livery iOS SDK
let latestVersion = "2.0.0-beta.2"

// Hosting url where the release artifacts are hosted.
let hostingUrl = "https://sdk-ios-binaries.liveryvideo.com/xcframework/"
let localPath = "XCF/"
let localPathEnabled = false

func createTarget() -> Target {
    localPathEnabled ?
    Target.binaryTarget(name: "LiveryFramework",
                        path: "\(localPath)Livery.xcframework") :
    Target.binaryTarget(name: "Livery",
                        url: "\(hostingUrl)Livery-\(latestVersion).zip",
                        checksum: "9dc494c8c2379b1b6c0d9bd97c0c241df13c47885bab0b945d3c2755a5c0ea6d")
}

let target = createTarget()

let package = Package(
    name: "Livery",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "Livery", targets: ["LiverySDKWrapper"])
    ],
    dependencies: [
        .package(
            name: "AWSiOSSDKV2",
            url: "https://github.com/aws-amplify/aws-sdk-ios-spm",
            from: "2.27.9"
        ),
        .package(
            name: "Lottie",
            url: "https://github.com/airbnb/lottie-ios.git",
            from: "3.4"
        )
    ],
    targets: [
        target,
        .target(
            name: "LiverySDKWrapper",
            dependencies: [
                "Livery",
                .product(name: "AWSCore", package: "AWSiOSSDKV2"),
                .product(name: "AWSPinpoint", package: "AWSiOSSDKV2"),
                .product(name: "Lottie", package: "Lottie")
            ],
            path: "LiveryTargetSource"
        )
    ],
    swiftLanguageVersions: [.v5]
)
