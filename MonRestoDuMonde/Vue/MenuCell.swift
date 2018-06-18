//
//  MenuCell.swift
//  MonRestoDuMonde
//
//  Created by MYD on 18/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    
    @IBOutlet weak var vue: UIView!
    @IBOutlet weak var nomDuMenu: UILabel!
    
    @IBOutlet weak var imageDuMenu: UIImageView!
    

    var menu: Menu!
    
    func miseEnPlace(menu: Menu) {
        self.menu = menu
        vue.layer.cornerRadius = 10             // Arrondir les bords
        vue.layer.borderColor = NOIR.cgColor        //couleur de la bordur
        vue.layer.borderWidth = 4               //épaisseur de la bordur
        
        imageDuMenu.image = self.menu.image         // ajout de l'image
        imageDuMenu.contentMode = .scaleAspectFill      //l'aspect de l'image
        imageDuMenu.clipsToBounds = true                // garde la taille(centrer) meme si sa dépase
        //imageDuMenu.layer.borderWidth = imageDuMenu.frame.width / 2
        imageDuMenu.layer.cornerRadius = imageDuMenu.frame.width / 2   //rendre l'image ronde
        imageDuMenu.layer.borderWidth = 2                       // épaisseur de la bordur
        imageDuMenu.layer.borderColor = GRIS_TRES_CLAIR.cgColor     //couleur de la bordur
    
        
        nomDuMenu.text = "Menu "+self.menu.pays    //ajout du nom du menu
        nomDuMenu.textColor = GRIS_TRES_FONCE
        nomDuMenu.font = FONT_DE_BASE           // type de font
        nomDuMenu.adjustsFontSizeToFitWidth = true //ajuste la taille
        nomDuMenu.textAlignment = .center           // centré le texte
        
    }
    
    
}
