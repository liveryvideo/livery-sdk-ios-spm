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
    targets: [
        .binaryTarget(
            name: "Livery",
            url: "https://sdk-ios-binaries.livery.live/3.3.1-beta.2/Livery-spm-3.3.1-beta.2.zip",
            checksum: "bf3aa5a4e1899e7a2a80d3e749676d703b452ff8a6f8850c152bed8106894ad1"
        ),
        .target(
            name: "LiverySDKWrapper",
            path: "LiveryTargetSource"
        )
    ],
    swiftLanguageVersions: [.v5]
)
