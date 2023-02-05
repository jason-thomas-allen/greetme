//
//  GreetMeUITests.swift
//  GreetMeUITests
//
//  Created by Jason Allen on 4/2/2023.
//

import XCTest

final class given_user_is_on_login_page: XCTestCase {
    
    private var app: XCUIApplication!
            
    override func setUp() {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
    }
    
    func test_when_user_enters_correct_username_and_password_then_user_is_directed_to_the_home_page() {
        
        let loginPage = LoginPage(app: app)
        
        loginPage.userName = "43906621"
        loginPage.password = "Password"
        
        loginPage.login()
        
        let homePageTitle = HomePage(app: app).title
        XCTAssertTrue(homePageTitle.waitForExistence(timeout: 2.0))
    }
}
