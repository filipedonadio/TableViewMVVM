//
//  ProfileModel.swift
//  TableViewMVVM
//
//  Created by Filipe Donadio on 02/07/19.
//  Copyright © 2019 Filipe Donadio. All rights reserved.
//

import Foundation

public func getDataFromFile(_ filename: String) -> Data? {
    if let path = Bundle.main.path(forResource: filename, ofType: "json") {
        if let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            return data
        }
    }
    
    return nil
}

class ProfileData: Decodable {
    var data: Profile?
    
    init?(data: Data) {
        
        let decoder = JSONDecoder()
        
        do {
            let json = try decoder.decode(ProfileData.self, from: data)
            self.data = json.data
        } catch {
            print(error)
        }
    }
}

struct Profile: Decodable {
    var fullName: String
    var pictureUrl: String?
    var email: String?
    var about: String?
    var friends: [Friend]?
    var profileAttributes: [Attribute]?
}

struct Friend: Decodable {
    var name: String?
    var pictureUrl: String?
}

struct Attribute: Decodable {
    var key: String?
    var value: String?
}
