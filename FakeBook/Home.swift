//
//  Home.swift
//  FakeBook
//
//  Created by Asge Yohannes on 7/5/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import SwiftUI

struct Home : View {
    var model = HomePageModel()
    
    var body: some View {
        NavigationView {
            List {
                StoriesView(stories: model.stories)
                    .frame(height: 200)
                    .listRowInsets(EdgeInsets())
                
                ForEach(model.feeds) { feed in
                    
                    FeedView(feed: feed)
                    
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle(Text("FakeBook"))
            
        }
    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Home()
    }
}
#endif
