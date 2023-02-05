//
//  HomePage.swift
//  GreetMeUITests
//
//  Created by Jason Allen on 5/2/2023.
//

import Foundation
import XCTest

class HomePage {
    
    private var app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }

    var title: XCUIElement {
        app.staticTexts["Home"]
    }
}
