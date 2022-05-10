// swift-tools-version:5.3
import PackageDescription

// Current stable version of the Livery iOS SDK
let latestVersion = "1.4.0-beta.2"

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
                        checksum: "e3499af1bd14cbff1d5d4a7ffd744a4d553824cbe31427051c75dfbcdf2cabc2")
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
            from: "2.26.0"
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
