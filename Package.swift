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
            url: "https://repo.situm.com:443/artifactory/libs-release-local/iOS/SitumSDK/3.42.4/SitumSDK.xcframework.noprotobuf.zip",
            checksum: "38bb4c5ffc77a6b149a473bc4283f428a9403de372120fa22682165e901176a9"
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
