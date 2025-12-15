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
            url: "https://sdk-ios-binaries.livery.live/3.3.3/Livery-spm-3.3.3.zip",
            checksum: "49c41ee904162012cdf15ffc4f1e1793363cdb937c31e047c571f6d88c49f979"
        )
    ],
    swiftLanguageVersions: [.v5]
)
