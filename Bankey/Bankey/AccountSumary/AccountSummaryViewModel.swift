//
//  Untitled.swift
//  Bankey
//
//  Created by Nestor Leon mendoza on 04/05/26.
//
import Foundation
import UIKit

class AccountSummaryViewModel {
    
    enum AccountType: String {
        case Banking
        case CreditCard
        case Investment
    }
    
    let accountType: AccountType?
    let accountName: String?
    
    init(accountType: AccountType, accountName: String) {
        self.accountType = accountType
        self.accountName = accountName
    }
}
