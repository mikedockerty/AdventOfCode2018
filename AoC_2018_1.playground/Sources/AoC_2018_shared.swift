import Foundation

public func input(filename: String) -> String {
    do {
        guard let fileUrl = Bundle.main.url(forResource: filename, withExtension: "txt") else {
            print("Couldn't open '\(filename)'")
            fatalError() }
        let text = try String(contentsOf: fileUrl, encoding: String.Encoding.utf8)
        return text
    } catch {
        print(error)
        return ""
    }
}
