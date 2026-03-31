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
            url: "https://sdk-ios-binaries.livery.live/3.4.0-beta.4/Livery-spm-3.4.0-beta.4.zip",
            checksum: "d06d963ebf7ce1779cb53ccba396af6549a9742fcaf7ceb492ca7dba843de827"
        )
    ],
    swiftLanguageVersions: [.v5]
)
