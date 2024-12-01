class MockCartServiceDelegate: CartServiceProtocol {
    var successMessages: [String] = []
    var failureMessages: [String] = []

    func cartActionSuccessful(msg: String) {
        successMessages.append(msg)
    }

    func cartActionFailed(msg: String) {
        failureMessages.append(msg)
    }

    func reset() {
        successMessages = []
        failureMessages = []
    }
}