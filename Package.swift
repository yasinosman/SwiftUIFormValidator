// swift-tools-version:5.0
import PackageDescription

let buildTests = false

let package = Package(
        name: "FormValidator",
        products: [
            .library(name: "FormValidator", targets: ["FormValidator"])
        ],
        dependencies: [],
        targets: [
            .target(
                    name: "FormValidator",
                    dependencies: [],
                    path: "Sources",
                    exclude: ["Tests", "Examples"])
        ]
)