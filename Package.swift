// swift-tools-version:5.3
import PackageDescription

// Current stable version of the Livery iOS SDK
let latestVersion = "2.0.7"

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
                        checksum: "4ba63f874f77e96ae6e9097fc9b75cf3931108412fdd07175bec8d741b63ff7c")
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
            from: "2.30.4"
        )
    ],
    targets: [
        target,
        .target(
            name: "LiverySDKWrapper",
            dependencies: [
                "Livery",
                .product(name: "AWSCore", package: "AWSiOSSDKV2"),
                .product(name: "AWSPinpoint", package: "AWSiOSSDKV2")
            ],
            path: "LiveryTargetSource"
        )
    ],
    swiftLanguageVersions: [.v5]
)
