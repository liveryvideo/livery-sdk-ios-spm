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
            url: "https://sdk-ios-binaries.livery.live/3.3.6+37235a2/Livery-spm-3.3.6+37235a2.zip",
            checksum: "60b4de5c7dda87b1beb24b551956c175abf8d372be8ab601f6cb26bb4962d967"
        )
    ],
    swiftLanguageVersions: [.v5]
)
