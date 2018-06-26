//
//  PlatVue.swift
//  MonRestoDuMonde
//
//  Created by MYD on 26/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit

class PlatVue: UIView {

    var typeDePlat: UILabel?
    var imageDuplat: UIImageView?
    var descriptionDuplat : UILabel?
    
    override init(frame: CGRect) {                  // ????
        super.init(frame : frame)
    }
    
    required init?(coder aDecoder: NSCoder) {       //  ????
        super.init(coder: aDecoder)
    }

    func miseEnPlace(plat: Plat) {
        typeDePlat = UILabel(frame: CGRect(x: 20, y: 0, width: frame.width - 40, height: 50))
        typeDePlat?.text = convertirTypeEnPlat(type: plat.type)
        typeDePlat?.textAlignment = .left
        typeDePlat?.font = FONT_DE_BASE
        typeDePlat?.textColor = GRIS_TRES_CLAIR
        guard typeDePlat != nil else {return}
        addSubview(typeDePlat!)
        var maxY = typeDePlat!.frame.maxY
        
        imageDuplat = UIImageView(frame: CGRect(x: 0, y: maxY, width: frame.width, height: 200))
        imageDuplat?.image = plat.image
        imageDuplat?.contentMode = .scaleToFill
        imageDuplat?.clipsToBounds = true
        guard imageDuplat != nil else {return}
        addSubview(imageDuplat!)
        maxY = imageDuplat!.frame.maxY
        
        descriptionDuplat = UILabel(frame: CGRect(x: 20, y: maxY, width: frame.width - 40, height: 100))
        descriptionDuplat?.numberOfLines = 0
        descriptionDuplat?.text = plat.desc
        descriptionDuplat?.font = FONT_DE_BASE
        descriptionDuplat?.textColor = GRIS_TRES_CLAIR
        descriptionDuplat?.textAlignment = .center
        guard descriptionDuplat != nil else {return}
        addSubview(descriptionDuplat!)
        
        
    }
    
    func convertirTypeEnPlat(type: Type) -> String {
        switch type {
        case .entree: return "Entrée"
        case .platPrincipal: return "Plat principal"
        case .dessert: return "Dessert"
        
        }
    }
    
    
}







