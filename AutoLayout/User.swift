//
//  User.swift
//  AutoLayout
//
//  Created by Duke Yao on 2015/6/11.
//  Copyright (c) 2015年 Duke Yao Company. All rights reserved.
//

import Foundation

struct User {
    let name: String
    let company: String
    let login: String
    let password: String
    
    static func login(login: String, password: String) -> User? {
        if let user = database[login] {
            if user.password == password {
                return user
            }
        }
        return nil
    }
}