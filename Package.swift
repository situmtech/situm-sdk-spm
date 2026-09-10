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
            url: "https://repo.situm.com:443/artifactory/libs-release-local/iOS/SitumSDK/3.41.2/SitumSDK.xcframework.noprotobuf.zip",
            checksum: "156b4f8b97878cd70ca516b45ba295a6f461c2a867cd04e8e5ec7b018a2943c5"
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
