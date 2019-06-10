//
//  ContentView.swift
//  DataLoader
//
//  Created by Grant Butler on 6/9/19.
//  Copyright © 2019 Grant Butler. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            DataLoader(url: URL(string: "https://jsonplaceholder.typicode.com/users")!, model: [User].self) { users in
                List(users) { user in
                    UserRow(user: user)
                }
            }
            .navigationBarTitle(Text("Users"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
