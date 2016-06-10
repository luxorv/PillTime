//
//  EncryptService.swift
//  PillTime
//
//  Created by Victor Manuel Polanco on 6/9/16.
//  Copyright © 2016 Victor Manuel Polanco. All rights reserved.
//

import Foundation
import CryptoSwift

class EncryptService {
    
    func encrypt(data: String) -> String {
        
        return "md5" + data
    }
}