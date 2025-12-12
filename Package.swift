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
            url: "https://sdk-ios-binaries.livery.live/3.3.3-beta.5/Livery-spm-3.3.3-beta.5.zip",
            checksum: "9f83c6a32607ba3e825ef4ed9faf556ef0005272e0faee29033153fc3b9eb997"
        )
    ],
    swiftLanguageVersions: [.v5]
)
