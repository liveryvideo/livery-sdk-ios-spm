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
            url: "https://sdk-ios-binaries.livery.live/3.3.3-beta.2/Livery-spm-3.3.3-beta.2.zip",
            checksum: "dd8fbc095ed599831365111bd87a33474c877af308b8f52442a2da1604aa0f57"
        )
    ],
    swiftLanguageVersions: [.v5]
)
