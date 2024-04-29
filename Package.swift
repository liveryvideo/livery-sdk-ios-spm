// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Livery",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "Livery", targets: ["LiverySDKWrapper"])
    ],
    dependencies: [
        .package(
            name: "AWSiOSSDKV2",
            url: "https://github.com/aws-amplify/aws-sdk-ios-spm",
            from: "2.36.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "Livery",
            url: "https://sdk-ios-binaries.liveryvideo.com/xcframework/Livery-3.0.0-beta.4.zip",
            checksum: "45e18de9eacc4a76c556d830318c90521cb0ddc6711edf41960cf8971a818a40"
        ),
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
