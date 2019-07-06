//
//  Model.swift
//  FakeBook
//
//  Created by Asge Yohannes on 7/5/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import Foundation
import SwiftUI

struct Story: Hashable, Identifiable {
    var id = UUID()
    var imageName: String
    var user: User
}

struct User: Hashable {
    var imageName: String
    var userName: String
}

struct Feed: Identifiable {
    var id = UUID()
    var imageName: String
    var text: String
    var user: User
}

struct HomePageModel {
    var stories: [Story] = {
        
        var user = User(imageName: "potrait", userName: "Lexi")
        
        return [Story(imageName: "stories1", user: user),
                Story(imageName: "stories2", user: user),
                Story(imageName: "stories3", user: user),
                Story(imageName: "stories4", user: user),
                Story(imageName: "stories5", user: user)
            
        ]
        
    }()
    
    var feeds: [Feed] = {
         var user = User(imageName: "potrait", userName: "Lexi")
        
        return [Feed(imageName: "feed6", text: "Life is beautiful", user: user),
                Feed(imageName: "feed7", text: "You only live once", user: user),
                Feed(imageName: "feed8", text: "Stop and embrace the moment", user: user),
                Feed(imageName: "feed9", text: "I have to take this shot", user: user),
                Feed(imageName: "feed10", text: "It has been fun travel!", user: user),
                
        ]
    }()
}
