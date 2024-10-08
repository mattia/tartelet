import Foundation

public protocol VirtualMachine {
    var name: String { get }
    var canStart: Bool { get }
    func start() async throws
    func clone(named newName: String) async throws -> VirtualMachine
    func delete() async throws
    func getIPAddress() async throws -> String
}
