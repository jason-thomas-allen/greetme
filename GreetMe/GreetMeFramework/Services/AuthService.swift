//
//  AuthService.swift
//  GreetMeFramework
//
//  Created by Jason Allen on 4/2/2023.
//

import Foundation

public protocol AuthService {
    func loginAsync(username: String, password: String) async throws -> Void
}
