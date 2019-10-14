public struct StringExtensionTwo {
    public var text = "Hello, World!"
    public init() {}
}

public extension String {
    var collision: String {
        return "String Extension Two"
    }
}
