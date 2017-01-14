import PackageDescription

let openSSL: Package.Dependency

#if os(Linux)
    openSSL = .Package(url: "https://github.com/IBM-Swift/OpenSSL.git", majorVersion: 0)
#else
	openSSL = .Package(url: "https://github.com/IBM-Swift/OpenSSL-OSX.git", majorVersion: 0)
#endif

let package = Package(
    name: "Cryptor",
	dependencies: [
		openSSL
	]
)
