//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 18.10.2023.
//

import Foundation

final class UserManager: ObservableObject {
    @Published var isLoggedIn = false
    var name = ""
    
    func saveUserData() {
        UserDefaults.standard.set(isLoggedIn, forKey: "isLoggedIn")
        UserDefaults.standard.set(name, forKey: "username")
    }
    
    func loadUserData() {
        isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
        name = UserDefaults.standard.string(forKey: "username") ?? ""
    }
    
    func removeUserData() {
        UserDefaults.standard.removeObject(forKey: "isLoggedIn")
        UserDefaults.standard.removeObject(forKey: "username")
    }
}
