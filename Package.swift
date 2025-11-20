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
            url: "https://sdk-ios-binaries.livery.live/3.3.1/Livery-spm-3.3.1.zip",
            checksum: "662c757ab5cf1c8ee6018893b3fa2688a92d901c00ac0e6d7dd23374fb35444e"
        )
    ],
    swiftLanguageVersions: [.v5]
)
