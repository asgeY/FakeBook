//
//  CardView.swift
//  FakeBook
//
//  Created by Asge Yohannes on 7/5/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import SwiftUI

struct CardView : View {
    var story: Story
    var body: some View {
        ZStack {
            BackGroundView(imageName: story.imageName)
            HStack {
                VStack(alignment: .leading) {
                    ProfileView(profileImage: story.user.imageName)
                    Spacer()
                    Text(story.user.userName)
                        .font(.system(size: 22))
                        .color(.white)
                    
                }
                .padding()
                Spacer()
            }
            .frame(width: 130)
        }
        .frame(width: 110, height: 200)
            .clipped()
            .cornerRadius(20)
            .shadow(radius: 5)
    }
}

#if DEBUG
struct CardView_Previews : PreviewProvider {
    static var previews: some View {
        CardView(story: HomePageModel().stories[0])
    }
}
#endif
