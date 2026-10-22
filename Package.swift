// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SitumSDK",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "SitumSDK",
            targets: ["SitumSDKTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/ZipArchive/ZipArchive.git", from: "2.6.0"),
    ],
    targets: [
        .binaryTarget(
            name: "SitumSDK",
            url: "https://repo.situm.com:443/artifactory/libs-release-local/iOS/SitumSDK/3.42.1/SitumSDK.xcframework.noprotobuf.zip",
            checksum: "8433ac67578b2c4241aec9933d251b80ca142d21a92f17e49dfb787d048c2858"
        ),
        .target(
              name: "SitumSDKTarget",
              dependencies: [
                "SitumSDK",
                .product(name: "ZipArchive", package: "ZipArchive"),
              ],
              path: "Situm",
              sources: ["SITEmpty.m"],
              publicHeadersPath: "Headers",
              linkerSettings: [
                .linkedLibrary("c++"),
                .linkedLibrary("z"),
                .linkedLibrary("iconv"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("Security"),
              ]
        ),
    ]
)
