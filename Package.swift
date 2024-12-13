// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "ivs_broadcaster",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ivs_broadcaster",
            targets: ["ivs_broadcaster"]
        ),
    ],
    targets: [
        // The binary target should be a separate item.
        .binaryTarget(
            name: "AmazonIVSChatMessaging",
            url: "https://ivschat.live-video.net/1.0.0/AmazonIVSChatMessaging.xcframework.zip",
            checksum: "c92ac3adc061a3fa5558311f8d99fa9b9dba7a00b3482a4f4ac90b2ff4f65b66"
        ),
        .target(
            name: "ivs_broadcaster",
            dependencies: ["AmazonIVSChatMessaging"] // Ensuring the target depends on the binary target
        ),
        .testTarget(
            name: "ivs_broadcasterTests",
            dependencies: ["ivs_broadcaster"]
        ),
    ]
)
