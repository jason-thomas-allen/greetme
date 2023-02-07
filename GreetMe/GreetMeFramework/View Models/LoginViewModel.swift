//
//  LoginViewModel.swift
//  GreetMeFramework
//
//  Created by Jason Allen on 6/2/2023.
//

import Foundation

enum LoginStatus {
    case none
    case authenticated
    case denied
    case validationFailed
}

@MainActor
public class LoginViewModel: ObservableObject {
    
    @Published var userName: String = ""
    @Published var password: String = ""
    @Published var loginStatus: LoginStatus = .none
    
    private var service: AuthService
    
    public init(service: AuthService) {
        self.service = service
    }
    
    func login() async {
        
        if userName.isEmpty || password.isEmpty {
            self.loginStatus = .validationFailed
            return
        }
        
        do {
            try await service.loginAsync(username: userName, password: password)
            loginStatus = .authenticated
        } catch {
            loginStatus = .denied
        }
    }
}
