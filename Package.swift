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
            url: "https://sdk-ios-binaries.livery.live/3.4.1-beta.1/Livery-spm-3.4.1-beta.1.zip",
            checksum: "25baf12fb60e7ccb2e273e2806ed649fc46f3f395a6e3cf11fc22af79f534e07"
        )
    ],
    swiftLanguageVersions: [.v5]
)
