// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Livery",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "Livery", targets: ["Livery"])
    ],
    targets: [
        .binaryTarget(
            name: "Livery",
            url: "https://sdk-ios-binaries.livery.live/3.4.0-beta.1/Livery-spm-3.4.0-beta.1.zip",
            checksum: "e1d0591abbf5da1b92ab2895aac483cbda009eeca4729555aa0c868a180f0bf8"
        )
    ],
    swiftLanguageVersions: [.v5]
)
