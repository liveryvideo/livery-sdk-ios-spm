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
            url: "https://sdk-ios-binaries.livery.live/3.4.0-beta.3/Livery-spm-3.4.0-beta.3.zip",
            checksum: "259c9fa6335d3d3c5cd2182af31e4ce5bd57dfd226fad9f1f2995a17e150d7fd"
        )
    ],
    swiftLanguageVersions: [.v5]
)
