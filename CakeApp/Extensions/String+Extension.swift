//
//  UIStoryBoard+Extension.swift
//  CarRental
//
//  Created by 2020M04 on 23/12/21.
//

import Foundation
import UIKit



extension String {
    
    func trim() -> String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
}
