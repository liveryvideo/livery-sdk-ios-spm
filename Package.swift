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
            url: "https://sdk-ios-binaries.livery.live/3.3.2-beta.3/Livery-spm-3.3.2-beta.3.zip",
            checksum: "bc5819a9dc205e9444adfd150d9732a2d57a1ee50e853772cb83ffc1c644b158"
        )
    ],
    swiftLanguageVersions: [.v5]
)
