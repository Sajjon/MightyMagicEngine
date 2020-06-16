//
//  File.swift
//  
//
//  Created by Alexander Cyon on 2020-06-08.
//

import Foundation

internal func warningDummyLogic<DummyValue>(_ dummy: DummyValue, _ function: String = #function) -> DummyValue {
    print("⚠️ DUMMY LOGIC USED in: \(function)")
    return dummy
}

var implementMe: Never {
    fatalError("Implement me!")
}

internal func incorrectImplementation(message: String? = nil) -> Never {
    let extraMessage = message.map { ", \($0)" } ?? ""
    fatalError("Incorrect implementation\(extraMessage)")
}

internal func incorrectImplementation(shouldAlwaysBeAbleTo action: String) -> Never {
    incorrectImplementation(message: "should always be able to \(action)")
}
