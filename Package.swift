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
            url: "https://sdk-ios-binaries.livery.live/3.3.3-beta.3/Livery-spm-3.3.3-beta.3.zip",
            checksum: "55c00ed66932e4acd5d2518b32f11830d6424909669bb091b736a584e17ad16e"
        )
    ],
    swiftLanguageVersions: [.v5]
)
