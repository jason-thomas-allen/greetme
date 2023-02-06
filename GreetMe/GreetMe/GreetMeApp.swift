//
//  GreetMeApp.swift
//  GreetMe
//
//  Created by Jason Allen on 4/2/2023.
//

import SwiftUI
import GreetMeFramework

@main
struct GreetMeApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView().environmentObject(LoginViewModel(service: WebAuthService()))
        }
    }
}
