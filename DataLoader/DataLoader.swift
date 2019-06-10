//
//  DataLoader.swift
//  DataLoader
//
//  Created by Grant Butler on 6/9/19.
//  Copyright © 2019 Grant Butler. All rights reserved.
//

import SwiftUI
import Combine
import Foundation

struct DataLoader<Content, Model> : View where Content : View, Model : Decodable {
    
    enum RequestState {
        case loading
        case loaded(Model)
    }
    
    let url: URL
    let content: (Model) -> Content
    @State private var state = RequestState.loading
    
    init(url: URL, model: Model.Type, @ViewBuilder content: @escaping (Model) -> Content) {
        self.url = url
        self.content = content
    }

    var body: some View {
        switch state {
        case .loading:
            return AnyView(ActivityIndicator().onAppear {
                URLSession.shared.dataTask(with: self.url, completionHandler: { data, _, _ in
                    if let data = data {
                        let decoder = JSONDecoder()
                        if let model = try? decoder.decode(Model.self, from: data) {
                            // Making a purposeful delay here to make the indicator show longer for the sake of the demo.
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                self.state = RequestState.loaded(model)
                            }
                        }
                    }
                }).resume()
            })

        case let .loaded(model):
            return AnyView(content(model))
        }
    }

}
