// swift-tools-version:5.3
import PackageDescription

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
            from: "2.30"
        )
    ],
    targets: [
        .binaryTarget(
            name: "Livery",
            url: "https://sdk-ios-binaries.liveryvideo.com/xcframework/Livery-2.1.0-beta.9.zip",
            checksum: "d1364d7a9dd22292e14fb9747897ff88ef6b8afdfd0e8c6b91b4726a217f6793"
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
