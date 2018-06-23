//
//  ALacarteController.swift
//  MonRestoDuMonde
//
//  Created by MYD on 18/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//



// Polymorphism =  surcharger en ecriture par dessus "override"

import UIKit

class ALacarteController: UITableViewController {
    
    
    let cellID = "PlatCell"
    
    var tousLesPlats = [ALaCarte]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "A la Carte"
        
        
        let vue =  UIView(frame: tableView.bounds)
        vue.layer.addSublayer(Degrade())
        
        tableView.backgroundView = vue
        tousLesPlats = LesPlats.obtenir.carteComplete()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // Nombre de section
        return tousLesPlats.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tousLesPlats[section].plats.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let plat = tousLesPlats[indexPath.section].plats[indexPath.row]
        if  let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? PlatCell {
            cell.miseEnPlace(plat: plat)
            return cell
        }
    
        return UITableViewCell()
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130  // largeur des sections
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let typeDePlat = tousLesPlats[section].type
        
        switch typeDePlat {
        case .entree: return "Nos Entrées"
        case .platPrincipal: return "Nos plats principaux"
        case .dessert: return "Le coin des Gourmands"
        }                   // Donnée un titre par grouge de section
    }
 

}
