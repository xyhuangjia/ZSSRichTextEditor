// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ZSSRichTextEditor",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "ZSSRichTextEditor", targets: ["ZSSRichTextEditor"])
    ],
    targets: [
        .target(
            name: "ZSSRichTextEditor",
            path: "Sources/ZSSRichTextEditor",
            resources: [
                .process("Resources")
            ],
            publicHeadersPath: "include"
        )
    ]
)
