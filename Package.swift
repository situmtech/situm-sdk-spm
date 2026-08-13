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
            url: "https://repo.situm.com:443/artifactory/libs-release-local/iOS/SitumSDK/3.41.0/SitumSDK.xcframework.noprotobuf.zip",
            checksum: "2cf23780f11085cc1e67522e95ce3f7699b3c8fc90d6ac8bd5b91b5fc85df207"
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
