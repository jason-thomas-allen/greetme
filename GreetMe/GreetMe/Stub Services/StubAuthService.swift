//
//  StubAuthService.swift
//  GreetMe
//
//  Created by Jason Allen on 6/2/2023.
//

import Foundation
import GreetMeFramework

class StubAuthService: AuthService {
    
    func loginAsync(username: String, password: String) async throws {
        if username == "43906621" && password == "Password" {
        } else {
            throw(AuthError.notAuthenticated)
        }
    }
}
