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
    
    
    static var examplePost4: PostStruct {
        PostStruct(
            username: "CodeWizard",
            originalUpvotes: 1200,
            message: "Debugging code feels like solving puzzles, where every bug fixed is a victory. The thrill of unraveling complex issues drives us forward, shaping us into better programmers.",
            messageTitle: "Bug Hunting",
            commentsNum: 55,
            daysAgo: 2
        )
    }
    
    static var examplePost5: PostStruct {
        PostStruct(
            username: "DevGuru",
            originalUpvotes: 5000,
            message: "In the world of coding, bugs are like shadows. They follow, they hide, yet they teach us the most profound lessons. Embrace the bugs, for they shape our mastery.",
            messageTitle: "Lessons in Bugs",
            commentsNum: 320,
            daysAgo: 6
        )
    }
    
    static var examplePost6: PostStruct {
        PostStruct(
            username: "CodeMaster",
            originalUpvotes: 876,
            message: "Debugging isn't just fixing errors; it's a journey of discovery. Every bug unearthed reveals the intricate workings of code, fostering a deeper understanding.",
            messageTitle: "Unraveling Code",
            commentsNum: 42,
            daysAgo: 4
        )
    }
    
    static var examplePost7: PostStruct {
        PostStruct(
            username: "BugHunter",
            originalUpvotes: 1500,
            message: "The quest for a bug-free codebase is a never-ending adventure. Each bug squashed brings us closer to the nirvana of seamless software.",
            messageTitle: "The Bugless Dream",
            commentsNum: 99,
            daysAgo: 7
        )
    }
    
    static var examplePost8: PostStruct {
        PostStruct(
            username: "CodeArtist",
            originalUpvotes: 750,
            message: "Behind every great program lies a series of bugs conquered. Embrace the debugging process; it's where art meets logic.",
            messageTitle: "The Art of Debugging",
            commentsNum: 28,
            daysAgo: 3
        )
    }
    
    static var examplePost9: PostStruct {
        PostStruct(
            username: "TechExplorer",
            originalUpvotes: 2000,
            message: "Navigating through code bugs is akin to exploring uncharted territories. The journey might be challenging, but the discoveries are invaluable.",
            messageTitle: "Discovering Bugs",
            commentsNum: 150,
            daysAgo: 5
        )
    }
    
    static var examplePost10: PostStruct {
        PostStruct(
            username: "DebugChampion",
            originalUpvotes: 300,
            message: "A bug-free code is a myth, but mastering debugging turns us into champions. Embrace the bugs; they are stepping stones to greatness.",
            messageTitle: "Rise of the Debuggers",
            commentsNum: 17,
            daysAgo: 1
        )
    }
    
    static var examplePost11: PostStruct {
        PostStruct(
            username: "CodeExplorer",
            originalUpvotes: 2800,
            message: "Exploring the code's depths reveals bugs waiting to be discovered. Each bug fix is a triumph, fueling our exploration into the unknown.",
            messageTitle: "Journey into Code",
            commentsNum: 200,
            daysAgo: 6
        )
    }
}
