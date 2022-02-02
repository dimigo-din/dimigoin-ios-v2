//
//  dimigoinApp.swift
//  Shared
//
//  Created by 김아인 on 2021/12/23.
//

import SwiftUI

@main
struct dimigoinApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { url in
                    print(url)
                }
        }
    }
}
