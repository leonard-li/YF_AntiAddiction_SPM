// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_AntiAddiction",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_AntiAddiction",
            targets: ["YF_AntiAddiction_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Utils_SPM.git", 
            from: "1.7.8"
        )
    ],
    targets: [
        .target(
            name: "YF_AntiAddiction_Target",
            dependencies: [
                "YF_AntiAddiction_Binary"
                .product(name: "YF_Core", package: "YF_Core_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_AntiAddiction_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/antiaddiction/2.6.7/YFAntiAddiction.xcframework.zip",
            checksum: "2fbbfd606013d82346c085d1c40d63a5539dca33f3b333c47e630a0a93f5591e"
        )
    ]
)