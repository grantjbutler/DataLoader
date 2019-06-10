//
//  ActivityIndicator.swift
//  DataLoader
//
//  Created by Grant Butler on 6/9/19.
//  Copyright © 2019 Grant Butler. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.startAnimating()
        return indicator
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
    
    }
    
    typealias UIViewType = UIActivityIndicatorView
    
}

#if DEBUG
struct ActivityIndicator_Previews : PreviewProvider {
    static var previews: some View {
        ActivityIndicator()
    }
}
#endif
