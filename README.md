# libjwt-swift

Swift modulemaps for [libjwt](https://github.com/benmcollins/libjwt).

## Installation

Install `libjwt` via a Package Manager.

```
$ brew install libjwt
```

```
$ apt-get install libjwt
```

## Usage

Add this dependencies to your `Package.swift`

```swift
let package = Package(
    name: "YourProject",
    products: [
        .library(
            name: "YourProject",
            targets: ["YourProject"]),
    ],
    dependencies: [
        .package(url: "https://github.com/giginet/libjwt-swift.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "YourProject",
            dependencies: ["JWT"]),
    ]
)
```

```swift
import JWT

func encode(_ string: String) -> String? {
    let object = UnsafeMutablePointer<OpaquePointer?>.allocate(capacity: MemoryLayout<OpaquePointer>.size)
    jwt_new(object)
    defer { jwt_free(object.pointee) }

    ...

    return encodedString
}
```

See detail for [documentation for libjwt](http://benmcollins.github.io/libjwt/).
