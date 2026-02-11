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
            url: "https://sdk-ios-binaries.livery.live/3.3.4/Livery-spm-3.3.4.zip",
            checksum: "c2ac6a425e34cc618715cb88b71a2082f8badc1780fc892d43f6aa827325c409"
        )
    ],
    swiftLanguageVersions: [.v5]
)
