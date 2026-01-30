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
            url: "https://sdk-ios-binaries.livery.live/3.3.4-beta.1/Livery-spm-3.3.4-beta.1.zip",
            checksum: "1ccaf945077475361e9ba648bfdee5418d072f01e3223321ddc567aa5278d47a"
        )
    ],
    swiftLanguageVersions: [.v5]
)
