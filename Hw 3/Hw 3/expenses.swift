//
//  expenses.swift
//  Hw 3
//
//  Created by Max will on 8/21/22.
//

import Foundation

struct expenses: Identifiable{
    let id = UUID()
    var Store: String
    var Paid: Double
    var profileImage: String
    var purchases: String
    
}
var expensesArray = [
    expenses(Store: "Nike", Paid: 39.9, profileImage: "nike", purchases: "Shoes"),
    expenses(Store: "Redcream", Paid: 10.0, profileImage: "Redcream", purchases: "CheeseCake"),
    expenses(Store: "Apple", Paid: 649.9, profileImage: "apple", purchases: "Macbook pro"),
    expenses(Store: "Polo", Paid: 19.9, profileImage: "polo", purchases: "Hoodie")
]

