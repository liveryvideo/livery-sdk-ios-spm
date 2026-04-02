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
            url: "https://sdk-ios-binaries.livery.live/3.4.0/Livery-spm-3.4.0.zip",
            checksum: "b45c7228caf8f5656bdc6269c4676ccb9716896d4e98e2fc82e3aec661a1d1e3"
        )
    ],
    swiftLanguageVersions: [.v5]
)
