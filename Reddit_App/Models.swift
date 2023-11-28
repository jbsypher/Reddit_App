//
//  Models.swift
//  Reddit_App
//
//  Created by Jonathan Barta on 11/28/23.
//

import Foundation

struct PostStruct {
    var username: String
    var originalUpvotes: Int
    var message: String
    var messageTitle: String
    var commentsNum: Int
    var daysAgo: Int
    
    static var examplePost1: PostStruct {
        PostStruct(
            username: "AlecIsRad",
            originalUpvotes: 423,
            message: "In the heart of code complexities, a labyrinth of bugs emerged. With each line inspected and every function scrutinized, the elusive errors persisted. Yet, amidst the frustration, determination fuels our pursuit. The quest to unravel these elusive bugs continues, for within these challenges lie opportunities to refine our craft and triumph over the relentless code gremlins.",
            messageTitle: "First Post",
            commentsNum: 25,
            daysAgo: 3
        )
    }
    
    static var examplePost2: PostStruct {
        PostStruct(
            username: "SamIsCool",
            originalUpvotes: 901,
            message: "As the lines of code scrolled by, so did the intricate web of bugs entangling our progress. Debugging became an intricate dance, a maze of logic where solutions seemed just out of reach. Yet, with each bug fixed, a sense of triumph sparks hope. For every bug conquered, our understanding deepens, paving the way for a stronger, more resilient codebase.",
            messageTitle: "Cool Stuff",
            commentsNum: 87,
            daysAgo: 1
        )
    }
    
    static var examplePost3: PostStruct {
        PostStruct(
            username: "KushIsAwesome",
            originalUpvotes: 29834,
            message: "In the digital wilderness, bugs lurked like hidden traps. Every keystroke held the potential to unveil or obscure these elusive errors. The pursuit of perfection in code feels like chasing shadows at times. However, in this intricate dance of debugging, we find not only bugs but also newfound knowledge. With patience and resilience, we strive to untangle these knots and pave the way for smoother programming journeys.",
            messageTitle: "Awesome Share",
            commentsNum: 129,
            daysAgo: 5
        )
    }
}
