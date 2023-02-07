//
//  LoginView.swift
//  GreetMeFramework
//
//  Created by Jason Allen on 5/2/2023.
//

import SwiftUI

public struct LoginView: View {
    
    @EnvironmentObject private var loginVM: LoginViewModel
    
    public init() {}
    
    var errorMessage: String {
        switch loginVM.loginStatus {
        case .denied:
            return "Invalid credentials"
        default:
            return ""
        }
    }
    
    public var body: some View {
        NavigationView {
            
            VStack {
                Form {
                    
                    TextField("User name", text: $loginVM.userName)
                        .accessibilityIdentifier("usernameTextField")
                    
                    TextField("Password", text: $loginVM.password)
                        .accessibilityIdentifier("passwordTextField")
                    
                    HStack {
                        Spacer()
                        Button {
                            Task {
                                await loginVM.login()
                            }
                        } label: {
                            Text("Login")
                                .accessibilityIdentifier("loginButton")
                        }
                        Spacer()
                    }
                    
                    Text(errorMessage)
                        .accessibilityIdentifier("messageText")
                }
                
                NavigationLink(isActive: .constant(loginVM.loginStatus == LoginStatus.authenticated)) {
                    HomeView()
                } label: {
                    EmptyView()
                }
                
                
            }
            .navigationTitle("Login")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(LoginViewModel(service: WebAuthService()))
    }
}
