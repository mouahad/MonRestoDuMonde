//
//  PlatCell.swift
//  MonRestoDuMonde
//
//  Created by MYD on 19/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit

class PlatCell: UITableViewCell {

    @IBOutlet weak var imageDuplat: UIImageView!
    @IBOutlet weak var descDuPlat: UILabel!
    
    
    var plat: Plat!
    
    func miseEnPlace(plat: Plat) {
        self.plat = plat
        
        
        imageDuplat.image = self.plat.image
        imageDuplat.contentMode = .scaleToFill
        imageDuplat.clipsToBounds = true
        imageDuplat.layer.cornerRadius = 20
        
        descDuPlat.text = self.plat.desc
        descDuPlat.textAlignment = .center
        descDuPlat.numberOfLines = 0
        descDuPlat.font = FONT_DE_BASE
        descDuPlat.textColor = GRIS_TRES_CLAIR
        
    
    }
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
