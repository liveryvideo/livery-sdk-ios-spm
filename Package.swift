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
            url: "https://sdk-ios-binaries.livery.live/3.3.4-beta.2/Livery-spm-3.3.4-beta.2.zip",
            checksum: "8c0b7e016b2c6c0c976786c0b6637887843eb83f9fc2bcd628b1687cae7e8a41"
        )
    ],
    swiftLanguageVersions: [.v5]
)
