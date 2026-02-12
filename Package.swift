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
            url: "https://sdk-ios-binaries.livery.live/3.3.5/Livery-spm-3.3.5.zip",
            checksum: "4318d2ffaa696cc415b453db0040ba2456b20d8310aba65d53a8fd8beeaa983e"
        )
    ],
    swiftLanguageVersions: [.v5]
)
