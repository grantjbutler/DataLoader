//
//  UserRow.swift
//  DataLoader
//
//  Created by Grant Butler on 6/9/19.
//  Copyright © 2019 Grant Butler. All rights reserved.
//

import SwiftUI

struct UserRow : View {
    var user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(user.name)
            Text(user.username)
        }
    }
}

#if DEBUG
struct UserRow_Previews : PreviewProvider {
    static var previews: some View {
        UserRow(user: User(id: 1, name: "Grant Butler", username: "grantjbutler"))
    }
}
#endif
