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
            url: "https://sdk-ios-binaries.livery.live/3.4.0-beta.2/Livery-spm-3.4.0-beta.2.zip",
            checksum: "496dd012a64dafe92b4a451b48a137cf6f6030edd34279b07cea4b6e38684130"
        )
    ],
    swiftLanguageVersions: [.v5]
)
