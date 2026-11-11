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
            url: "https://github.com/leonard-li/YF_Core_SPM.git", 
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
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/antiaddiction/2.6.8/YFAntiAddiction.xcframework.zip",
            checksum: "e39c9d2c4afb57d8f74b14701d6a84e8a4b01653743baeab8eeac90335bb2ef3"
        )
    ]
)