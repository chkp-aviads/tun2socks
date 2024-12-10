// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "tun2socks",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "tun2socks",
            targets: ["tun2socks"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/chkp-aviads/swift-nio.git", branch: "main"),
        .package(url: "https://github.com/chkp-aviads/swift-nio-transport-services.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "tun2socks",
            dependencies: [
                .product(name: "NIO", package: "swift-nio"),
                .product(name: "NIOTransportServices", package: "swift-nio-transport-services"),
                .target(name: "lwip")
            ]
        ),
        .target(
            name: "lwip"
        ),
    ]
)
