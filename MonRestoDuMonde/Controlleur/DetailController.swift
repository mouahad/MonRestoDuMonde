//
//  DetailController.swift
//  MonRestoDuMonde
//
//  Created by MYD on 23/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    @IBOutlet weak var scroll: UIScrollView!
    
    var menu: Menu?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.layer.addSublayer(Degrade())          // ajouter du "dégrader créée" en background
        view.bringSubview(toFront: scroll)  // la "vue" scroll passe en vue prioritaire sue le "layer"
        
        guard menu != nil else {return}   //vérifie que "menu" ne soit pas vide/nul ou nil et return si c'est le cas
        miseEnPlace(menu: menu!)
        
    }

    func miseEnPlace (menu: Menu) {
        //print ("Ca marche on a le menu: \(menu.pays)")
        let imageDumenu = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 250))
        imageDumenu.image = menu.image
        imageDumenu.contentMode = .scaleAspectFill
        imageDumenu.clipsToBounds = true
        scroll.addSubview(imageDumenu)
        var maxY = imageDumenu.frame.maxY
        
        
        let nomDumenu = UILabel(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 100))
        nomDumenu.text = "Menu " + menu.pays
        nomDumenu.font = FONT_TITRE
        nomDumenu.textColor = .blue
        nomDumenu.adjustsFontSizeToFitWidth = true
        nomDumenu.textAlignment = .center
        scroll.addSubview(nomDumenu)
        maxY = nomDumenu.frame.maxY
        
        for plat in menu.plats {
            let vue = PlatVue(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 375))
            vue.miseEnPlace(plat: plat)
            scroll.addSubview(vue)
            maxY = vue.frame.maxY
        }
        
        scroll.contentSize = CGSize(width: view.frame.width, height: maxY + 50)
        
        
    }
    
}
