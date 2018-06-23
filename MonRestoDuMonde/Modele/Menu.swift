//
//  Menu.swift
//  MonRestoDuMonde
//
//  Created by MYD on 18/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit


class Menu {
      // Les varaibles sécurisé
    private var _pays: String
    private var _image: UIImage
    private var _plats: [Plat]
     // Les accésseurs
    
    var pays: String {
        return _pays
    }
    
    var image: UIImage {
        return _image
    }
    
    var plats: [Plat] {
        return _plats
    }
    
    init(pays: String, image: UIImage) {  // initialisation avec parametre
        self._pays = pays
        self._image = image
        self._plats = LesPlats.obtenir.ajouterPlatAuMenu(pays: self._pays)
    }
    
}

