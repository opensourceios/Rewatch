//
//  StoredEpisode.swift
//  Rewatch
//
//  Created by Romain Pouclet on 2015-11-04.
//  Copyright © 2015 Perfectly-Cooked. All rights reserved.
//

import Foundation
import CoreData


class StoredEpisode: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

}

extension StoredEpisode {
    static func episodeInContext(context: NSManagedObjectContext, mappedOnEpisode episode: Client.Episode?) -> StoredEpisode {
        let stored = NSEntityDescription.insertNewObjectForEntityForName("Episode", inManagedObjectContext: context) as! StoredEpisode
        
        if let episode = episode {
            stored.id = Int64(episode.id)
            stored.title = episode.title
            stored.season = Int64(episode.season)
            stored.episode = Int64(episode.episode)
            stored.summary = episode.summary
        }
        
        return stored
    }
}
