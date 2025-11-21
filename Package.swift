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
            url: "https://sdk-ios-binaries.livery.live/3.3.2-beta.1/Livery-spm-3.3.2-beta.1.zip",
            checksum: "97feccd78d154c22a17b6c74901c6935b67e5efe8a11df2dd20b0acd30337986"
        )
    ],
    swiftLanguageVersions: [.v5]
)
