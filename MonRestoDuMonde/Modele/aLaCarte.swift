//
//  aLaCarte.swift
//  MonRestoDuMonde
//
//  Created by MYD on 19/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit

class ALaCarte {
    
    private var _type: Type
    private var _plats: [Plat]
    
    var type: Type {
        return _type
    }
    
    var plats: [Plat] {
        return _plats
    }
    
    init(type: Type) {
        self._type = type
        self._plats = [Plat]()
    }
    
}
