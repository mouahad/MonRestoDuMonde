//
//  Degrade.swift
//  MonRestoDuMonde
//
//  Created by MYD on 18/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit


class Degrade: CAGradientLayer {                  // Type de class pour les "Dégrader de couleur"
    
    override init(layer: Any) {                                 //?????
        super.init(layer: layer)
        miseEnPlace()
    }
    
    override init() {                                           //???????
        super.init()
        miseEnPlace()
    }
    
    required init?(coder aDecoder: NSCoder) {                   //????????
        super.init(coder: aDecoder)
        miseEnPlace()
    }
    
    func miseEnPlace() {
        frame = UIScreen.main.bounds                            //
        colors = [NOIR.cgColor, GRIS_TRES_CLAIR.cgColor]        // Les couleurs du dégrader
        startPoint = CGPoint(x: 0, y: 0)                        // Le point de départ du dégrader
        endPoint = CGPoint(x: 1, y: 1)                          // Le point d'arriver du dégrader
        locations = [0,1]                                       //
    }
}
