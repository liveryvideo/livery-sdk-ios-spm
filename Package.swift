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
            url: "https://sdk-ios-binaries.livery.live/3.3.2-beta.2/Livery-spm-3.3.2-beta.2.zip",
            checksum: "b4a386ce7c01b43c1c3b33b5f2a538b478ec7d35d75daf074e0f6de2cfb6e794"
        )
    ],
    swiftLanguageVersions: [.v5]
)
