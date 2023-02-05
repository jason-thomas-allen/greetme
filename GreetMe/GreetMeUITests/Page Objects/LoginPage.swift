//
//  LoginPage.swift
//  GreetMeUITests
//
//  Created by Jason Allen on 5/2/2023.
//

import Foundation
import XCTest

class LoginPage {
    
    private var app: XCUIApplication
    private var usernameTextField: XCUIElement
    private var passwordTextField: XCUIElement
    
    init(app: XCUIApplication) {
        self.app = app
        self.usernameTextField = app.textFields["usernameTextField"]
        self.passwordTextField = app.textFields["passwordTextField"]
    }
    
    var userName: String {
        set(newValue) {
            usernameTextField.tap()
            usernameTextField.typeText(newValue)
        }
        get {
            return usernameTextField.value as! String
        }
    }
    
    var password: String {
        set(newValue) {
            passwordTextField.tap()
            passwordTextField.typeText(newValue)
        }
        get {
            return passwordTextField.value as! String
        }
    }
    
    func login() {
        app.buttons["loginButton"].tap()
    }
}

