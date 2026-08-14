// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "LabirintsGoogleAds",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "LabirintsGoogleAds",
            targets: ["LabirintsGoogleAds"]
        )
    ],
    targets: [
        .target(
            name: "LabirintsGoogleAds"
        )
    ]
)
