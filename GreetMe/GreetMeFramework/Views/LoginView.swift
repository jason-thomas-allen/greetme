//
//  LoginView.swift
//  GreetMeFramework
//
//  Created by Jason Allen on 5/2/2023.
//

import SwiftUI
    
public struct LoginView: View {
    
    var errorMessage: String = ""
    
    public init() {}
    
    public var body: some View {
        NavigationView {
            
            VStack {
                Form {

                    TextField("User name", text: .init(
                        get: { "" },
                        set: { $0 }))
                        .accessibilityIdentifier("usernameTextField")
                    
                    TextField("Password", text: .init(
                        get: { "" },
                        set: { $0 }))
                        .accessibilityIdentifier("passwordTextField")
                                        
                    HStack {
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Login")
                                .accessibilityIdentifier("loginButton")
                        }
                        Spacer()
                    }
                }
                
                NavigationLink(isActive: .constant(false)) {
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
        LoginView()
    }
}
