//
//  MenuController.swift
//  MonRestoDuMonde
//
//  Created by MYD on 18/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit
// on va utiliser les protocoles(delegate,datasource et le flowLayout) qui vont etre fait uniquement sur un view controleur ou de ces heritage
// UICollectionViewDelegateFlowLayout =  permet de mettre en forme chacune de cellule (collectionviewcell)


// casté ???

class MenuController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var collectionView: UICollectionView!
    let cellID = "MenuCell"
    let segueID = "VersDetail"
    var menus = [Menu]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Les Menus du monde"
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let vue = UIView(frame: collectionView.bounds)
        vue.layer.addSublayer(Degrade())                    // inserer le dégrader en fond
        collectionView.backgroundView = vue
        
        menus = LesPlats.obtenir.lesMenus()
        collectionView.reloadData() // Pour etre sur que l'on recharge bien les bonnes données
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menus.count
    } // nombre d'éléments par section
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let menu = menus[indexPath.item]
        if let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? MenuCell {
            cell.miseEnPlace(menu: menu)
            //cell.backgroundColor = GRIS_TRES_FONCE
            return cell
        }
    return UICollectionViewCell()
                            // Identification de la cellule et Font(format,color,..)de la cellule
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let largeur = collectionView.frame.width / 2 - 10// on recupère la largeur total et ensuite on la adivise par 2
        return CGSize(width: largeur, height: 200)
                            // Taille de la cellule
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 50
                            // Espace entre "les lignes"
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10            // Espace entre "les colonnes"
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let menu =  menus[indexPath.item]
        performSegue(withIdentifier: segueID, sender: menu) // Passe à une nouvelle page lorsque on selection un element de la collection
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueID {
            if let detail = segue.destination as? DetailController {
                detail.menu = sender as? Menu           // la ou on programme la vue affichée
            }
        }
    }
    
}













