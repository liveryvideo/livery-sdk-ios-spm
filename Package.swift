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
            url: "https://sdk-ios-binaries.liveryvideo.com/xcframework/Livery-3.1.4.zip",
            checksum: "6b8534dbc42769e5086f617ea57f4453b35b20babb9b5fbf2b70cad09fe5dc51"
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
