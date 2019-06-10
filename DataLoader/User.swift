//
//  User.swift
//  DataLoader
//
//  Created by Grant Butler on 6/9/19.
//  Copyright © 2019 Grant Butler. All rights reserved.
//

import Foundation
import SwiftUI

struct User: Decodable, Identifiable {
    let id: Int
    let name: String
    let username: String
}
