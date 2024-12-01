//
//  TestModelContext.swift
//  Carry1st
//
//  Created by Michael Ossai on 01/12/2024.
//


import Foundation

final class TestModelContext {
    private var storage: [String: [Any]] = [:]

    func insert<T>(_ object: T) where T: Identifiable {
        let key = String(describing: T.self)
        if storage[key] == nil {
            storage[key] = []
        }
        storage[key]?.append(object)
    }

    func fetch<T>(_ descriptor: FetchDescriptor<T>) throws -> [T] where T: Identifiable {
        let key = String(describing: T.self)
        guard let items = storage[key] as? [T] else {
            return []
        }

        if let predicate = descriptor.predicate {
            return items.filter(predicate.matches)
        }
        return items
    }

    func delete<T>(_ object: T) where T: Identifiable {
        let key = String(describing: T.self)
        if var items = storage[key] as? [T] {
            items.removeAll { $0.id == object.id }
            storage[key] = items
        }
    }

    func save() throws {
        // Simulate saving (no-op for in-memory context)
    }
}

extension TestModelContext {
    struct FetchDescriptor<T> where T: Identifiable {
        let predicate: Predicate<T>?
    }

    struct Predicate<T> {
        let matches: (T) -> Bool
    }
}
