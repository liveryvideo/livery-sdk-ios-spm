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
            url: "https://sdk-ios-binaries.livery.live/3.3.2/Livery-spm-3.3.2.zip",
            checksum: "dcdd7086a6260a108f14945df4aba4dcfa89a11bfb08bad1f148cbd91b8c6ddc"
        )
    ],
    swiftLanguageVersions: [.v5]
)
