
//
//  Extensions.swift
//  MvvmDemoApp
//
//  Created by Ragul kts on 11/05/20.
//  Copyright © 2020 Ragulkts. All rights reserved.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }
}
