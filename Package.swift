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
            url: "https://sdk-ios-binaries.livery.live/3.3.3-beta.1/Livery-spm-3.3.3-beta.1.zip",
            checksum: "a2653122659842e88c496e628b4a1650a908264ad464c02110184bad5297ed3d"
        )
    ],
    swiftLanguageVersions: [.v5]
)
