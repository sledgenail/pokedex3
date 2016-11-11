//
//  PokeCell.swift
//  pokedex3
//
//  Created by Emmanuel Erilibe on 11/11/16.
//  Copyright © 2016 Emmanuel Erilibe. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDeccoder: NSCoder){
        super.init(coder: aDeccoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(_ pokemon: Pokemon) {
        
        self.pokemon = pokemon
        nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
    
}
