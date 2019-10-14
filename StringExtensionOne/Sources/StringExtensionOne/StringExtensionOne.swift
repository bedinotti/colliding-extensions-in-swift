public struct StringExtensionOne {
    public var text = "Hello, World!"
    public init() {}
}

public extension String {
    var collision: String {
        return "String Extension One"
    }
}
