// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "IVSBroadcaster",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "IVSBroadcaster",
            targets: ["IVSBroadcaster"]
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
            name: "IVSBroadcaster",
            dependencies: ["AmazonIVSChatMessaging"] // Ensuring the target depends on the binary target
        ),
        .testTarget(
            name: "IVSBroadcasterTests",
            dependencies: ["IVSBroadcaster"]
        ),
    ]
)
