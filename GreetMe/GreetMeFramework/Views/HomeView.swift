//
//  HomeView.swift
//  GreetMeFramework
//
//  Created by Jason Allen on 5/2/2023.
//

import SwiftUI

public struct HomeView: View {
    
    public init() {}
    
    public var body: some View {
        VStack {
            Text("Hello World")
            .navigationTitle("Home")
            .accessibilityIdentifier("greetingTextField")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
