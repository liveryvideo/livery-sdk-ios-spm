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
            url: "https://sdk-ios-binaries.livery.live/3.3.3-beta.4/Livery-spm-3.3.3-beta.4.zip",
            checksum: "eb00ee92076937427e5a3061be0c2784a89166997a7474d24125e0bac3229719"
        )
    ],
    swiftLanguageVersions: [.v5]
)
