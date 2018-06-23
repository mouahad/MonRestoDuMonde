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

        view.layer.addSublayer(Degrade())
        view.bringSubview(toFront: scroll)  // la "vue" scroll passe en vue prioritaire sue le "layer"
        
        guard menu != nil else {return}   //vérifie que "menu" ne soit pas vide/nul ou nil
        miseEnPlace(menu: menu!)
        
    }

    func miseEnPlace (menu: Menu) {
        print ("Ca marche on a le menu: \(menu.pays)")
    }
    
}
