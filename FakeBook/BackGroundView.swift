//
//  BackGroundView.swift
//  FakeBook
//
//  Created by Asge Yohannes on 7/5/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import SwiftUI

struct BackGroundView : View {
    var imageName: String
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0),Color.black.opacity(0.7)]), startPoint: .center, endPoint: .bottom),cornerRadius: 0)
            
           
        }
    }
}

#if DEBUG
struct BackGroundView_Previews : PreviewProvider {
    static var previews: some View {
        BackGroundView(imageName: "Texas")
    }
}
#endif
