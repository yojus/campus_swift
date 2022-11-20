//
//  User.swift
//  Campus_App
//
//  Created by 杉浦陽樹 on 2022/11/18.
//

import Foundation
import FirebaseCore

class User {
    
    var email: String
    var name: String
    var createdAt: MTLTimestamp
    var age: String
    var residence: String
    var money: String
    var school: String
    var subject: String
    var profileImageUrl: String
    var uid: String
    
    init(dic: [String: Any]) {
        self.email = dic["email"] as? String ?? ""
        self.name = dic["name"] as? String ?? ""
        self.createdAt = dic["createdAt"] as? MTLTimestamp ?? MTLTimestamp()
        self.age = dic["age"] as? String ?? ""
        self.residence = dic["residence"] as? String ?? ""
        self.money = dic["money"] as? String ?? ""
        self.school = dic["school"] as? String ?? ""
        self.subject = dic["subject"] as? String ?? ""
        self.profileImageUrl = dic["profileImageUrl"] as? String ?? ""
        self.uid = dic["uid"] as? String ?? ""
    }
}
