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
            from: "2.40.1"
        )
    ],
    targets: [
        .binaryTarget(
            name: "Livery",
            url: "https://sdk-ios-binaries.livery.live/xcframework/Livery-3.1.3.zip",
            checksum: "2286fcfaad3dc893f3c4756df4b15ffcc376a0c10010b2a8bc2b38f1c67b3636"
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
