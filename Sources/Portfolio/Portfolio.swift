@main
public struct Portfolio {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(Portfolio().text)
    }
}
