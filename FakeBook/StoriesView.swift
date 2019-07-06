//
//  StoriesView.swift
//  FakeBook
//
//  Created by Asge Yohannes on 7/5/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import SwiftUI

struct StoriesView : View {
    var stories: [Story]
    var body: some View {
        ScrollView {
            HStack(spacing: 10) {
                ForEach(stories) { story in
                    CardView(story: story)
                    
                }
            }
            .padding([.leading, .trailing],5)
        }
    }
}

#if DEBUG
struct StoriesView_Previews : PreviewProvider {
    static var previews: some View {
        StoriesView(stories: HomePageModel().stories)
    }
}
#endif
