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
            url: "https://sdk-ios-binaries.livery.live/3.3.6+37f9a76/Livery-spm-3.3.6+37f9a76.zip",
            checksum: "5e8c1b6bbe19d4b5fa22059d7130e849eaf0f453a0ce486d1b8d455afb55daf0"
        )
    ],
    swiftLanguageVersions: [.v5]
)
